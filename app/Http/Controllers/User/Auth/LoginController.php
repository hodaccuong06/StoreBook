<?php

namespace App\Http\Controllers\User\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Contracts\View\View;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\User\UserController;
use App\Models\User;

class LoginController extends Controller
{
    function index(): View
    {
        return view('user.auth.login');
    }

    function login(Request $request): RedirectResponse
    {
        $request->validate([
            'email_login' => 'required|email|exists:users,email',
            'password_login' => [
                'required',
                'min:8',
            ],
        ], [
            'email_login.email' => 'Please enter a valid email address.',
            'email_login.exists' => 'The email address is not registered.',
            'password_login.required' => 'The password field is required.',
            'password_login.min' => 'The password must be at least 8 characters long.',
        ]);
        $userData = User::where('email', $request->email_login)->first();
        if($userData && $userData->is_verified == 0){
            // $userController = new UserController();
            //     $userController->sendOtp($userData);
            return redirect("/verification/".$userData->id."?source=register");
        }
        else if(Auth::attempt(['email' => $request->email_login, 'password' => $request->password_login])){
            return redirect()->route('user.home')->with('success', 'Login successfully');
        }
        else{
            return back()->with('error','Username & Password is incorrect');
        }

        // if (Auth::attempt(['email' => $request->email_login, 'password' => $request->password_login])) {
        //     $user = User::where('email',$request->email)->first();
        //     if ($user->is_verified == 0) {
        //         $userController = new UserController();
        //         $userController->sendOtp($user);
        //         return redirect("/verification/".$user->id);
        //     } else {
        //         return redirect()->route('user.dashboard')->with('success', 'Login successfully');
        //     }
        // } else {
        //     return redirect()->route('user.login')->with('error', 'Invalid email and password');
        // }
    }
}
