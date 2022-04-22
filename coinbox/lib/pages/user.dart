import 'package:coinbox/MyApp.dart';
import 'package:flutter/material.dart';

import 'package:coinbox/widgets/cards.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class userWidget extends StatefulWidget {
  const userWidget({Key? key}) : super(key: key); //firebace, git, dev ops

  @override
  State<userWidget> createState() => _userWidgetState();
}

class _userWidgetState extends State<userWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController nameController_1 = TextEditingController();
  TextEditingController nameController_2 = TextEditingController();
  String fullName = '';
  String description = '';
  String sum = '';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              leading: IconButton(
                icon: Icon(
                  Icons.keyboard_arrow_left,
                  color: Colors.white,
                  size: 40,
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyApp()));
                },
              ),
              title: Text(
                'CoinBox',
                style: TextStyle(fontSize: 35, fontFamily: 'Mitr_Bold'),
              ),
              centerTitle: true,
            ),
            body: Center(
                child: Column(children: [
              Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 20),
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Colors.white,
                      ),
                      child: TextField(
                        controller: nameController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Логин',
                          labelStyle: TextStyle(
                              color: Color.fromRGBO(127, 127, 127, 1),
                              fontFamily: 'Mitr',
                              fontSize: 20),
                        ),
                        onChanged: (text) {
                          setState(() {
                            sum = text;
                          });
                        },
                      ))),
              Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                  child: TextField(
                    controller: nameController_1,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'ФИО',
                    ),
                    onChanged: (text) {
                      setState(() {
                        fullName = text;
                      });
                    },
                  )),
            ]))));
  }
}
