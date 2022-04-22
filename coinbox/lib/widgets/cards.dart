import 'package:coinbox/pages/description.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

Widget Cards(
    {String? goal,
    String? widget,
    double? percent_0,
    String? percent_1,
    String? sum,
    onTap}) {
  var colors = Color.fromRGBO(255, 99, 99, 1);
  var tilecolors = Color.fromRGBO(255, 255, 255, 0.5);
  var progresscolors = Color.fromRGBO(255, 255, 255, 0.5);
  if (percent_0! > 0 && percent_0 < 0.5) {
    colors = Color.fromRGBO(255, 199, 54, 1);
  } else if (percent_0 >= 0.5) {
    colors = Color.fromRGBO(0, 146, 255, 1);
  }

  return Padding(
    padding: EdgeInsetsDirectional.fromSTEB(10, 20, 10, 0),
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
                  padding: EdgeInsetsDirectional.fromSTEB(30, 10, 0, 30),
                  child: Text(goal!,
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontFamily: 'Montserrat_Bold'))),
              Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(50, 10, 0, 30),
                  child: Text(sum! + ' рб',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontFamily: 'Montserrat_Bold'))),
            ]),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(25, 10, 0, 10),
              child: LinearPercentIndicator(
                percent: percent_0,
                width: 305,
                lineHeight: 23,
                animation: true,
                progressColor: progresscolors,
                backgroundColor: tilecolors,
                center: Text(
                  percent_1!,
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'Montserrat_Bold'),
                ),
                barRadius: Radius.circular(8),
                padding: EdgeInsets.zero,
              ),
            ),
            InkWell(
              onTap: onTap,
              child: Slidable(
                actionPane: const SlidableScrollActionPane(),
                child: ListTile(
                  title: Text(
                    'Подробнее',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontFamily: 'Montserrat_Bold'),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 20,
                  ),
                  tileColor: tilecolors,
                  dense: false,
                ),
              ),
            )
          ],
        ),
      ),
    ),
  );
}
