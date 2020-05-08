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
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10,20,10,5),
        child: Column(

          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.asset(
                    'assets/${widget.temp.type}${widget.temp.index}.jpg',
                    height: MediaQuery.of(context).size.height / 4,
                  ),
                ),
              ],
            ),
            SizedBox(height: 15,),
            Container(color: darkBrown, width: 30, height: 2),
            SizedBox(height: 15,),
            Text(widget.temp.title,
                style: TextStyle(
                    color: darkBrown,
                    fontSize: 18,
                    letterSpacing: 2,
                    fontWeight: FontWeight.w600,
                ),
            ),
            SizedBox(height: 10,),
            Text(
              '${widget.temp.description}',
                style: TextStyle(
                    color: Colors.grey.shade600,
                    ),
            ),
            SizedBox(height: 20,),
            Text(
                '${widget.temp.price}\$',
                style: TextStyle(
                    fontWeight:FontWeight.w600,
                    color: Colors.green[700],
                    fontSize: 18,
                ),
            ),
          ],
        ),
      ),
    );
  }

}
