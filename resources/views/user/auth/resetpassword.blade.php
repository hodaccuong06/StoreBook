@extends('layouts.app')
@section('title')
    ResetPassword
@endsection
@section('content')
<div class="page-title">  
  </div>
    <div class="container padding-bottom-3x mb-1">
        <div class="row justify-content-center ">
            <div class="col-md-6">
                <div class="card register-area">
                    <div class="card-body ">
                        <h4 class="margin-bottom-1x text-center">Đặt lại mật khẩu</h4>
                        <form class="row" action="{{ route('user.make.reset') }}"
                            method="POST">
                            @csrf
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label for="reg-email">Địa chỉ email</label>
                                    <input class="form-control" type="email" name="email" placeholder="E-mail Address" id="reg-email" value="{{ request('email') }}" readonly>


                                        @error('email')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label for="reg-pass">Mật khẩu</label>
                                    <input class="form-control" type="password" name="password" placeholder="Password"
                                        id="reg-pass">
                                        @error('password')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label for="reg-pass-confirm">Xác nhận mật khẩu</label>
                                    <input class="form-control" type="password" name="password_confirmation"
                                        placeholder="Confirm Password" id="reg-pass-confirm">
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
    
@endsection