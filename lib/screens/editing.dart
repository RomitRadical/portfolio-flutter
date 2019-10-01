import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class Editing extends StatefulWidget {
  @override
  _EditingState createState() => _EditingState();
}

class _EditingState extends State<Editing> {
  String _name = '';
  String _phone = '';
  String _email = '';
  String _github = '';
  String _twitter = '';
  String _linkedin = '';
  String _newName = '';
  String _newPhone = '';
  String _newEmail = '';
  String _newGithub = '';
  String _newTwitter = '';
  String _newLinkedin = '';

  final _storage = new FlutterSecureStorage();

  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  final githubController = TextEditingController();
  final twitterController = TextEditingController();
  final linkedinController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _getPortfolio();
  }

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
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

  void _updateName(name) async {
    await _storage.write(key: 'name', value: name);
  }

  void _updatePhone(phone) async {
    await _storage.write(key: 'phone', value: phone);
  }

  void _updateEmail(email) async {
    await _storage.write(key: 'email', value: email);
  }

  void _updateGithub(github) async {
    await _storage.write(key: 'github', value: github);
  }

  void _updateTwitter(twitter) async {
    await _storage.write(key: 'twitter', value: twitter);
  }

  void _updateLinkedin(linkedin) async {
    await _storage.write(key: 'linkedin', value: linkedin);
  }

  void _updatePortfolio() {
    if (nameController.text.isNotEmpty) {
      _updateName(nameController.text);
    }
    if (phoneController.text.isNotEmpty) {
      _updatePhone(phoneController.text);
    }
    if (emailController.text.isNotEmpty) {
      _updateEmail(emailController.text);
    }
    if (githubController.text.isNotEmpty) {
      _updateGithub(githubController.text);
    }
    if (twitterController.text.isNotEmpty) {
      _updateTwitter(twitterController.text);
    }
    if (linkedinController.text.isNotEmpty) {
      _updateLinkedin(linkedinController.text);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Portfolio'),
        centerTitle: true,
        backgroundColor: Colors.grey[900],
        elevation: 0,
      ),
      backgroundColor: Colors.black,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: Icon(Icons.done),
        onPressed: () {
          _updatePortfolio();
          Navigator.pushReplacementNamed(context, '/');
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
              TextField(
                controller: nameController,
                style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
                cursorColor: Colors.amber[200],
                decoration: InputDecoration(
                  hintText: _name,
                  hintStyle: TextStyle(color: Colors.grey),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.amber)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.amber)),
                ),
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
              TextField(
                controller: phoneController,
                keyboardType: TextInputType.phone,
                style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
                cursorColor: Colors.amber[200],
                decoration: InputDecoration(
                    hintText: _phone,
                    hintStyle: TextStyle(color: Colors.grey),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.amber)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.amber))),
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
              TextField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
                cursorColor: Colors.amber[200],
                decoration: InputDecoration(
                  hintText: _email,
                  hintStyle: TextStyle(color: Colors.grey),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.amber)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.amber)),
                ),
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
              TextField(
                controller: githubController,
                style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
                cursorColor: Colors.amber[200],
                decoration: InputDecoration(
                  hintText: _github,
                  hintStyle: TextStyle(color: Colors.grey),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.amber)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.amber)),
                ),
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
              TextField(
                controller: twitterController,
                style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
                cursorColor: Colors.amber[200],
                decoration: InputDecoration(
                  hintText: _twitter,
                  hintStyle: TextStyle(color: Colors.grey),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.amber)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.amber)),
                ),
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
              TextField(
                controller: linkedinController,
                style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
                cursorColor: Colors.amber[200],
                decoration: InputDecoration(
                  hintText: _linkedin,
                  hintStyle: TextStyle(color: Colors.grey),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.amber)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.amber)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
