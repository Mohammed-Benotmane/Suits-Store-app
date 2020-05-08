import 'package:flutter/material.dart';
import 'Models/Product.dart';

class ProductDetail extends StatefulWidget {
  Product temp;
  ProductDetail(this.temp);
  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('${widget.temp.title}'),
    );
  }
}
