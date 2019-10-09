import 'package:appwarehouse/screens/product_detail_screen.dart';
import 'package:appwarehouse/screens/products_overview_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ProductssOverviewScreen(),

    title: 'Stream Demo',
    theme: ThemeData(
      primarySwatch: Colors.green,
      accentColor: Colors.deepOrange,
      fontFamily: 'Lato',

    ),
    routes: {
      ProductDetailScreen.routeName: (context) =>ProductDetailScreen();



    },
  ));
}

