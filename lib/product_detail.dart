import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {
  int index;
  ProductDetail(this.index);
  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('${widget.index}'),
    );
  }
}
