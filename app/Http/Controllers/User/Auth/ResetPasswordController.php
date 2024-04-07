<?php

namespace App\Http\Controllers\User\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Contracts\View\View;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\User;
use Illuminate\Support\Facades\Hash;

class ResetPasswordController extends Controller
{
    public function index(): View
    {
        return view('user.auth.resetpassword');
    }

    public function reset(Request $request): RedirectResponse
    {
        $request->validate([
            'password' => [
                'required',
                'confirmed',
                'min:8',
                'regex:/^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]+$/',
            ],
        ], [
            'password.required' => 'The password field is required.',
            'password.confirmed' => 'The password confirmation does not match.',
            'password.min' => 'The password must be at least 8 characters long.',
            'password.regex' => 'The password must contain at least one uppercase letter, one lowercase letter, one number, and one special character.',
        ]);
        $user = User::where('email', $request->email)->first();

    // Đặt lại mật khẩu của người dùng
    $user->password = Hash::make($request->password);
    $user->save();

    // Chuyển hướng người dùng sau khi đặt lại mật khẩu thành công
    return redirect()->route('user.register')->with('status', 'Your password has been reset successfully. You can now login with your new password.');

    
    }
}
