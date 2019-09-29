import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Porfolio(),
    ));

class Porfolio extends StatefulWidget {
  @override
  _PorfolioState createState() => _PorfolioState();
}

class _PorfolioState extends State<Porfolio> {
  int phone = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Portfolio'),
          centerTitle: true,
          backgroundColor: Colors.grey[900],
          elevation: 0,
        ),
        body: Padding(
            padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/image.jpg'),
                    radius: 40,
                  ),
                ),
                Divider(height: 60, color: Colors.grey[700]),
                Row(
                  children: <Widget>[
                    Icon(Icons.person, color: Colors.grey),
                    SizedBox(width: 5),
                    Text(
                      'NAME',
                      style: TextStyle(
                        color: Colors.grey,
                        letterSpacing: 2,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  'Romit Goswami',
                  style: TextStyle(
                      color: Colors.amberAccent[200],
                      letterSpacing: 2,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 30),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.email,
                      color: Colors.grey[400],
                    ),
                    SizedBox(width: 5),
                    Text(
                      'EMAIL',
                      style: TextStyle(
                        color: Colors.grey,
                        letterSpacing: 2,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  'romitgoswami@gmail.com',
                  style: TextStyle(
                      color: Colors.amberAccent[200],
                      letterSpacing: 2,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 30),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.phone,
                      color: Colors.grey[400],
                    ),
                    SizedBox(width: 5),
                    Text(
                      'PHONE',
                      style: TextStyle(
                        color: Colors.grey,
                        letterSpacing: 2,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      '$phone',
                      style: TextStyle(
                          color: Colors.amberAccent[200],
                          letterSpacing: 2,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          phone++;
                        });
                      },
                      icon: Icon(
                        Icons.edit,
                        color: Colors.grey,
                      ),
                    )
                  ],
                )
              ],
            )));
  }
}
