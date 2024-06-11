<!DOCTYPE html>
<html lang="en">
  <head>

    <base href="/public">

    @include('admin.css')

    <style type="text/css">
        .div-centre {
            text-align: center;
            padding-top: 40px;
        }
        .h2font {
            font-size: 40px;
            padding-bottom: 40px;
        }
        .input_color {
            color: black;
            border: none;
            padding: 20px;
            width: 50%;
            margin-bottom: 20px;
        }
        .center {
            margin: auto;
            width: 50%;
            text-align: center;
            padding: 10px;
            margin-top: 30px;
            border: 3px solid white;
        }
        label{
            display: inline-block;
            width: 150px;
        }
        img {
            width: 200px;
            height: 200px;
            margin: auto;
        }
    </style>

  </head>
  <body>
    <div class="container-scroller">
      @include('admin.sidebar')
      <div class="container-fluid page-body-wrapper">
        @include('admin.header')
        <div class="main-panel">
            <div class="content-wrapper">
                <div class="div-centre">

                    <!-- Show any message if the session has one -->
                    @if(session()->has('message'))
                        <div class="alert alert-success">
        
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">x</button>
        
                            {{ session()->get('message') }}
        
                        </div>
                    @endif

                    <h2 class="h2font">Edit Product</h2>
                    <form action="{{ url('/edit_product/'.$product->id) }}" method="POST" enctype="multipart/form-data">
                        
                        @csrf

                        <label>Product Title</label>
                        <input class="input_color" type="text" name="product_title" value="{{$product->title}}">
                        <br>

                        <label>Description</label>
                        <input class="input_color" type="text" name="product_description" value="{{$product->description}}">
                        <br>
                        
                        <label>Category</label>
                        <select class="input_color" type="text" name="product_category">
                            <option value="{{$product->category}}" class="input_color">{{$product->category}}</option>

                            @foreach ($category as $category)

                            @if ($category->category_name != $product->category)
                            
                            <option value="{{$category->category_name}}" class="input_color">{{$category->category_name}}</option>

                            @endif

                            @endforeach

                        </select>
                        <br>

                        <label>Quantity</label>
                        <input class="input_color" type="number" min="0" name="product_quantity" value="{{$product->quantity}}">
                        <br>

                        <label>Price</label>
                        <input class="input_color" type="number" min="0" name="product_price" value="{{$product->price}}">
                        <br>

                        <div class="div-center">
                            <label>Change Product Image</label>
                            <img src="/product/{{ $product->image }}">
                            <input style="margin-bottom: 20px; border: none; width: 50%" type="file" name="product_image">
                            <br>
                        </div>

                        <input class="btn btn-primary" type="submit" value="Save">
                        <br>

                    </form>
                </div>
            </div>
      </div>
      <!-- page-body-wrapper ends -->
    </div>
    <!-- container-scroller -->
    @include('admin.script')
  </body>
</html>