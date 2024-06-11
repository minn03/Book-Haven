<!DOCTYPE html>
<html lang="en">
  <head>
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

                    <h2 class="h2font">Add Products</h2>
                    <form action="{{url('/add_product')}}" method="POST" enctype="multipart/form-data">
                        
                        @csrf

                        <label>Product Title</label>
                        <input class="input_color" type="text" name="product_title" placeholder="Insert product title" required="">
                        <br>

                        <label>Description</label>
                        <input class="input_color" type="text" name="product_description" placeholder="Insert product description" required="">
                        <br>
                        
                        <label>Price</label>
                        <input class="input_color" type="number" min="0" name="product_price" placeholder="Insert product price" required="">
                        <br>

                        <label>Quantity</label>
                        <input class="input_color" type="number" min="0" name="product_quantity" placeholder="Insert product quantity" required="">
                        <br>

                        <label>Category</label>
                        <select class="input_color" type="text" name="product_category" required="">
                            <option value="" class="input_color">Select Category</option>

                            @foreach ($category as $category)

                                <option value="{{$category->category_name}}" class="input_color">{{$category->category_name}}</option>

                            @endforeach

                        </select>
                        <br>

                        <label>Product Image</label>
                        <input style="margin-bottom: 20px; border: none; width: 50%" type="file" name="product_image" placeholder="Insert product image" required="">
                        <br>

                        <input class="btn btn-primary" type="submit" value="Add Product">
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