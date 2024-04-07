@extends('layouts.app')
@section('title')
Login
@endsection
@section('content')
<div class="page-title">
    <div class="container">
      <div class="row">
          <div class="col-lg-12">
            <ul class="breadcrumbs">
                <li><a href="/">Trang chủ</a> </li>
                <li class="separator"></li>
                <li>Đăng nhập</li>
              </ul>
          </div>
      </div>
    </div>
  </div>
<div class="container padding-bottom-3x mb-1">
        <div class="row justify-content-center ">
            <div class="col-md-6">
                <div class="card register-area">
                    <div class="card-body ">
                        <h4 class="margin-bottom-1x text-center">Đăng nhập</h4>
                        <form class="form" id="form-1" action="{{ route('user.make.login') }}"
                            method="POST">
                            @csrf
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label for="reg-email">Địa chỉ email</label>
                                    <input class="form-control" type="email" name="email_login" placeholder="E-mail Address"
                                        id="reg-email" value="{{ old('email_login') }}">
                                        <span class="form-message"></span>
                                        @error('email_login')
                                        <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label for="reg-pass">Mật khẩu</label>
                                    <input class="form-control" type="password" name="password_login" placeholder="Password"
                                        id="login-pass">
                                        <span class="form-message"></span>
                                        @error('email_login')
                                        <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                </div>
                                <div>
                                <input type="checkbox" class="checkbox" name="" id="show-password-checkbox"> <label for="show-password-checkbox">Show password</label> 
                                </div>
                                <div>  <a href="{{ route('user.forgot') }}">Quên Mật khẩu</a></div>
                               
                            </div>
                            <div class="col-12 text-center">
                                <button class="btn btn-primary margin-bottom-none"
                                    type="submit"><span>Đăng nhập</span></button>
                            </div>
                           <div>
</br>

                            <div style="text-align:center">
                                <span>Vẫn chưa có tài khoản?</span>
                            <a  href="{{ route('user.register') }}">
                            Đăng ký!
                                </a>
                            </div>
                                </div>
                        </form>
                    </div>
                </div>
            </div>
            </div>
            @endsection
    <script>
        document.addEventListener("DOMContentLoaded", function() {
        const passwordInput = document.getElementById('login-pass');
        const showPasswordCheckbox = document.getElementById('show-password-checkbox');

        showPasswordCheckbox.addEventListener('change', function() {
            passwordInput.type = this.checked ? 'text' : 'password';
        });
        ///
            function Validtor(obj){
                    var allRules = {};
                    var formElement = document.querySelector(obj.form)
   
            function validate(inputElement, rule){
                    if(inputElement){
       
        var err;
           var errorMess = inputElement.parentElement.querySelector(obj.errorMessage)
       
        var arrRules = allRules[rule.selector]
       
        for(var i = 0; i < arrRules.length; i++){
            
            err = arrRules[i](inputElement.value)
            
            if(err){
                break;
            }
        }

        
           if(err){
            errorMess.innerHTML = err
           inputElement.parentElement.classList.add('text-danger')
           }else{
            errorMess.innerHTML =""
            inputElement.parentElement.classList.remove('text-danger')
           }
           if(inputElement){
            inputElement.oninput =function(e){
                console.log(e.target.value)
               if(inputElement.value){
                errorMess.innerHTML =""
                inputElement.parentElement.classList.remove('text-danger')     
               }     
       }
        }
        }
        return !err 
}
         if(formElement){
    formElement.onsubmit = function(e){
        var isform = false
        e.preventDefault()
            obj.rules.forEach(function(rule){
              
                var inputElement = formElement.querySelector(rule.selector)
                var check = validate(inputElement, rule)
                console.log(check)
                if(!check){
                    return isform
                }else {  
                    isform = true                     

                }
            })
            if(isform){
                if(typeof obj.onsubmit === 'function'){
                    var getinput = formElement.querySelectorAll('[name]')
                    console.log(getinput)
                    var inputValue = Array.from(getinput).reduce(function(accument, currentValue){
                                 accument[currentValue.name] = currentValue.value
                                 return accument
                    }, {})
                    console.log(inputValue)
                    obj.onsubmit(inputValue)
                } 
                else{
                    formElement.submit()
                }
            }else{
                console.log('có lỗi')
            }
            
    }   
    obj.rules.forEach((rule)=>{
        var inputElement = formElement.querySelector(rule.selector)
            if(!(Array.isArray(allRules[rule.selector]))){
                allRules[rule.selector] = [rule.test1]
            }else{
                allRules[rule.selector].push(rule.test1)
            }
        if(inputElement){
            inputElement.onblur = function(e){
                validate(inputElement,rule)
                }
        }
    })
}  
}


        Validtor.isRequire = function(idName, message){
           return {
             selector: idName,
             test1: function(value){
               return value.trim() ? undefined : message
        }
    }
        }
        
        Validtor.isEmail = function(idEmail, message){
            return {
                selector: idEmail,
                test1: function(value){
                    var regex = /^\w+([\.-]?\w+)*@/;
                    return regex.test(value) ? undefined : message || "Vui lòng nhập email chính xác"
                }
            }
        }

        Validtor.isPassword = function(idPassword, min, message){
            return {
                selector: idPassword,
                test1: function(value){
                    return value.length >= min ? undefined : message
                }
            }
        }

        Validtor({
            form: "#form-1",
            errorMessage: ".form-message",
            rules: [
                Validtor.isRequire('#reg-email', "Vui lòng nhập email"),
                Validtor.isEmail('#reg-email',"Please enter the correct email"),
                Validtor.isPassword('#login-pass',8 )
            ]
        })
    </script>
