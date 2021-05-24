import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:marquee/marquee.dart';
import 'dart:math';

class AnnouncementItem extends StatefulWidget {
  String title;
  List announcement;
  Color color;
  final Function onPressed;

  AnnouncementItem({
    this.title,
    this.announcement,
    this.color,
    this.onPressed,
  });

  @override
  _AnnouncementItemState createState() => _AnnouncementItemState();
}

class _AnnouncementItemState extends State<AnnouncementItem> {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
        color: widget.color,
        child: InkWell( onTap:(){widget.onPressed();},
          child: Container(
            height: 360,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 20.0, bottom: 15.0),
                  child: Container(
                    child: Text(
                      widget.title,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 19.0,
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(top: 5.0),

                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: Container(
                          margin: EdgeInsets.only(left: 50.0),
                          color: Colors.white,
                          height: 1.5,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align( alignment: Alignment.centerLeft,
                      child: Text('Latest Updates',style: TextStyle(color: Colors.white),)),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30.0, left: 15.0, right: 5.0),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 220.0,
                        child: ListView.builder(
                            //physics: const NeverScrollableScrollPhysics(),
                            itemCount: widget.announcement.length,
                            itemBuilder: (BuildContext ctxt, int i) {
                              return Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Icon(
                                    FontAwesomeIcons.checkCircle,
                                    color: Colors.white,
                                    size: 14.0,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10.0),
                                  ),
                                  Flexible(
                                    child: Container(
                                      height: 30,
                                      child: Marquee(
                                        text:
                                            widget.announcement[i],
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  )
                                ],
                              );
                            }),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}