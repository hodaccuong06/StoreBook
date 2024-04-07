@extends('layouts.app')
@section('title')
    ForgotPassword
@endsection
@section('content')
<div class="page-title">  
  </div>
    <div class="container padding-bottom-3x mb-1">
        <div class="row justify-content-center ">
            <div class="col-md-6">
                <div class="card register-area">
                    <div class="card-body ">
                        <h4 class="margin-bottom-1x text-center">QUÊN MẬT KHẨU</h4>
                        <form class="row" action="{{ route('user.make.forgot') }}"
                            method="POST">
                            @csrf
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label for="reg-email">Địa chỉ email</label>
                                    <input class="form-control" type="email" name="email_login" placeholder="E-mail Address"
                                        id="reg-email" value="{{ old('email_login') }}">
                                        @error('email_login')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                </div>
                            </div>
                            <div class="col-12 text-center">
                                <button class="btn btn-primary margin-bottom-none"
                                    type="submit"><span>Xác nhận</span></button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        const passwordInput = document.getElementById('login-pass');
        const showPasswordCheckbox = document.getElementById('show-password-checkbox');
    
        showPasswordCheckbox.addEventListener('change', function () {
            passwordInput.type = this.checked ? 'text' : 'password';
        });
    </script>
@endsection