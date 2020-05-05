import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Profile(),
));

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
      ),
    );
  }
}
