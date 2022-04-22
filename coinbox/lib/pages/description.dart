import 'package:coinbox/pages/create.dart';
import 'package:coinbox/pages/user.dart';
import 'package:coinbox/widgets/cards.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:coinbox/const/const.dart';
import 'package:coinbox/pages/description.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:coinbox/MyApp.dart';

class descriptionWidget extends StatefulWidget {
  String goal = '', sum = '', percent_1 = '', description = '';
  double percent_0 = 0;

  descriptionWidget(
      {Key? key,
      required this.goal,
      required this.sum,
      required this.percent_0,
      required this.percent_1,
      required this.description})
      : super(key: key); //firebace, git, dev ops

  @override
  State<descriptionWidget> createState() => _descriptionWidgetState(
      this.goal, this.sum, this.percent_0, this.percent_1, this.description);
}

class _descriptionWidgetState extends State<descriptionWidget> {
  String goal = '', sum = '', percent_1 = '', description = '';
  double percent_0 = 0;
  var colors = Color.fromRGBO(255, 99, 99, 1);
  var tilecolors = Color.fromRGBO(255, 255, 255, 0.5);
  var progresscolors = Color.fromRGBO(255, 255, 255, 0.5);

  _descriptionWidgetState(
      this.goal, this.sum, this.percent_0, this.percent_1, this.description);

  @override
  Widget build(BuildContext context) {
    if (percent_0 > 0 && percent_0 < 0.5) {
      colors = Color.fromRGBO(255, 199, 54, 1);
    } else if (percent_0 >= 0.5) {
      colors = Color.fromRGBO(0, 146, 255, 1);
    }
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
                child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 20, 10, 100),
              child: Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                color: colors,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(children: [
                        Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 10, 0, 30),
                            child: Text(goal,
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                    fontFamily: 'Montserrat_Bold'))),
                        Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(100, 10, 0, 30),
                            child: Text(sum + ' рб',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                    fontFamily: 'Montserrat_Bold'))),
                      ]),
                      Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 210, 0),
                          child: Text('Описание',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Montserrat_bold'))),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                        child: Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color: tilecolors,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10, 10, 10, 10),
                              child: Text(description),
                            )),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(25, 5, 25, 10),
                        child: LinearPercentIndicator(
                          percent: percent_0,
                          width: 306,
                          lineHeight: 23,
                          animation: true,
                          progressColor: progresscolors,
                          backgroundColor: tilecolors,
                          center: Text(
                            percent_1,
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Montserrat_Bold'),
                          ),
                          barRadius: Radius.circular(8),
                          padding: EdgeInsets.zero,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ))));
  }
}
