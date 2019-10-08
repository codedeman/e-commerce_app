import 'package:appwarehouse/widgets/product_item.dart';
import 'package:flutter/material.dart';
import 'package:appwarehouse/models/product.dart';
import 'package:appwarehouse/widgets/product_item.dart';

class ProductssOverviewScreen extends StatelessWidget{
  final List<Product> loadedProducts = [

    Product(
      id: 'p1',
      title: 'Red Shirt',
      description: 'A red shirt - it is pretty red!',
      price: 29.99,
      imageUrl:
      'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
    ),
    Product(
      id: 'p2',
      title: 'Trousers',
      description: 'A nice pair of trousers.',
      price: 59.99,
      imageUrl:
      'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Trousers%2C_dress_%28AM_1960.022-8%29.jpg/512px-Trousers%2C_dress_%28AM_1960.022-8%29.jpg',
    ),
    Product(
      id: 'p3',
      title: 'Yellow Scarf',
      description: 'Warm and cozy - exactly what you need for the winter.',
      price: 19.99,
      imageUrl:
      'https://live.staticflickr.com/4043/4438260868_cc79b3369d_z.jpg',
    )


  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      appBar: AppBar(

        title: Text("My shop"),
      ),
      body: GridView.builder(
          padding: const EdgeInsets.all(10.0),

          itemCount: loadedProducts.length,
          itemBuilder: ( context,  i) => ProductItem(

              loadedProducts[i].id,
              loadedProducts[i].description,
              loadedProducts[i].imageUrl,

          ),
          
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3/2,
            mainAxisSpacing:10
          ),



          ),

    );
  }



}