import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Profile(),
    ));

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        title: Text(
            'Profile',
            style: TextStyle(
              color: Colors.grey[300],
            ),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[900],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              height: 50.0,
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              color: Colors.grey[700],
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 10.0,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/moi.jpg'),
                    radius: 60.0,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Mohammed Benotmane',
                    style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.75,
                        color: Colors.grey[200]),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'mohammedbenotmanetom@gmail.com',
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 14.0,
                      letterSpacing: 0.75,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
              color: Colors.grey[700],
              child: ListTile(
                leading: Icon(
                  Icons.border_color,
                  color: Colors.grey[400],
                ),
                title: Text(
                  'Modifier Informations',
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 15.0,
                    letterSpacing: 0.5,
                  ),
                ),
                trailing:
                    IconButton(icon: Icon(Icons.navigate_next), onPressed: () {},
                    color: Colors.grey[400],),
              ),
            ),
            Divider(height: 0.20,),
            Container(
              margin: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
              color: Colors.grey[700],
              child: ListTile(
                leading: Icon(
                  Icons.settings,
                  color: Colors.grey[400],
                ),
                title: Text(
                  'Paramètres',
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 15.0,
                    letterSpacing: 0.5,
                  ),
                ),
                trailing:
                IconButton(icon: Icon(Icons.navigate_next), onPressed: () {},
                  color: Colors.grey[400],),
              ),
            ),
            Divider(height: 0.20,),
            Container(
              margin: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
              color: Colors.grey[700],
              child: ListTile(
                leading: Icon(
                  Icons.help,
                  color: Colors.grey[400],
                ),
                title: Text(
                  'Aide',
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 15.0,
                    letterSpacing: 0.5,
                  ),
                ),
                trailing:
                IconButton(icon: Icon(Icons.navigate_next), onPressed: () {},
                  color: Colors.grey[400],),
              ),
            ),
            Divider(height: 0.20,),
            Container(
              margin: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
              color: Colors.grey[700],
              child: ListTile(
                leading: Icon(
                  Icons.message,
                  color: Colors.grey[400],
                ),
                title: Text(
                  'Conditions d\'utilisation',
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 15.0,
                    letterSpacing: 0.5,
                  ),
                ),
                trailing:
                IconButton(icon: Icon(Icons.navigate_next), onPressed: () {},
                  color: Colors.grey[400],),
              ),
            ),
            Divider(height: 0.20,),
            Container(
              margin: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
              color: Colors.grey[700],
              child: ListTile(
                leading: Icon(
                  Icons.error,
                  color: Colors.grey[400],
                ),
                title: Text(
                  'A propos de nous',
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 15.0,
                    letterSpacing: 0.5,
                  ),
                ),
                trailing:
                IconButton(icon: Icon(Icons.navigate_next), onPressed: () {},
                  color: Colors.grey[400],),
              ),
            ),
            Divider(height: 0.20,),
            Container(
              margin: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
              color: Colors.grey[700],
              child: ListTile(
                leading: Icon(
                  Icons.cancel,
                  color: Colors.red[900],
                ),
                title: Text(
                  'Deconnexion',
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 15.0,
                    letterSpacing: 0.5,
                  ),
                ),
                trailing:
                IconButton(icon: Icon(Icons.navigate_next), onPressed: () {},
                  color: Colors.grey[400],),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
