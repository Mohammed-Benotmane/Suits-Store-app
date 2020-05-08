import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Models/Product.dart';

class ProductDetail extends StatefulWidget {
  Product temp;
  ProductDetail(this.temp);
  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  Color lightBrown = Color(0xFFdeb887);
  Color veryLightBrown = Color(0xFFfff5ee);
  Color darkBrown = Color(0xFF743a34);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: veryLightBrown,
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.clear, color: darkBrown), onPressed: () {}),
        title: Text(
          'Product Detail',
          style: TextStyle(color: darkBrown),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.star, color: darkBrown), onPressed: () {})
        ],
        centerTitle: true,
        backgroundColor: lightBrown,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Image.asset(
            'assets/${widget.temp.type}${widget.temp.index}.jpg',
            height: MediaQuery.of(context).size.height / 4,
          ),
        ],
      ),
    );
  }

}
