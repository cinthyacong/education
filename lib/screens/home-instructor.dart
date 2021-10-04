import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:education_app/screens/student-profile.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:education_app/widget/side-bar.dart';

class HomeInstructorScreen extends StatelessWidget {
  const HomeInstructorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // drawer: CustomSideBar(),
        backgroundColor: Colors.white,
        appBar: AppBar(
          titleSpacing: 0.0,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              SizedBox(
                width: 25,
              ),
              Container(
                  margin: EdgeInsets.fromLTRB(0, 8, 10, 8),
                  child: CircleAvatar(
                    backgroundImage: ExactAssetImage('assets/user_profile.jpg'),
                  ),
                  decoration: new BoxDecoration(
                    border: new Border.all(
                      color: Colors.white,
                      width: 1.0,
                    ),
                    borderRadius:
                        new BorderRadius.all(new Radius.circular(50.0)),
                  )),
              Container(
                // margin: EdgeInsets.fromLTRB(0, 0, 130, 0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(right: 2.0),
                        child: Text(
                          'Kelly Jonhson',
                          style: TextStyle(
                              fontSize: 12.0, color: Colors.blueGrey.shade300),
                        ),
                      ),
                      SizedBox(height: 4.0),
                    ]),
              )
            ],
          ),
        ),
        drawer: CustomSideBar(),

        // centerTitle: true,

        body: Container(
          padding: EdgeInsets.only(left: 15.00, right: 15.00),
          child: ListView(
            children: [
              SizedBox(
                height: 15.00,
              ),
              Container(
                width: 100,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.red.shade800,
                  border: Border.all(
                    color: Colors.red.shade800,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                    child: Text("New Sessions",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold))),
              ),
              new ListTile(
                leading: const Icon(Icons.title),
                title: new TextField(
                  decoration: new InputDecoration(
                    hintText: "Title",
                  ),
                ),
              ),
              new ListTile(
                leading: const Icon(Icons.date_range_rounded),
                title: new TextField(
                  decoration: new InputDecoration(
                    hintText: "Date",
                  ),
                ),
              ),
              new ListTile(
                leading: const Icon(Icons.timer_rounded),
                title: new TextField(
                  decoration: new InputDecoration(
                    hintText: "Time Start",
                  ),
                ),
              ),
              new ListTile(
                leading: const Icon(Icons.timer_rounded),
                title: new TextField(
                  decoration: new InputDecoration(
                    hintText: "Time End",
                  ),
                ),
              ),
              new ListTile(
                leading: const Icon(Icons.people_alt_rounded),
                title: new TextField(
                  decoration: new InputDecoration(
                    hintText: "Participants",
                  ),
                ),
              ),
              SizedBox(height: 15.0),
              Container(
                width: 100,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.red.shade800,
                  border: Border.all(
                    color: Colors.red.shade800,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                    child: Text("New Announcement",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold))),
              ),
              new ListTile(
                leading: const Icon(Icons.title),
                title: new TextField(
                  decoration: new InputDecoration(
                    hintText: "New Announcement",
                  ),
                ),
              ),
              new ListTile(
                leading: const Icon(Icons.description),
                title: new TextField(
                  decoration: new InputDecoration(
                    hintText: "Description",
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
