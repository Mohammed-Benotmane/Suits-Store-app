import 'package:flutter/material.dart';

class Store extends StatefulWidget {
  @override
  _StoreState createState() => _StoreState();
}

class _StoreState extends State<Store> {
  Color lightBrown = Color(0xFFdeb887);
  Color darkBrown = Color(0xFF743a34);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.sort,color: Colors.grey.shade800), onPressed: (){}),
        title: Text(
          'Store',
          style: TextStyle(color: Colors.grey[800]),
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search,color: Colors.grey.shade800), onPressed: (){})
        ],
        centerTitle: true,
        backgroundColor: Colors.grey[100],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 30,right: 30),
          child: Column(
            children: <Widget>[
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
                height: MediaQuery.of(context).size.height/4,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    shrinkWrap: true,
                    itemBuilder: (context,index){
                    return clothesCard(index);
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }

  clothesCard(int index){
    return Card(
      child: Column(
        children: <Widget>[
          AssetImage('assets/newarrival$index.jpg')
        ],
      ),
    );
  }
}
