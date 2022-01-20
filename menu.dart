// ignore_for_file: prefer_const_constructors, unnecessary_new
import 'package:flutter/material.dart';
import 'check.dart';
import 'main.dart';
import 'aboutme.dart';
import 'truefalse.dart';
import 'socialmedia.dart';
import 'todo.dart';

class Menu extends StatelessWidget {
  const Menu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'KURS',
          style: TextStyle(
            color: Colors.blue,
            fontSize: 40,
          ),
        ),
        shape: Border(
          bottom: BorderSide(
            color: Colors.blue,
          ),
          top: BorderSide(
            color: Colors.blue,
          ),
          right: BorderSide(
            color: Colors.blue,
          ),
          left: BorderSide(
            color: Colors.blue,
          ),
        ),
        elevation: 60,
        backgroundColor: Colors.yellowAccent,
      ),
      body: new Column(
        children: [
          new Image.asset("images/BHw.jpg",
              width: 500, height: 662.9, fit: BoxFit.fill),
        ],
      ),
    );
  }
}

class SideDrawer extends StatelessWidget {
  const SideDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Container(
            margin:
                EdgeInsets.only(left: 0.5, top: 90.0, right: 0.5, bottom: 0.0),
            child: Center(
              child: Text(
                'Menu',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 40,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.yellowAccent,
              border: Border.all(color: Colors.blue, width: 1),
              borderRadius: BorderRadius.circular(18.0),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              color: Colors.blueAccent,
            ),
            title: Text(
              'Wizytówka',
              style: TextStyle(
                color: Colors.yellow,
                fontSize: 30,
              ),
            ),
            onTap: () => {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => Wizytowka(),
                ),
              )
            },
          ),
          ListTile(
            leading: Icon(
              Icons.mediation,
              color: Colors.blueAccent,
            ),
            title: Text(
              'Social media',
              style: TextStyle(
                color: Colors.yellow,
                fontSize: 30,
              ),
            ),
            onTap: () => {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => Socialmedia(),
                ),
              )
            },
          ),
          ListTile(
            leading: Icon(
              Icons.youtube_searched_for,
              color: Colors.blueAccent,
            ),
            title: Text(
              'True or False',
              style: TextStyle(
                color: Colors.yellow,
                fontSize: 30,
              ),
            ),
            onTap: () => {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => Truefalse(),
                ),
              ),
            },
          ),
          ListTile(
            leading: Icon(
              Icons.money_outlined,
              color: Colors.blueAccent,
            ),
            title: Text(
              'To Do',
              style: TextStyle(
                color: Colors.yellow,
                fontSize: 30,
              ),
            ),
            onTap: () => {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => ToDo(),
                ),
              ),
            },
          ),
          ListTile(
            leading: Icon(
              Icons.question_answer,
              color: Colors.blueAccent,
            ),
            title: Text(
              'About me',
              style: TextStyle(
                color: Colors.yellow,
                fontSize: 30,
              ),
            ),
            onTap: () => {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => Aboutme(),
                ),
              )
            },
          ),
          ListTile(
            leading: Icon(
              Icons.youtube_searched_for,
              color: Colors.blueAccent,
            ),
            title: Text(
              'check',
              style: TextStyle(
                color: Colors.yellow,
                fontSize: 30,
              ),
            ),
            onTap: () => {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => checkApp(),
                ),
              ),
            },
          ),
        ],
      ),
    );
  }
}
