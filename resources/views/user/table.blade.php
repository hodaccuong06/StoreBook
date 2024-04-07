<div class="u-table-res">
                            <table class="table table-bordered mb-0">
                                <thead>
                                    <tr>
                                        <th>Order #</th>
                                        <th>Total</th>
                                        <th>Order Status</th>
                                        <th>Payment Status</th>
                                        <th>Date Purchased</th>
                                        <th>Action</th>
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
    <a href="{{ route('user.detailorder', ['uuid' => $order->uuid]) }}" class="btn btn-info btn-sm">Invoice</a>
</td> 

                                    </tr>
                                    @endforeach
                                    
                                </tbody>
                            </table>
                        </div>