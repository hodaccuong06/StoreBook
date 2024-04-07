<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\Models\Order;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\View;

class PrintController extends Controller
{
    public function print($uuid)
{
    // Lấy thông tin đơn hàng từ cơ sở dữ liệu dựa trên UUID
    $order = Order::where('uuid', $uuid)->firstOrFail();

    $qlys = json_decode($order->qlys, true);
    $productIds = json_decode($order->product_id, true);

    // Lấy danh sách sản phẩm dựa trên các ID sản phẩm từ trường product_id
    $products = Product::whereIn('id', $productIds)->get();

    // Trả về view "detailorder" và truyền biến $order vào view
    return view('user.print', compact('order', 'products','qlys'));
}

}

