<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Carbon\Carbon;
use App\Models\Order;

class ClearOldOrders extends Command
{
    protected $signature = 'orders:clear';
    protected $description = 'Clear orders older than 3 months';

    public function handle()
    {
        // Tính thời gian trước 3 tháng
        $threeMonthsAgo = Carbon::now()->subMonths(3);

        // Lấy danh sách các đơn hàng cần xóa
        $oldOrders = Order::where('created_at', '<', $threeMonthsAgo)->get();

        // Xóa các đơn hàng
        foreach ($oldOrders as $order) {
            $order->delete();
        }

        $this->info('Old orders cleared successfully.');
    }
}