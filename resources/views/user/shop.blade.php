@extends('layouts.app')
@section('title')
    Shop
@endsection
@section('content')
    <div class="page-title">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <ul class="breadcrumbs">
                        <li><a href="/">Trang chủ</a> </li>
                        <li class="separator"></li>
                        <li>Cửa hàng</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- Page Content-->
     
    <div class="container padding-bottom-3x mb-1">
        <div class="row">
            <div class="col-lg-12">
                <div class="shop-top-filter-wrapper">
                    <div class="row">
                        <div class="col-md-10 gd-text-sm-center">
                            <div class="sptfl">
                                <div class="shop-sorting">
                                    <label for="sorting">Sắp xếp theo:</label>
                                    <select class="form-control" id="sorting">
    <option value="" {{ $sortOption === '' ? 'selected' : '' }}>Tất cả sản phẩm</option>
    <option value="low_to_high" {{ $sortOption === 'low_to_high' ? 'selected' : '' }}>Giá Thấp - Cao</option>
    <option value="high_to_low" {{ $sortOption === 'high_to_low' ? 'selected' : '' }}>Giá Cao - Thấp</option>
</select>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row g-3">

          <div class="col-lg-9 order-lg-2" id="list_view_ajax">
                <!-- Shop Toolbar-->
                <div class="row g-3">
                    @foreach ($products as $product)
                        <div class="col-lg-4">
                            <div class="product-card">
                                <div class="product-thumb">
                                    <img class="lazy" data-src="{{ asset('storage') }}/{{ $product->featured_image }}"
                                        alt="Product">
                                    <div class="product-button-group">
                                        @if (Auth::user() && Auth::user()->id)
                                            <a class="product-button wishlist_store"
                                                href="{{ route('user.add_to_wishlist', ['id' => $product->id]) }}"
                                                title="Wishlist"><i class="icon-heart"></i></a>
                                        @else
                                            <a class="product-button wishlist_store" href="{{ route('user.login') }}"
                                                title="Wishlist"><i class="icon-heart"></i></a>
                                        @endif

                                        @if (Auth::user() && Auth::user()->id)
                                            <a data-target="" class="product-button product_compare"
                                                href="{{ route('user.add_to_compare', ['id' => $product->id]) }}"
                                                title="Compare"><i class="icon-repeat"></i></a>
                                        @else
                                            <a data-target="" class="product-button product_compare"
                                                href="{{ route('user.login') }}" title="Compare"><i
                                                    class="icon-repeat"></i></a>
                                        @endif

                                        @if (Auth::user() && Auth::user()->id)
                                            <a class="product-button add_to_single_cart" data-target="563"
                                                href="{{ route('user.add_to_cart', ['id' => $product->id]) }}"
                                                title="To Cart"><i class="icon-shopping-cart"></i>
                                            </a>
                                        @else
                                            <a class="product-button add_to_single_cart" data-target="563"
                                                href="{{ route('user.login') }}" title="To Cart"><i
                                                    class="icon-shopping-cart"></i>
                                            </a>
                                        @endif



                                    </div>
                                </div>
                                <div class="product-card-body">
                                    <div class="product-category"><a href="">{{ $product->categories->name }}</a>
                                    </div>
                                    <h3 class="product-title"><a
                                            href="{{ route('user.product_details', ['slug' => $product->slug]) }}">
                                            {{ \Illuminate\Support\Str::substr($product->name, 0, 50) }}
                                        </a></h3>
                               
                                    <h4 class="product-price">
                                        <del>${{ $product->previous_price }}</del>

                                        ${{ $product->current_price }}
                                    </h4>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>

                <!-- Pagination-->
                <div class="row mt-15" id="item_pagination">
                    <div class="col-lg-12 text-center">
                    </div>
                </div>
            </div>

            <!-- Sidebar          -->
            <div class="col-lg-3 order-lg-1">
                <div class="sidebar-toggle position-left"><i class="icon-filter"></i></div>
                <aside class="sidebar sidebar-offcanvas position-left"><span class="sidebar-close"><i
                            class="icon-x"></i></span>
                    <!-- Widget Categories-->
                    <section class="widget widget-categories card rounded p-4">
                        <h3 class="widget-title">Danh mục cửa hàng</h3>
                        <ul id="category_list" class="category-scroll">
                            @foreach ($categories as $category)
                            <li class="has-children">
                                <a class="category_search" href="#" data-href="Women-Clothing">{{ $category->name }}</a>

                                <ul id="subcategory_list">
                                    @foreach ($category->sub_category as $sub_category)
                                    <li class="">
                                        <a class="subcategory" href="{{ route('user.shop.sub.category', ['id'=>$sub_category->id,'cat_id'=>$category->id]) }}" data-href="Womens-Underwear">{{ $sub_category->name }}</a>
                                        <ul id="childcategory_list">
                                        @foreach ($sub_category->child_category as $child_category)
                                            <li class="">
                                                <a class="childcategory" href="{{ route('user.shop.child.category', ['id'=>$child_category->id,'sub_id'=>$sub_category->id,'cat_id'=>$category->id]) }}" data-href="Pajama-Sets">{{ $child_category->name }}</a>

                                            </li>
                                            @endforeach
                                        </ul>
                                    </li>
                                    @endforeach
                                </ul>
                            </li>
                            @endforeach 
                        </ul>
                    </section>

                    <!-- Widget Brand Filter-->
                    {{-- <section class="widget widget-categories card rounded p-4">
                        <h3 class="widget-title">Lọc theo thương hiệu</h3>
                        <div class="custom-control custom-checkbox">
                            <input class="custom-control-input brand-select" type="checkbox" value=""
                                id="all-brand">
                            <label class="custom-control-label" for="all-brand">Tất cả các thương hiệu</label>
                        </div>
                        <div class="custom-control custom-checkbox">
                            <input class="custom-control-input brand-select" type="checkbox" value="Adidas"
                                id="Adidas">
                            <label class="custom-control-label" for="Adidas">Adidas</label>
                        </div>
                        <div class="custom-control custom-checkbox">
                            <input class="custom-control-input brand-select" type="checkbox" value="Lavie"
                                id="Lavie">
                            <label class="custom-control-label" for="Lavie">Lavie</label>
                        </div>
                        <div class="custom-control custom-checkbox">
                            <input class="custom-control-input brand-select" type="checkbox" value="Skyart"
                                id="Skyart">
                            <label class="custom-control-label" for="Skyart">Skyart</label>
                        </div>
                        <div class="custom-control custom-checkbox">
                            <input class="custom-control-input brand-select" type="checkbox" value="Nike"
                                id="Nike">
                            <label class="custom-control-label" for="Nike">Nike</label>
                        </div>
                        <div class="custom-control custom-checkbox">
                            <input class="custom-control-input brand-select" type="checkbox" value="Samsung"
                                id="Samsung">
                            <label class="custom-control-label" for="Samsung">Samsung</label>
                        </div>
                        <div class="custom-control custom-checkbox">
                            <input class="custom-control-input brand-select" type="checkbox" value="Yamaha"
                                id="Yamaha">
                            <label class="custom-control-label" for="Yamaha">Yamaha</label>
                        </div>
                        <div class="custom-control custom-checkbox">
                            <input class="custom-control-input brand-select" type="checkbox" value="HM"
                                id="HM">
                            <label class="custom-control-label" for="HM">H.M</label>
                        </div>
                        <div class="custom-control custom-checkbox">
                            <input class="custom-control-input brand-select" type="checkbox" value="Loreal"
                                id="Loreal">
                            <label class="custom-control-label" for="Loreal">Loreal</label>
                        </div>
                        <div class="custom-control custom-checkbox">
                            <input class="custom-control-input brand-select" type="checkbox" value="Ascis"
                                id="Ascis">
                            <label class="custom-control-label" for="Ascis">Ascis</label>
                        </div>
                    </section> --}}
                </aside>
            </div>
        </div>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <script>
    $(document).ready(function() {
        // Khi thay đổi option sort
        $('#sorting').change(function() {
            // Lấy giá trị option đã chọn
            var sortOption = $(this).val();

            // Lấy URL của trang hiện tại
            var currentUrl = window.location.href;

            // Chia URL để tạo URL mới dựa trên action của form
            var parts = currentUrl.split('?');
            var baseUrl = parts[0];
            var queryParams = parts[1] ? parts[1].split('&').filter(function(param) {
                return !param.startsWith('sort=');
            }).join('&') : '';

            // Tạo query string mới với tham số sort
            var newQueryString = '';
            if (queryParams !== '') {
                newQueryString = queryParams + '&sort=' + sortOption;
            } else {
                newQueryString = 'sort=' + sortOption;
            }

            // Tạo URL mới
            var newUrl = baseUrl + '?' + newQueryString;

            // Chuyển trang tới URL mới
            window.location.href = newUrl;
        });
    });
</script>




@endsection
