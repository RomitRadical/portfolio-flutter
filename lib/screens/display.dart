import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class Display extends StatefulWidget {
  @override
  _DisplayState createState() => _DisplayState();
}

class _DisplayState extends State<Display> {
  String _name = '';
  String _phone = '';
  String _email = '';
  String _github = '';
  String _twitter = '';
  String _linkedin = '';

  final _storage = new FlutterSecureStorage();

  @override
  void initState() {
    super.initState();
    _getPortfolio();
  }

  void _getPortfolio() async {
    _name = await _storage.read(key: 'name');
    if (_name == null || _name == '') {
      setState(() {
        _name = 'Enter your name';
      });
    } else {
      setState(() {
        _name = _name;
      });
    }
    _phone = await _storage.read(key: 'phone');
    if (_phone == null || _phone == '') {
      setState(() {
        _phone = 'Enter your phone number';
      });
    } else {
      setState(() {
        _phone = _phone;
      });
    }
    _email = await _storage.read(key: 'email');
    if (_email == null || _email == '') {
      setState(() {
        _email = 'Enter your email address';
      });
    } else {
      _email = _email;
    }
    _github = await _storage.read(key: 'github');
    if (_github == null || _github == '') {
      setState(() {
        _github = 'Enter your github address';
      });
    } else {
      setState(() {
        _github = _github;
      });
    }
    _twitter = await _storage.read(key: 'twitter');
    if (_twitter == null || _twitter == '') {
      setState(() {
        _twitter = 'Enter your twitter handle';
      });
    } else {
      _twitter = _twitter;
    }
    _linkedin = await _storage.read(key: 'linkedin');
    if (_linkedin == null || _linkedin == '') {
      setState(() {
        _linkedin = 'Enter your linkedin profile';
      });
    } else {
      setState(() {
        _linkedin = _linkedin;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Portfolio'),
        centerTitle: true,
        backgroundColor: Colors.grey[900],
        elevation: 0,
      ),
      backgroundColor: Colors.black,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        child: Icon(Icons.edit),
        onPressed: () {
          Navigator.pushReplacementNamed(context, '/editing');
        },
      ),
      body: Container(
        child: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(20, 10, 20, 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/image.jpg'),
                  radius: 50,
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
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                _name,
                style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2,
                    fontSize: 18,
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
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    _phone,
                    style: TextStyle(
                        color: Colors.amberAccent[200],
                        letterSpacing: 2,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ],
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
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                _email,
                style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.code,
                    color: Colors.grey[400],
                  ),
                  SizedBox(width: 5),
                  Text(
                    'GITHUB',
                    style: TextStyle(
                      color: Colors.grey,
                      letterSpacing: 2,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                _github,
                style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.perm_media,
                    color: Colors.grey[400],
                  ),
                  SizedBox(width: 5),
                  Text(
                    'TWITTER',
                    style: TextStyle(
                      color: Colors.grey,
                      letterSpacing: 2,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                _twitter,
                style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.perm_media,
                    color: Colors.grey[400],
                  ),
                  SizedBox(width: 5),
                  Text(
                    'LINKEDIN',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      letterSpacing: 2,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                _linkedin,
                style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
