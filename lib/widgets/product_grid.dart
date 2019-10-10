import 'package:appwarehouse/providers/product.dart';
import 'package:appwarehouse/widgets/product_item.dart';
import 'package:flutter/material.dart';
import 'package:appwarehouse/models/product.dart';
import 'package:provider/provider.dart';

class ProductGrid extends StatelessWidget {
  const ProductGrid({
    Key key,
    @required this.loadedProducts,
  }) : super(key: key);

  final List<Product> loadedProducts;

  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);
    final products = productsData.items;
    
    return GridView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: products.length,
        itemBuilder: ( context,  i) => ProductItem(
            products[i].id,
            products[i].description,
            products[i].imageUrl,

        ),
        
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3/2,
          mainAxisSpacing:10
        ),
        );
  }
}