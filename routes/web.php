<?php

use App\Http\Controllers\Admin\CustomerController;
use App\Http\Controllers\User\Auth\LoginController;
use App\Http\Controllers\User\Auth\RegisterController;
use App\Http\Controllers\User\Auth\ForgotController;
use App\Http\Controllers\User\CartController;
use App\Http\Controllers\User\OrderController;
use App\Http\Controllers\User\CheckoutController;
use App\Http\Controllers\User\CompareController;
use App\Http\Controllers\User\DashboardController;
use App\Http\Controllers\User\HomeController;
use App\Http\Controllers\User\WishListController;
use App\Http\Controllers\User\UserController;
use App\Http\Controllers\User\Auth\ResetPasswordController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::middleware(['guest'])->group(function () {
    Route::controller(RegisterController::class)->group(function () {
        Route::get('/register', 'index')->name('user.register');
        Route::post('/register', 'create')->name('user.make.register');
    });

    Route::controller(LoginController::class)->group(function () {
        Route::get('/login', 'index')->name('user.login');
        Route::post('/login', 'login')->name('user.make.login');
    });
    Route::controller(UserController::class)->group(function () {
        Route::get('/verification/{id}', [UserController::class, 'verification']);
        Route::post('/verified',[UserController::class,'verifiedOtp'])->name('verifiedOtp');
        Route::get('/resend-otp', [UserController::class, 'resendOtp'])->name('resendOtp');
    });

    Route::controller(ForgotController::class)->group(function () {
        Route::get('/forgot', [ForgotController::class, 'index'])->name('user.forgot');
        Route::post('/forgot', [ForgotController::class, 'forgot'])->name('user.make.forgot');
    
    });
    
    Route::controller(ResetPasswordController::class)->group(function () {
        Route::get('/reset', [ResetPasswordController::class, 'index'])->name('user.reset');
        Route::post('/reset', [ResetPasswordController::class, 'reset'])->name('user.make.reset');
    
    });
    
});

Route::controller(OrderController::class)->group(function () {
    Route::get('order/detail/{uuid}', [App\Http\Controllers\User\OrderController::class, 'show'])->name('user.detailorder');

});
Route::controller(PrintController::class)->group(function () {
    Route::get('print/detail/{uuid}', [App\Http\Controllers\User\PrintController::class, 'print'])->name('user.print');

});



Route::controller(HomeController::class)->group(function () {
    Route::get('/', 'index')->name('user.home');
    Route::post('/review', 'review')->name('user.review');
    Route::post('/subscribe', 'subscribe')->name('user.subscribe');
    Route::get('/blog', 'blog')->name('user.blog');
    Route::get('/search/blog', 'blog_search')->name('user.search');
    Route::get('/blog/{id}', 'blog_details')->name('user.blog_details');
    Route::get('/blog/category/{id}', 'blog_by_category')->name('user.blog.category');
    Route::get('/product-details/{slug}', 'product_details')->name('user.product_details');
    Route::get('/shop', 'shop')->name('user.shop');
    Route::get('/faq', 'faq_category')->name('user.faq');
    Route::get('/faq/{slug}', 'faq_by_category')->name('user.faqs');
    Route::get('/price/product', 'product_by_price')->name('user.product.price');
    Route::get('/category', 'category')->name('user.category');
    Route::get('/search', 'search_product')->name('user.search.product');
    Route::get('/category/product/{slug}', 'product_by_category')->name('user.category.product');
    Route::get('/brand/product/{slug}', 'product_by_brand')->name('user.brand.product');
    Route::get('/brand', 'brands')->name('user.brand');
    Route::get('/shop/category/{id}', 'product_by_category')->name('user.shop.category');
    Route::get('/shop/category/{id}/{cat_id}', 'product_by_sub_category')->name('user.shop.sub.category');
    Route::get('/shop/category/{id}/{cat_id}/{sub_id}', 'product_by_child_category')->name('user.shop.child.category');
    Route::middleware(['auth'])->group(function () {
        Route::get('/add_to_wishlist/{id}', 'add_to_wishlist')->name('user.add_to_wishlist');
        Route::get('/add_to_compare/{id}', 'add_to_compare')->name('user.add_to_compare');
        Route::get('/add_to_cart/{id}', 'add_to_cart')->name('user.add_to_cart');
    });

});
Route::middleware(['auth'])->group(function () {
    Route::controller(CartController::class)->group(function () {
        Route::get('/cart', 'index')->name('user.cart');
        Route::get('/cart/clear', 'clearCart')->name('user.cart.clear');
        Route::post('/cart/update', 'update_cart')->name('user.cart.update');
        Route::get('/cart/remove/{id}', 'removeCartItem')->name('user.cart.remove');
    });
    Route::controller(WishListController::class)->group(function () {
        Route::get('/wishlist', 'index')->name('user.wishlist');
        Route::get('/wishlist/clear', 'clear_wishlist')->name('user.wishlist.clear');
        Route::get('/wishlist/remove/{id}', 'remove_wishlist')->name('user.wishlist.remove');
    });
    Route::controller(CompareController::class)->group(function () {
        Route::get('/compare', 'index')->name('user.compare');
        Route::get('/compare/remove/{id}', 'remove_compare')->name('user.compare.remove');
    });
    Route::controller(CheckoutController::class)->group(function () {
        Route::get('/checkout', 'index')->name('user.checkout');
        Route::post('/billing/address', 'update_shipping_address')->name('user.billing_address');
        Route::get('/payment', 'payment')->name('user.payment');
        Route::get('/order', 'order')->name('user.order');
        Route::post('/checkout/cash-on-delivery', 'checkout_submit_cash_on_delivery')->name('user.checkout.cash.on.delivery');
        Route::post('/checkout/bank-transfer', 'checkout_submit_back_transfer')->name('user.checkout.bank.transfer');
        Route::post('/stripe', 'stripePost')->name('user.checkout.stripe');
    });

    Route::controller(DashboardController::class)->group(function () {
        Route::get('/dashboard', 'index')->name('user.dashboard');
        Route::get('/profile', 'show_profile')->name('user.dashboard.profile');
        Route::post('/update/profile', 'update_profile')->name('user.profile.update');
        Route::get('/address', 'show_address')->name('user.dashboard.address');
        Route::post('/update/address', 'update_address')->name('user.address.update');
        Route::get('/logout', 'logout')->name('user.logout');
        Route::get('/user/orders/sort/{criteria}', 'sortOrders')->name('user.order.sort');
    });
    
    

});

require_once 'admin.php';
