<style>
        body {
    background-image: url("https://gcs.tripi.vn/public-tripi/tripi-feed/img/474073ssI/anh-background-dong-don-gian_032845592.gif");
    background-repeat: no-repeat;
    background-size: cover;
    background-position: center;
    background-color: #cccccc;
}

        .container {
    position: absolute;
    top: 50%; /* Đưa khung bao lên trên 50% của màn hình */
    left: 50%; /* Đưa khung bao sang trái 50% của màn hình */
    transform: translate(-50%, -50%); /* Dịch chuyển khung bao đi lùi 50% của chính nó theo cả hai chiều ngang và chiều dọc */
    max-width: 400px; /* Đặt chiều rộng tối đa cho khung */
    margin: 0 auto; /* Căn giữa khung theo chiều ngang (cho các trình duyệt không hỗ trợ transform) */
    padding: 20px; /* Khoảng cách từ viền của khung đến nội dung bên trong */
    border: 1px solid #ccc; /* Viền cho khung */
    border-radius: 8px; /* Bo tròn các góc của khung */
}

     .container {
    
    max-width: 400px; /* Đặt chiều rộng tối đa cho khung */
    margin: 0 auto; /* Căn giữa khung theo chiều ngang */
    padding: 20px; /* Khoảng cách từ viền của khung đến nội dung bên trong */
    border: 1px solid #ccc; /* Viền cho khung */
    border-radius: 8px; /* Bo tròn các góc của khung */
    background-color: #CD853F;
}

        .time {
    font-size: 24px; /* Kích thước chữ */
    font-family: 'Arial', sans-serif; /* Phông chữ */
    color: #333333; /* Màu chữ */
    text-align: center; /* Canh giữa nội dung */
    animation: pulse 1s infinite alternate; /* Hiệu ứng pulsating */
}

/* Hiệu ứng pulsating */
@keyframes pulse {
    from {
        transform: scale(1);
    }
    to {
        transform: scale(1.1);
    }
}

        #verificationForm {
    display: flex;
    flex-direction: column;
    align-items: center;
    max-width: 300px;
    margin: 0 auto;
}

#verificationForm input[type="number"] {
    width: 100%;
    padding: 10px;
    margin-bottom: 10px;
    border: 1px solid #ccc;
    border-radius: 4px;
    font-size: 16px;
}

#verificationForm input[type="submit"] {
    width: 100%;
    padding: 10px;
    background-color: #A0522D;
    color: white;
    border: none;
    border-radius: 4px;
    font-size: 16px;
    cursor: pointer;
}

#resendOtpVerification {
    display: block;
    width: 300px;
    margin: 10px auto; /* Căn giữa theo chiều ngang */
    padding: 10px;
    background-color: #A0522D;
    color: white;
    border: none;
    border-radius: 4px;
    font-size: 16px;
    cursor: pointer;
}


#resendOtpVerification:hover {
    background-color: #000000;
}

    </style>


<div class="container">
<p id="message_error" style="color:red;"></p>
<p id="message_success" style="color:green;"></p>
<form method="post" id="verificationForm">
<!-- <form method="post" id="verificationForm" action="{{ route('verifiedOtp') }}"> -->

    @csrf
    <input type="hidden" name="email" value="{{ $email }}">
    <input type="number" name="otp" placeholder="Enter OTP" required>
    <br><br>
<input id="verifyButton" type="submit" value="Verify">

</form>
<input type="hidden" name="source" value="{{ request()->input('source', 'default') }}">

<p class="time"></p>

<button id="resendOtpVerification">Resend Verification OTP</button>
</div>


    
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>

<script>

    $(document).ready(function(){
        $('#verificationForm').submit(function(e){
            e.preventDefault();

            var formData = $(this).serialize();
            formData += '&source=' + $('[name="source"]').val();

            $.ajax({
                url:"{{ route('verifiedOtp') }}",
                type:"POST",
                data: formData,
                success:function(res){
                    console.log(res.source);
                    if(res.success){
                        // alert(res.msg);
                        if (res.source === 'forgot') {
                            window.location.href = "{{ route('user.reset') }}?email={{ $email }}";
                        } else {
                window.location.href = "{{ route('user.register') }}";
                        }
                    }
                    else{
                        $('#message_error').text(res.msg);
                        setTimeout(() => {
                            $('#message_error').text('');
                        }, 3000);
                    }
                }
            });

        });

        $('#resendOtpVerification').click(function(){
            $(this).text('Wait...');
            var userMail = @json($email);

            $.ajax({
                url:"{{ route('resendOtp') }}",
                type:"GET",
                data: {email:userMail },
                success:function(res){
                    $('#resendOtpVerification').text('Resend Verification OTP');
                    if(res.success){
                        timer();
                        $('#message_success').text(res.msg);
                        setTimeout(() => {
                            $('#message_success').text('');
                        }, 3000);
                    }
                    else{
                        $('#message_error').text(res.msg);
                        setTimeout(() => {
                            $('#message_error').text('');
                        }, 3000);
                    }
                }
            });

        });
        
    });
    
    function timer()
    {
        var seconds = 30;
        var minutes = 1;

        var timer = setInterval(() => {

            if(minutes < 0){
                $('.time').text('');
                clearInterval(timer);
            }
            else{
                let tempMinutes = minutes.toString().length > 1? minutes:'0'+minutes;
                let tempSeconds = seconds.toString().length > 1? seconds:'0'+seconds;

                $('.time').text(tempMinutes+':'+tempSeconds);
            }

            if(seconds <= 0){
                minutes--;
                seconds = 59;
            }

            seconds--;

        }, 1000);
    }

    timer();

</script>