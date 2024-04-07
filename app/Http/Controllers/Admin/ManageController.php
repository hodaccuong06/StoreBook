<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Order;
use App\Models\Transaction;
use Illuminate\Contracts\View\View;
use Illuminate\Http\Request;
use App\Models\Product;
use Carbon\Carbon;
use Illuminate\Console\Command;

class ManageController extends Controller
{
    function index(): View
    {
        $orders = Order::latest()->get();
        // $orders = $orders->filter(function ($order) {
            
        //     $dueDate = Carbon::parse($order->created_at)->addMonths(3);
            
            
        //     return now()->lte($dueDate);
        // });
        return view('admin.order.all-order', compact('orders'));
    }
    
    function pending_order(): View
    {
        $orders = Order::whereOrderStatus('pending')->latest()->get();
        return view('admin.order.pending-order', compact('orders'));
    }
    function progress_order(): View
    {
        $orders = Order::whereOrderStatus('progress')->latest()->get();
        return view('admin.order.progress-order', compact('orders'));
    }
    function delivered_order(): View
    {
        $orders = Order::whereOrderStatus('delivered')->latest()->get();
        return view('admin.order.delivered-order', compact('orders'));
    }
    function canceled_order(): View
    {
        $orders = Order::whereOrderStatus('canceled')->latest()->get();
        return view('admin.order.canceled-order', compact('orders'));
    }

    function change_payment_status($id)
    {
        $order = Order::findOrFail($id);
        $transaction = Transaction::whereOrderId($order->uuid)->first();

        if ($order->payment_status == 'unpaid') {
            $order->payment_status = "paid";
            $order->save();

            $transaction->payment_status = 'paid';
            $transaction->save();
            return redirect()->back()->with('success', 'Status is in Paid');
        } else {
            $order->payment_status = "unpaid";
            $order->save();
            $transaction->payment_status = 'unpaid';
            $transaction->save();
            return redirect()->back()->with('success', 'Status is in Unpaid');
        }
    }
    function pending_status($id)
    {
        $order = Order::findOrFail($id);
        $order->order_status = 'pending';
        $order->save();
        $transaction = Transaction::whereOrderId($order->uuid)->first();
        $transaction->payment_status = 'pending';
        $transaction->save();
        return redirect()->back()->with('success', 'Status is in pending');
    }
    function progress_status($id)
    {
        $order = Order::findOrFail($id);
        $order->order_status = 'progress';
        $order->save();
        $transaction=Transaction::whereOrderId($order->uuid)->first();
        $transaction->payment_status='progress';
            $transaction->save();
        return redirect()->back()->with('success', 'Status is in progress');
    }
    function delivered_status($id)
    {
        $order = Order::findOrFail($id);
        $order->order_status = 'delivered';
        $order->save();
        $transaction=Transaction::whereOrderId($order->uuid)->first();
        $transaction->payment_status='delivered';
            $transaction->save();
        return redirect()->back()->with('success', 'Status is in delivered');
    }
    function canceled_status($id)
    {
        $order = Order::findOrFail($id);
        $order->order_status = 'canceled';
        $order->save();
        $transaction=Transaction::whereOrderId($order->uuid)->first();
        $transaction->payment_status='canceled';
            $transaction->save();
        return redirect()->back()->with('success', 'Status is in canceled');
    }

    function transactions()
    {
        $transactions = Transaction::latest()->get();
        return view('admin.transactions', compact('transactions'));
    }

    function transactions_delete($id)
    {
        $transactions = Transaction::findOrFail($id);
        Order::whereOrderId($transactions->order_id)->delete();
        $transactions->delete();
        return redirect()->route('admin.transactions')->with('success', 'Transaction delete successfully');
    }
    public function show($uuid)
    {
        // Lấy thông tin đơn hàng từ cơ sở dữ liệu dựa trên UUID
        $order = Order::where('uuid', $uuid)->firstOrFail();
    
        $qlys = json_decode($order->qlys, true);
        $productIds = json_decode($order->product_id, true);
    
        // Lấy danh sách sản phẩm dựa trên các ID sản phẩm từ trường product_id
        $products = Product::whereIn('id', $productIds)->get();
    
        // Trả về view "detailorder" và truyền biến $order vào view
        return view('admin.order.detail-order', compact('order', 'products','qlys'));
    }
}



