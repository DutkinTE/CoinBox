import 'package:coinbox/pages/create.dart';
import 'package:coinbox/pages/description.dart';
import 'package:coinbox/pages/user.dart';
import 'package:coinbox/widgets/cards.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:coinbox/const/const.dart';
import 'package:coinbox/pages/personcard.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key); //firebace, git, dev ops

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List CardList = cardList;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              leading: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                  child: Image.asset(
                      'assets/Снимок экрана 2022-04-22 в 12.43.24.png')),
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
            body: Center(
                child: Stack(children: [
              Expanded(
                child: ListView.builder(
                    itemCount: cardList.length,
                    itemBuilder: (context, index) => Cards(
                        percent_0: cardList[index]['percent_0'],
                        percent_1: cardList[index]['percent_1'],
                        goal: cardList[index]['goal'],
                        sum: cardList[index]['sum'],
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => descriptionWidget(
                                        percent_0: cardList[index]['percent_0'],
                                        percent_1: cardList[index]['percent_1'],
                                        goal: cardList[index]['goal'],
                                        sum: cardList[index]['sum'],
                                        description: cardList[index]
                                            ['description'],
                                      )));
                        })),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(310, 650, 10, 10),
                child: FloatingActionButton(
                  elevation: 3,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CreateWidget()));
                  },
                  child: const Icon(Icons.add),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(245, 650, 10, 10),
                child: FloatingActionButton(
                  elevation: 3,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PersonCard()));
                  },
                  child: const Icon(Icons.people_alt),
                ),
              ),
            ]))));
  }
}
