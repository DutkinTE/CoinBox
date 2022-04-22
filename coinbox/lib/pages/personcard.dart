import 'package:coinbox/pages/create.dart';
import 'package:coinbox/pages/user.dart';
import 'package:coinbox/widgets/cards.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:coinbox/const/const.dart';
import 'package:coinbox/MyApp.dart';
import 'package:coinbox/pages/description.dart';

class PersonCard extends StatefulWidget {
  const PersonCard({Key? key}) : super(key: key); //firebace, git, dev ops

  @override
  State<PersonCard> createState() => _PersonCardState();
}

class _PersonCardState extends State<PersonCard> {
  List CardList = cardList_pers;

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
            body: Center(
                child: Stack(children: [
              Expanded(
                  child: ListView.builder(
                      itemCount: CardList.length,
                      itemBuilder: (context, index) => Cards(
                          percent_0: CardList[index]['percent_0'],
                          percent_1: CardList[index]['percent_1'],
                          goal: CardList[index]['goal'],
                          sum: CardList[index]['sum'],
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => descriptionWidget(
                                          percent_0: cardList[index]
                                              ['percent_0'],
                                          percent_1: cardList[index]
                                              ['percent_1'],
                                          goal: cardList[index]['goal'],
                                          sum: cardList[index]['sum'],
                                          description: cardList[index]
                                              ['description'],
                                        )));
                          }))),
            ]))));
  }
}
