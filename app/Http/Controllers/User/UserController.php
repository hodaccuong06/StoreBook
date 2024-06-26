<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\EmailVerification;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\RedirectResponse;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Log;
use Mail;

class UserController extends Controller
{

    public function sendOtp($user)
    {
        $otp = rand(100000,999999);
        $time = time();

        EmailVerification::updateOrCreate(
            ['email' => $user->email],
            [
            'email' => $user->email,
            'otp' => $otp,
            'created_at' => $time
            ]
        );

        $data['email'] = $user->email;
        $data['title'] = 'Mail Verification';

        $data['body'] = 'Your OTP is:  '.$otp;

        Mail::send('user.mailVerification',['data'=>$data],function($message) use ($data){
            $message->to($data['email'])->subject($data['title']);
        });
    }
    public function verification(Request $request, $id)
    {
        $user = User::where('id', $id)->first();
        if (!$user) {
            // Không tìm thấy người dùng, bạn có thể xử lý tùy ý ở đây
            return redirect('/');
        }
        $email = $user->email;
        // $source = $request->input('source', 'default'); 
        $source = $request->input('source', 'register');
        $this->sendOtp($user);// Gửi OTP
    
        return view('user.verification', compact('email'));
    }
    



    public function verifiedOtp(Request $request)
    {
        $user = User::where('email',$request->email)->first();
        $otpData = EmailVerification::where('otp',$request->otp)->first();
        if(!$otpData){
            return response()->json(['success' => false,'msg'=> 'You entered wrong OTP']);
        }
        else{
            $currentTime = time();
            $time = $otpData->created_at;
    
            if($currentTime >= $time && $time >= $currentTime - (90+5)){ // OTP is valid
                User::where('id',$user->id)->update([
                    'is_verified' => 1
                ]);
                if ($request->source === 'forgot') {
                    return response()->json(['success' => true,'msg'=> 'Mail has been verified', 'source' => 'forgot']);
            } else {
                return response()->json(['success' => true,'msg'=> 'Mail has been verified', 'source' => 'register']);
                }
                // return response()->json(['success' => true,'msg'=> 'Mail has been verified']);
            }
            else{ // OTP is expired
                return response()->json(['success' => false,'msg'=> 'Your OTP has been Expired']);
            }
        }
    }
    



    public function resendOtp(Request $request)
    {
        $user = User::where('email',$request->email)->first();
        $otpData = EmailVerification::where('email',$request->email)->first();

        $currentTime = time();
        $time = $otpData->created_at;

        if($currentTime >= $time && $time >= $currentTime - (90+5)){//90 seconds
            return response()->json(['success' => false,'msg'=> 'Please try after some time']);
        }
        else{

            $this->sendOtp($user);//OTP SEND
            return response()->json(['success' => true,'msg'=> 'OTP has been sent']);
        }

    }
}
