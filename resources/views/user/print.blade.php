<script>
    var styleElement = document.createElement('style');

// Lấy đường dẫn của các file CSS từ các liên kết
var cssLinks = document.querySelectorAll('link[rel="stylesheet"]');

// Duyệt qua từng liên kết và thêm nội dung CSS vào phần tử <style>
cssLinks.forEach(function(link) {
    var cssUrl = link.getAttribute('href');
    fetch(cssUrl)
        .then(response => response.text())
        .then(cssText => {
            styleElement.innerHTML += cssText;
        });
});

// Thêm phần tử <style> vào phần tử <head> của trang
document.head.appendChild(styleElement);

// JavaScript để tự động gọi phương thức in khi trang được tải
window.onload = function() {
    window.print(); // Gọi phương thức in của trình duyệt
};
</script>
    <!-- Vendor Styles including: Bootstrap, Font Icons, Plugins, etc.-->
    <link rel="stylesheet" media="screen" href="{{ asset('assets/front/css/plugins.min.css') }}">


    <link id="mainStyles" rel="stylesheet" media="screen" href="{{ asset('assets/front/css/styles.min.css') }}">

    <link id="mainStyles" rel="stylesheet" media="screen" href="{{ asset('assets/front/css/responsive.css') }}">
    <!-- Color css -->
    <link href="{{ asset('assets/front/css/color.css') }}" rel="stylesheet">

    <!-- Modernizr-->
    <script src="{{ asset('assets/front/js/modernizr.min.js') }}"></script>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">

<style>
@media print {
    /* CSS cho table */
    table {
        border-collapse: collapse;
        width: 100%;
    }

    /* CSS cho các margins và padding */
    .my-4 {
        margin-top: 1.5rem !important;
        margin-bottom: 1.5rem !important;
    }

    /* CSS cho bảng responsive */
    .table-responsive table {
        border: 1px solid black;
        border-collapse: collapse;
    }

    /* CSS cho các ô trong bảng */
    .table-responsive th,
    .table-responsive td {
        border: 1px solid black;
        padding: 8px;
    }

    /* CSS cho text center */
    .text-center {
        text-align: center;
    }

    /* CSS cho hình ảnh */
    .img-fluid {
        max-width: 100%;
        height: auto;
    }

    /* CSS cho margin bottom */
    .mb-5 {
        margin-bottom: 3rem !important;
    }

    /* CSS cho chiều cao tối đa */
    .mh-70 {
        max-height: 70vh;
    }

    /* CSS cho col */
    .col {
        position: relative;
        width: 100%;
        padding-right: 15px;
        padding-left: 15px;
    }

    /* CSS cho container */
    .container {
        width: 100%;
        padding-right: 15px;
        padding-left: 15px;
        margin-right: auto;
        margin-left: auto;
    }

    /* CSS cho padding dưới cùng */
    .padding-bottom-3x {
        padding-bottom: 3rem !important;
    }

    /* CSS cho margin bottom 1 */
    .mb-1 {
        margin-bottom: 1rem !important;
    }

    /* CSS cho print_invoice */
    .print_invoice {
        position: relative;
        display: block;
    }

    /* CSS cho card */
    .card {
        position: relative;
        display: block;
        border: 1px solid rgba(0, 0, 0, 0.125);
        border-radius: 0.25rem;
        background-color: #fff;
        transition: box-shadow 0.15s ease;
    }

    /* CSS cho card-body */
    .card-body {
        position: relative;
        flex: 1 1 auto;
        padding: 1.25rem;
    }

    /* CSS cho padding 5 */
    .p-5 {
        padding: 3.125rem !important;
    }

    /* CSS cho col-12 */
    .col-12 {
        position: relative;
        width: 100%;
        padding-right: 15px;
        padding-left: 15px;
    }

    /* CSS cho col-md-6 */
    .col-md-6 {
        position: relative;
        width: 100%;
        padding-right: 15px;
        padding-left: 15px;
    }

    /* CSS cho h5 */
    .h5 {
        font-size: 1.25rem;
        margin-top: 0;
        margin-bottom: 0.5rem;
    }

    /* CSS cho text muted */
    .text-muted {
        color: #6c757d !important;
    }

    /* CSS cho badge */
    .badge {
        display: inline-block;
        padding: 0.25em 0.4em;
        font-size: 75%;
        font-weight: 700;
        line-height: 1;
        text-align: center;
        white-space: nowrap;
        vertical-align: baseline;
        border-radius: 0.25rem;
    }

    /* CSS cho container-fluid */
    .container-fluid {
        width: 100%;
        padding-right: 15px;
        padding-left: 15px;
        margin-right: auto;
        margin-left: auto;
    }

    /* CSS cho border-top và border-top-2 */
    .border-top,
    .border-top-2 {
        border-top: 1px solid #dee2e6 !important;
    }

    /* CSS cho padding-top-2x */
    .padding-top-2x {
        padding-top: 1.5rem !important;
    }

    /* CSS cho h6 */
    .h6 {
        font-size: 1rem;
    }

    /* CSS cho text right */
    .text-right {
        text-align: right;
    }

    /* CSS cho h3 */
    .h3 {
        font-size: 1.75rem;
        margin-top: 0;
        margin-bottom: 0.5rem;
    }
    .row {
    display: flex;
    flex-wrap: wrap;
    margin-right: -15px;
    margin-left: -15px;
}

/* CSS cho col-12 */
.col-12 {
    position: relative;
    width: 100%;
    padding-right: 15px;
    padding-left: 15px;
}

/* CSS cho col-md-6 */
.col-md-6 {
    position: relative;
    width: 100%;
    padding-right: 15px;
    padding-left: 15px;
}
}

</style>

<div class="container padding-bottom-3x mb-1 print_invoice">
    <div class="card card-body p-5">
        <div class="row">
            <div class="col text-center">
                <!-- Logo -->
                <img class="img-fluid mb-5 mh-70" alt="Logo" src="http://127.0.0.1:8000/storage/media/PPsmYSBkfKgsGfIGpAiPNMp5RO1o0x8ZPVY9Wson.png">
            </div>
        </div> <!-- / .row -->
        <div class="row">
            <div class="col-12 col-md-6">
                <h5>Chi tiết đặt hàng :</h5>
                <span class="text-muted">Id đơn hàng : </span>{{ $order->uuid }}<br>
                <span class="text-muted">Ngày đặt hàng : </span>{{ \Carbon\Carbon::parse($order->created_at)->format('M d, Y') }}<br>
                <span class="text-muted">Tình trạng thanh toán : </span><div class="badge badge-danger">{{ $order->payment_status }}</div><br>
                
                <span class="text-muted">Phương thức thanh toán : </span>{{ $order->payment_method }}<br><br><br>
                <br><br>
            </div>
            <div class="col-12 col-md-6">
                <h5>Địa chỉ giao hàng :</h5>
                <span class="text-muted">Tên: </span>{{ $order->users->name }}<br>
                <span class="text-muted">Email: </span>{{ $order->users->email }}<br>
                <span class="text-muted">Điện thoại: </span>{{ $order->users->phone }}<br>
                <span class="text-muted">Địa chỉ: </span>{{ $order->shipping_addresses->address1 }}, {{ $order->shipping_addresses->address2 }}, {{ $order->shipping_addresses->city }}<br>
                <span class="text-muted">Thành phố: </span>{{ $order->shipping_addresses->city }}<br>
                <span class="text-muted">Zip: </span>{{ $order->shipping_addresses->zip_code }}<br>
            </div>
        </div>

                <div class="row">
                  <div class="col-12">

                    <!-- Table -->
                    <div class="table-responsive">
                      <table class="table table-bordered my-4">
                        <thead>
                          <tr>
                            <th width="50%" class=" bg-transparent border-top-0">
                              <span class="h6">Các sản phẩm</span>
                            </th>
                            <th class=" bg-transparent border-top-0">
                              <span class="h6">Thuộc tính</span>
                            </th>
                            <th class=" bg-transparent border-top-0">
                              <span class="h6">Số lượng</span>
                            </th>
                            <th class=" bg-transparent border-top-0 text-right">
                              <span class="h6">Giá</span>
                            </th>
                          </tr>
                        </thead>
                        <tbody>
                        @foreach ($products as $index => $product)
    <tr>
        <td class="">{{ $product->name }}</td>
        <td class="">{{ $product->attribute }}</td>
        <td class="">{{ $qlys[$index] }}</td>
        <td class=" text-right">{{ $product->current_price * $qlys[$index]}}$</td>
    </tr>
@endforeach


                                                   <tr>
                            <td class="padding-top-2x" colspan="5">
                            </td>
                          </tr>
                                                    <tr>
                            <td class=" border-top border-top-2">
                            <span class="text-muted">Thuế</span>
                            </td>
                            <td class=" text-right border-top border-top-2" colspan="5">
                              <span>
                                                                $0
                                                              </span>
                            </td>
                          </tr>
                          
                          <tr>
                            <td class=" border-top border-top-2">
                            <span class="text-muted">Thuế bang</span>
                            </td>
                            <td class=" text-right border-top border-top-2" colspan="5">
                              <span>
                              $0
                                                              </span>
                            </td>
                          </tr>

                                                                                                         <tr>
                            <td class=" border-top border-top-2">
                             <span class="text-muted">Phí ship</span>
                            </td>
                            <td class=" text-right border-top border-top-2" colspan="5">
                              <span>
                              $0
                                                              </span>
                            </td>
                          </tr>
                                                    <tr>
                            <td class=" border-top border-top-2">

                                                          <strong>Tổng số tiền</strong>
                                                         </td>
                            <td class=" text-right border-top border-top-2" colspan="5">
                              <span class="h3">{{ $order->total_amount }}$</span>
                            </td>
                          </tr>
                        </tbody>
                      </table>
                    </div>
                  </div>
                </div>
              </div>
  </div>

