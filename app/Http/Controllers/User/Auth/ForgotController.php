<?php
namespace App\Http\Controllers\User\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Contracts\View\View;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\EmailVerification;
use App\Http\Controllers\User\UserController;
use App\Models\User;

class ForgotController extends Controller
{
    function index(): View
    {
        return view('user.auth.forgot');
    }

    function forgot(Request $request): RedirectResponse
{
    $request->validate([
        'email_login' => 'required|email|exists:users,email',
    ], [
        'email_login.email' => 'Please enter a valid email address.',
        'email_login.exists' => 'The email address is not registered.',
    ]);

    $userData = User::where('email', $request->email_login)->first();
    if($userData) {
        if ($userData->is_verified == 0 || $userData->is_verified == 1) {
            // $userController = new UserController();
            // $userController->sendOtp($userData);
            return redirect("/verification/".$userData->id."?source=forgot");
        } else {
            return back()->with('error','Email is incorrect');
        }
    } else {
        return back()->with('error','Email is incorrect');
    }
}

    

}
