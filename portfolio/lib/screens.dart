import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String _userPhone = "+91 987654321";
    String _userEmail = "qwerty@mail.com";
    String _userName = "Jai";
    String _userBio = "You Know me!";
    void _launchPhone(String _phone) {
      print('Phone btn is touched!');
      launch("tel:" + _phone);
    }

    void _launchEmail(String _email) {
      print('Email btn is touched!');
      launch("mailto:$_email?subject=Sup!&body=LOL");
    }

    Widget _avatar() {
      return CircleAvatar(
        radius: 60.0,
        backgroundImage: NetworkImage(
          "https://avatars1.githubusercontent.com/u/51963564?s=460&v=4",
        ),
      );
    }

    Widget _name() {
      return Text(
        _userName,
        style: TextStyle(
          fontFamily: "One",
          color: Colors.black,
          fontSize: 40.0,
          fontWeight: FontWeight.bold,
        ),
      );
    }

    Widget _bio() {
      return Text(
        _userBio,
        style: TextStyle(
          fontFamily: "One",
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
          letterSpacing: 0.7,
          color: Colors.white,
        ),
      );
    }

    Widget _dash() {
      return SizedBox(
        width: MediaQuery.of(context).size.width * (1 - 2 * 0.15),
        height: 10,
        child: Divider(
          thickness: 1,
          color: Colors.black,
        ),
      );
    }

    Widget _phoneNumber() {
      return Card(
        color: Colors.yellowAccent,
        margin: EdgeInsets.symmetric(
          vertical: 8.0,
          horizontal: MediaQuery.of(context).size.width * 0.15,
        ),
        child: InkWell(
          onTap: () => (_launchPhone(_userPhone)),
          child: ListTile(
            leading: Icon(
              Icons.phone,
              size: 23.0,
              color: Colors.black,
            ),
            title: Text(
              _userPhone,
              style: TextStyle(
                fontFamily: "One",
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      );
    }

    Widget _emailId() {
      return Card(
        color: Colors.yellowAccent,
        margin: EdgeInsets.symmetric(
          vertical: 8,
          horizontal: MediaQuery.of(context).size.width * 0.15,
        ),
        child: InkWell(
          onTap: () => (_launchEmail(_userEmail)),
          child: ListTile(
            leading: Icon(
              Icons.email,
              size: 18.0,
              color: Colors.black,
            ),
            title: Text(
              _userEmail,
              style: TextStyle(
                fontFamily: "Roboto",
                letterSpacing: 0,
                fontSize: 20,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
        ),
      );
    }

    Widget _profile() {
      return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF56CCF2),
              Color(0xFF2F80ED),
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _avatar(),
              _name(),
              _bio(),
              _dash(),
              _phoneNumber(),
              _emailId(),
            ],
          ),
        ),
      );
    }

    return _profile();
  }
}
