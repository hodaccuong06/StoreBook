<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Order extends Model
{
    use HasFactory;

    function users(): BelongsTo
    {
        return $this->belongsTo(User::class, 'user_id');
    }
    function billing_addresses(): BelongsTo
    {
        return $this->belongsTo(BillingAddress::class, 'user_id');
    }
    function shipping_addresses(): BelongsTo
    {
        return $this->belongsTo(ShippingAddress::class, 'address_id');
    }
    function products(): BelongsTo
    {
        return $this->belongsTo(Product::class, 'product_id');
    }
}
