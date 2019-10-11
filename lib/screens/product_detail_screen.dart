import 'package:appwarehouse/providers/product.dart';
import 'package:appwarehouse/providers/products.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './product_detail_screen.dart';

class ProductDetailScreen extends StatelessWidget{
  // final String title;
  // final double price;

  // ProductDetailScreen({ this.title, this.price});

  static const routeName = 'product-detail';

  @override
  Widget build(BuildContext context) {

    final productId = ModalRoute.of(context).settings.arguments as String;
    
    final loadedProduct = Provider.of<Products>(
      context,
      listen: false,
    ).items.firstWhere((prod)=> prod.id == productId);
    // TODO: implement build
    return Scaffold(

      appBar: AppBar(
        title: Text(loadedProduct.title),
      ),
    );
  }


}