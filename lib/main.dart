import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
//import 'package:flutter/services.dart';

void main() => runApp(MaterialApp(
      home: Home(),
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 207, 236, 250),
      // theme: ThemeData(primaryColor: Colors.blueGrey),
      appBar: AppBar(
        title: const Text('Prakticum ID Card'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 79, 195, 249),
      ),

      body: const Padding(
        padding: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/avatar_cat.jpg'),
                radius: 80.0,
              ),
            ),
            // Icon(Icons.signal_cellular_alt_outlined, size: 45.0),
            Padding (
              padding: EdgeInsets.only(top: 20.0)
            ),
            
            Divider(
              height: 20.0,
              color: Color.fromARGB(255, 0, 103, 151),
              thickness: 1.5,
            ),


            ListTile(
              leading: Icon(Icons.person, size: 25.0),
              title: Text(
                'Name',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
              ),
            ),
            SizedBox(
              height: 35.0,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter your name',
                  contentPadding: EdgeInsets.all(3.0),
                ),
              ),
            ),
            //  TextFormField(
            //   initialValue: phone,
            //   onChanged: (value) => setState(() => phone = value),

            ListTile(
              leading: Icon(Icons.home_repair_service_outlined, size: 25.0),
              title: Text(
                'Title',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
              ),
            ),
            SizedBox(
              height: 35.0,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter your title',
                  contentPadding: EdgeInsets.all(5.0),
                ),
              ),
            ),
            
            ListTile(
              leading: Icon(Icons.phone, size: 25.0),
              title: Text(
                'Phone',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
              ),
            ),
            SizedBox(
              height: 35.0,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter your phone. Ex. +358466666666',
                  contentPadding: EdgeInsets.all(5.0),
                ),
              ),
            ),
      
            
            ListTile(
              leading: Icon(Icons.mail, size: 25.0),
              title: Text(
                'E-mail',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
              ),
            ),
            SizedBox(
              height: 35.0,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter your email. Ex. mail@gmail.com',
                  contentPadding: EdgeInsets.all(5.0),
                ),
              ),
            ),
            
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        child: Text('Exit'),
        backgroundColor: Color.fromARGB(255, 79, 195, 249), 
        onPressed: () {
          print('Again');
        },
      ),
    );
  }
}
