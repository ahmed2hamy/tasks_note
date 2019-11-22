//import 'package:flutter/material.dart';
//
//import '../constants.dart';
//import 'add_task_screen.dart';
//
//class TestScreen extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      floatingActionButton: FloatingActionButton(
//        onPressed: () {
//          showModalBottomSheet(
//              context: context, builder: (context) => AddTask());
//        },
//        child: Icon(Icons.add),
//      ),
//      backgroundColor: Colors.lightBlueAccent,
//      body: CustomScrollView(
//        slivers: <Widget>[
//          SliverAppBar(
//            title: FlexibleSpaceBar(
//              title: Container(
//                padding: EdgeInsets.only(top: 60, left: 20, right: 20, bottom: 20),
//                child: Column(
//                  crossAxisAlignment: CrossAxisAlignment.start,
//                  children: <Widget>[
//                    CircleAvatar(
//                      child: Icon(
//                        Icons.list,
//                        color: Colors.lightBlueAccent,
//                        size: 40,
//                      ),
//                      backgroundColor: Colors.white,
//                      radius: 40,
//                    ),
//                    SizedBox(height: 20),
//                    Text('Tasks Note', style: kTitleText),
//                    Text('12 Tasks', style: kBodyText),
//                  ],
//                ),
//              ),
//            ),
//          ),
//        ],
//      ),
//    );
//  }
//}
