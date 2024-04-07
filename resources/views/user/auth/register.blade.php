@extends('layouts.app')
@section('title')
    Register
@endsection
@section('content')
<div class="page-title">
    <div class="container">
      <div class="row">
          <div class="col-lg-12">
            <ul class="breadcrumbs">
                <li><a href="/">Trang chủ</a> </li>
                <li class="separator"></li>
                <li>Đăng ký</li>
              </ul>
          </div>
      </div>
    </div>
  </div>
  <div class="row justify-content-center ">
            <div class="col-md-6 ">
                <div class="card register-area">
                    <div class="card-body ">
                        <h4 class="margin-bottom-1x text-center">Đăng ký</h4>
                        <form class="row" id="form-1" action="{{ route('user.make.register') }}"
                            method="POST">
                            @csrf
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label for="reg-fn">Họ đệm</label>
                                    <input class="form-control" type="text" name="first_name" placeholder="First Name"
                                        id="reg-fn" value="{{ old('first_name') }}">
                                        <span class="form-message"></span>
                                        @error('first_name')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label for="reg-ln">Tên</label>
                                    <input class="form-control" type="text" name="last_name" placeholder="Last Name"
                                        id="reg-ln" value="{{ old('last_name') }}">
                                        <span class="form-message"></span>
                                        @error('last_name')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label for="reg-email">Địa chỉ email</label>
                                    <input class="form-control" type="email" name="email" placeholder="E-mail Address"
                                        id="reg-email" value="{{ old('email') }}">
                                        <span class="form-message"></span>
                                        @error('email')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label for="reg-phone">Số điện thoại</label>
                                    <input class="form-control" name="phone" type="text" placeholder="Phone Number"
                                        id="reg-phone" value="{{ old('phone') }}">
                                        <span class="form-message"></span>
                                        @error('phone')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                </div>
                            </div>

                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label for="reg-pass">Mật khẩu</label>
                                    <input class="form-control pss" type="password" name="password" placeholder="Password"
                                        id="reg-pass">
                                        <span class="form-message"></span>
                                        @error('password')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                </div>
                            </div>
                            
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label for="reg-pass-confirm">Xác nhận mật khẩu</label>
                                    <input class="form-control pss" type="password" name="password_confirmation"
                                        placeholder="Confirm Password" id="reg-pass-confirm">
                                        <span class="form-message"></span>
                                </div>
                            </div>
                            <div>
                                <input type="checkbox" class="checkbox" name="" id="show-password-checkbox1"> <label for="show-password-checkbox">Show password</label> 
                                </div>
                            <div class="col-12 text-center">
                                <button class="btn btn-primary margin-bottom-none"
                                    type="submit"><span>Đăng ký</span></button>
                            </div>
                            <div>
</br>

                            <div style="text-align:center">
                                <span>Bạn đã có tài khoản.</span>
                            <a  href="{{ route('user.login') }}">
                            Đăng nhập!
                                </a>
                            </div>
                                </div>
                        </form>
                    </div>
                </div>
            </div>
            </div>
        </div>
    </div>
<script>

const inputElement = document.querySelectorAll('input.form-control.pss');
const arr= Array.from(inputElement)
console.log(arr)
const showPasswordCheckbox1 = document.getElementById('show-password-checkbox1');
showPasswordCheckbox1.addEventListener('change', function(e){
        for(var i = 0; i < arr.length; i++){
            arr[i].type = e.target.checked ? 'text' : 'password';
        }
})

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

        Validtor.isFirstName = function(idFirstName, message){
           return {
            selector: idFirstName,
            test1: function(value){
                var regex = /^[^\d\s!@#$%^&*(),.?":{}|<>]+$/;
                if(value === (!regex)){
                    message = "Không được có ký tự đặc biệt"
                }
                return regex.test(value) ? undefined : message || "Please enter first name"
            }
           }
        }

        Validtor.isLastName = function(idLastName, message){
            return {
            selector: idLastName,
            test1: function(value){
                var regex = /^[^\d\s!@#$%^&*(),.?":{}|<>]+$/;
                return regex.test(value) ? undefined : message || "Please enter your last name"
            }
           }
        }

        Validtor.isEmail = function(isEmail, message) {
            return {
                selector: isEmail,
                test1: function(value){
                    var regex = /^\w+([\.-]?\w+)*@/;
                    return regex.test(value) ? undefined : message || "Please enter correct email"
                }
            }
        }

        Validtor.isPhone = function(isPhone, message) {
                return {
                    selector: isPhone,
                    test1: function(value){
                        var regex = /(\+84|0[3|5|7|8|9])(?:\d\s?){8}\b/;
                        return regex.test(value) ? undefined : message
                    }
                }
        }

        
        Validtor.isPassword = function(idPassword, min, message){
            return {
                selector: idPassword,
                test1: function(value){
                    var regex = /^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]+$/
                    return (value.length >= min) && (regex.test(value))   ? undefined : message || "Please enter the correct password"
                }
            }
        }

        Validtor.isConfirm = function(idConfirm, cb, message) {
                return {
                    selector: idConfirm,
                    test1: function(value){
                        return value === cb() ? undefined : message
                    }

                }
        }

        Validtor({
            form: "#form-1",
            errorMessage: ".form-message",
            rules: [
                Validtor.isRequire('#reg-fn', "Please enter first name"),
                Validtor.isFirstName('#reg-fn',"There must be no numbers or special characters"),
                Validtor.isRequire('#reg-ln', "Please enter your last name"),
                Validtor.isLastName('#reg-ln',"There must be no special characters"),
                Validtor.isEmail('#reg-email', "Please enter the correct email"),
                Validtor.isPhone('#reg-phone', "Please enter the correct phone number"),
                Validtor.isPassword('#reg-pass', 8, "Please enter all 8 characters, special characters, and capital letters"),
                Validtor.isConfirm('#reg-pass-confirm', function() {
                    return document.querySelector('#form-1 #reg-pass').value
                }, "Please enter the correct password")
            ]
        })

</script>
    
    
    
@endsection
