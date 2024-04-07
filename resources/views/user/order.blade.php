@extends('layouts.app')
@section('title')
    Order
@endsection
@section('content')
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
        $(document).ready(function() {
            $('#order-sort').change(function() {
                var criteria = $(this).val();
                window.location.href = '/user/orders/sort/' + criteria;
            });
        });
    </script>
    <div class="page-title">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <ul class="breadcrumbs">
                        <li><a href="/">Trang chủ</a> </li>
                        <li class="separator"></li>
                        <li>Đơn đặt hàng</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <div class="container padding-bottom-3x mb-1">
        <div class="row">
            @include('includes.user-sidebar')
            <div class="col-lg-8">
                <div class="card">
                    <div class="card-body">

                        <div class="u-table-res">
                            <table class="table table-bordered mb-0">
                                <thead>
                                    <tr>
                                        <th>Đặt hàng #</th>
                                        <th>Tổng cộng</th>
                                        <th>Tình trạng đặt hàng</th>
                                        <th>Tình trạng thanh toán</th>
                                        <th>Ngày mua</th>
                                        <th>Hoạt động</th>
                                    </tr>
                                </thead>
                                
                                <tbody>
                                    @foreach ($orders as $order)
                                    
                                    <tr>
                                        <td><a class="navi-link" href="#" data-toggle="modal"
                                                data-target="#orderDetails">{{ $order->uuid }}</a></td>
                                        <td>
                                            ${{ $order->total_amount }}
                                        </td>
                                        <td>
                                            <span class="text-info">{{ $order->order_status }}</span>
                                        </td>
                                        <td>
                                            <span class="text-success">{{ $order->payment_status }}</span>
                                        </td>

                                        <td>{{ \Carbon\Carbon::now()->format('D/M/Y',strtotime($order->created_at)) }}</td>
                                        <td>
    <a href="{{ route('user.detailorder', ['uuid' => $order->uuid]) }}" class="btn btn-info btn-sm">Hóa đơn</a>
</td> 

                                    </tr>
                                    @endforeach
                                    
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>

@endsection
