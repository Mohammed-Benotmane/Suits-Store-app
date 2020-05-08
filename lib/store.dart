import 'package:flutter/material.dart';
import 'package:profiledarktheme/product_detail.dart';

class Store extends StatefulWidget {
  @override
  _StoreState createState() => _StoreState();
}

class _StoreState extends State<Store> {
  Color lightBrown = Color(0xFFdeb887);
  Color veryLightBrown = Color(0xFFfff5ee);
  Color darkBrown = Color(0xFF743a34);
  List<String> newAdded= ["Black Suit","Brown Suit","Ties"];
  List<String> suits= ["Grey Suit","Daniel Suit","Hat"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: veryLightBrown,
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.sort,color: darkBrown), onPressed: (){}),
        title: Text(
          'Suits Store',
          style: TextStyle(color: darkBrown),
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search,color: darkBrown), onPressed: (){})
        ],
        centerTitle: true,
        backgroundColor: lightBrown,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20,left: 30,right: 30),
          child: Column(
            children: <Widget>[
              Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                      child: Container(child: Center(child: Padding(
                        padding: const EdgeInsets.fromLTRB(0,12,0,12),
                        child: Text('Products',style: TextStyle(color: veryLightBrown,fontSize: 18),),
                      )),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color: darkBrown),),
                    ),
                    Expanded(child: Container(child: Center(child: Text('Cart',style: TextStyle(color: darkBrown,fontWeight: FontWeight.w500,fontSize: 18),)))),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Chip(label: Padding(
                    padding: const EdgeInsets.fromLTRB(6,2.0,6,2),
                    child: Text('NEW ARRIVAL',style: TextStyle(color: darkBrown,fontWeight: FontWeight.w600),),
                  ),backgroundColor: lightBrown,),
                  Text('See all',style: TextStyle(color: darkBrown,fontWeight: FontWeight.w600)),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height/3.5,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    shrinkWrap: true,
                    itemBuilder: (context,index){
                    return clothesCard('newarrival${index+1}',newAdded[index]);
                }),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Chip(label: Padding(
                    padding: const EdgeInsets.fromLTRB(6,2.0,6,2),
                    child: Text('SUITS',style: TextStyle(color: darkBrown,fontWeight: FontWeight.w600),),
                  ),backgroundColor: lightBrown,),
                  Text('See all',style: TextStyle(color: darkBrown,fontWeight: FontWeight.w600)),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height/3.5,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    shrinkWrap: true,
                    itemBuilder: (context,index){
                      return clothesCard('suit${index+1}',suits[index]);
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }

  clothesCard(String picName,String title){
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return ProductDetail();
        }));
      },
      child: Container(
        width: MediaQuery.of(context).size.width/2.5,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
          color: lightBrown,
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Column(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.asset('assets/$picName.jpg',
                    height: MediaQuery.of(context).size.height/6),
                ),
                SizedBox(height: 10),
                Container(
                  color: darkBrown,
                width: 20,height: 2),
                SizedBox(height: 10),
                Text(title,style: TextStyle(color: darkBrown,fontSize: 18,fontWeight: FontWeight.w600)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
