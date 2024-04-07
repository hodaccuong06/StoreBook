@extends('layouts.admin')
@section('title')
    Details
@endsection
@section('content')
<style>


</style>
<div class="container padding-bottom-3x mb-1 print_invoice"style="
    padding-top: 72px;">
    <div class="card card-body p-5">
                <div class="row">
                    <div class="col-lg-12">
                    <a href="{{ route('admin.all.order') }}" class="btn btn-sm btn-primary d-inline-block"><span>Back</span></a>
                    <a href="{{ route('user.print', $order->uuid) }}" class="btn btn-sm btn-primary invoice_price d-inline-block" target="_blank"><span>Print</span></a>

                    </div>
                </div> <!-- / .row -->
                <div class="row">
                  <div class="col text-center">

                    <!-- Logo -->
                    <img class="img-fluid mb-5 mh-70" alt="Logo" src="https://geniusdevs.com/codecanyon/omnimart40/assets/images/1634218044logoforsite.png">

                  </div>
                </div> <!-- / .row -->
                <div class="row">
                    <div class="col-12">
                        <h5>Order Details :</h5>

                        <span class="text-muted">Order Id : </span>{{ $order->uuid }}<br>
                <span class="text-muted">Order Date : </span>{{ \Carbon\Carbon::parse($order->created_at)->format('M d, Y') }}<br>
                <span class="text-muted">Payment Status : </span>
                <div class="badge badge-danger">
                    {{ $order->payment_status }}
                          </div>
                                                <br>
                    <span class="text-muted">Payment Method : </span>{{ $order->payment_method }}<br><br><br>

                      <br>
                      <br>
                      </div>
                </div>
                <div class="row">
                  <div class="col-12 col-md-6">
                        <h5>Shipping Address :</h5>
                            
                        <span class="text-muted">Name: </span>{{ $order->users->name }}<br>
        <span class="text-muted">Email: </span>{{ $order->users->email }}<br>
        <span class="text-muted">Phone: </span>{{ $order->users->phone }}<br>
        <span class="text-muted">Address: </span>{{ $order->shipping_addresses->address1 }}, {{ $order->shipping_addresses->address2 }}, {{ $order->shipping_addresses->city }}<br>
        <span class="text-muted">City: </span>{{ $order->shipping_addresses->city }}<br>
        <span class="text-muted">Zip: </span>{{ $order->shipping_addresses->zip_code }}<br>
                                                        
                  </div>
                  <!-- <div class="col-12 col-md-6">
                    <h5>Shipping Address :</h5>
                                                    <span class="text-muted">Name: </span>Alex Smith <br>
                            <span class="text-muted">Email: </span>user@gmail.com<br>
                            <span class="text-muted">Phone: </span>01728332009<br>
                                                        <span class="text-muted">Address: </span>472 Clark Street,  Bay Shore, New York, <br>
                                                                                    <span class="text-muted">Country: </span>United States<br>
                                                                                    <span class="text-muted">City: </span>New York<br>
                                                                                    <span class="text-muted">Zip: </span>3444<br>
                                                                          </div> -->
                </div>

                <div class="row">
                  <div class="col-12">

                    <!-- Table -->
                    <div class="table-responsive">
                      <table class="table table-bordered my-4">
                        <thead>
                          <tr>
                            <th width="50%" class=" bg-transparent border-top-0">
                              <span class="h6">Products</span>
                            </th>
                            <th class=" bg-transparent border-top-0">
                              <span class="h6">Attribute</span>
                            </th>
                            <th class=" bg-transparent border-top-0">
                              <span class="h6">Quantity</span>
                            </th>
                            <th class=" bg-transparent border-top-0 text-right">
                              <span class="h6">Price</span>
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
                            <span class="text-muted">Tax</span>
                            </td>
                            <td class=" text-right border-top border-top-2" colspan="5">
                              <span>
                                                                $0
                                                              </span>
                            </td>
                          </tr>
                          
                          <tr>
                            <td class=" border-top border-top-2">
                            <span class="text-muted">State Tax</span>
                            </td>
                            <td class=" text-right border-top border-top-2" colspan="5">
                              <span>
                              $0
                                                              </span>
                            </td>
                          </tr>

                                                                                                         <tr>
                            <td class=" border-top border-top-2">
                             <span class="text-muted">Shipping</span>
                            </td>
                            <td class=" text-right border-top border-top-2" colspan="5">
                              <span>
                              $0
                                                              </span>
                            </td>
                          </tr>
                                                    <tr>
                            <td class=" border-top border-top-2">

                                                          <strong>Total amount due</strong>
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
@endsection
