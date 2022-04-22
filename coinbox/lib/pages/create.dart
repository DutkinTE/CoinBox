import 'package:coinbox/MyApp.dart';
import 'package:flutter/material.dart';
import 'package:coinbox/widgets/cards.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:coinbox/const/const.dart';
import 'package:coinbox/pages/user.dart';

class CreateWidget extends StatefulWidget {
  const CreateWidget({Key? key}) : super(key: key); //firebace, git, dev ops

  @override
  State<CreateWidget> createState() => _CreateWidgetState();
}

class _CreateWidgetState extends State<CreateWidget> {
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
              title: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                child: Text(
                  'CoinBox',
                  style: TextStyle(fontSize: 35, fontFamily: 'Mitr_Bold'),
                ),
              ),
              actions: [
                IconButton(
                  icon: Icon(
                    Icons.search_sharp,
                    color: Colors.white,
                    size: 40,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(
                    Icons.person_sharp,
                    color: Colors.white,
                    size: 40,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => userWidget()));
                  },
                ),
              ],
            ),
            body: Stack(children: [
              Center(
                child: Column(children: [
                  Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 50, 20, 0),
                      child: Container(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(10, 10, 10, 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromRGBO(0, 146, 255, 0.5),
                          ),
                          child: Column(children: [
                            Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10, 10, 10, 20),
                                child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    child: TextField(
                                      controller: nameController,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: 'Сумма',
                                        labelStyle: TextStyle(
                                            color: Color.fromRGBO(
                                                127, 127, 127, 1),
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
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10, 10, 10, 0),
                                child: TextField(
                                  controller: nameController_1,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Название',
                                  ),
                                  onChanged: (text) {
                                    setState(() {
                                      fullName = text;
                                    });
                                  },
                                )),
                            Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10, 10, 10, 0),
                                child: TextField(
                                  controller: nameController_2,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Описание',
                                  ),
                                  onChanged: (text) {
                                    setState(() {
                                      description = text;
                                    });
                                  },
                                ))
                          ]))),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(150, 10, 0, 0),
                    child: ElevatedButton(
                      onPressed: () {
                        cardList.insert(0, {
                          'percent_0': 0.0,
                          'percent_1': '0%',
                          'goal': fullName,
                          'sum': sum
                        });
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => MyApp()));
                      },
                      child: Text('Создать'),
                    ),
                  ),
                ]),
              )
            ])));
  }
}
