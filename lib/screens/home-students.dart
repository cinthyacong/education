import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:education_app/screens/student-profile.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:education_app/widget/side-bar.dart';
// import 'package:project_3/custom-widget/custom_sidebar.dart';
// import 'package:education_app/widget/list-announcements.dart';

class HomeStudentScreen extends StatelessWidget {
  const HomeStudentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          titleSpacing: 0.0,
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            IconButton(
              icon: Icon(
                Icons.settings,
                color: Colors.blueGrey.shade200,
              ),
              onPressed: () => Get.to(EditProfileScreen()),
            ),
          ],
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(
                            Icons.trip_origin,
                            color: Colors.greenAccent,
                            size: 12.0,
                          ),
                          SizedBox(height: 4.0),
                          Text('ID : 123345',
                              style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.blueGrey.shade300))
                        ],
                      ),
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
                    child: Text("Sessions",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold))),
              ),
              Container(
                child: SfCalendar(
                  view: CalendarView.week,
                  dataSource: MeetingDataSource(_getDataSource()),
                  // by default the month appointment display mode set as Indicator, we can
                  // change the display mode as appointment using the appointment display
                  // mode property
                  monthViewSettings: const MonthViewSettings(
                      appointmentDisplayMode:
                          MonthAppointmentDisplayMode.appointment),
                ),
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
                    child: Text("Announcements",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold))),
              ),
              ListTile(
                title: Row(
                  children: [
                    Text("Fail Teams"),
                  ],
                ),
                subtitle: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi facilisis elit vel lacus ornare, at tincidunt lacus accumsan. Proin lobortis tincidunt turpis, quis sodales quam condimentum eget. Phasellus tortor urna, imperdiet a facilisis nec, congue quis odio. Proin mi ante, consectetur in tristique vestibulum, molestie id diam. "),
                isThreeLine: true,
              ),
              const Divider(
                // height: ,
                thickness: 3,
                indent: 20,
                endIndent: 20,
              ),
              ListTile(
                title: Row(
                  children: [
                    Text("Item Lost"),
                  ],
                ),
                subtitle: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi facilisis elit vel lacus ornare, at tincidunt lacus accumsan. Proin lobortis tincidunt turpis, quis sodales quam condimentum eget. Phasellus tortor urna, imperdiet a facilisis nec, congue quis odio. Proin mi ante, consectetur in tristique vestibulum, molestie id diam. "),
                isThreeLine: true,
              ),
            ],
          ),
        ));
  }
}

List<Meeting> _getDataSource() {
  final List<Meeting> meetings = <Meeting>[];
  final DateTime today = DateTime.now();
  final DateTime startTime =
      DateTime(today.year, today.month, today.day, 9, 0, 0);
  final DateTime endTime = startTime.add(const Duration(hours: 2));
  meetings.add(Meeting(
      'Conference', startTime, endTime, const Color(0xFF0F8644), false));
  return meetings;
}

class MeetingDataSource extends CalendarDataSource {
  /// Creates a meeting data source, which used to set the appointment
  /// collection to the calendar
  MeetingDataSource(List<Meeting> source) {
    appointments = source;
  }

  @override
  DateTime getStartTime(int index) {
    return _getMeetingData(index).from;
  }

  @override
  DateTime getEndTime(int index) {
    return _getMeetingData(index).to;
  }

  @override
  String getSubject(int index) {
    return _getMeetingData(index).eventName;
  }

  @override
  Color getColor(int index) {
    return _getMeetingData(index).background;
  }

  @override
  bool isAllDay(int index) {
    return _getMeetingData(index).isAllDay;
  }

  Meeting _getMeetingData(int index) {
    final dynamic meeting = appointments![index];
    late final Meeting meetingData;
    if (meeting is Meeting) {
      meetingData = meeting;
    }

    return meetingData;
  }
}

/// Custom business object class which contains properties to hold the detailed
/// information about the event data which will be rendered in calendar.
class Meeting {
  /// Creates a meeting class with required details.
  Meeting(this.eventName, this.from, this.to, this.background, this.isAllDay);

  /// Event name which is equivalent to subject property of [Appointment].
  String eventName;

  /// From which is equivalent to start time property of [Appointment].
  DateTime from;

  /// To which is equivalent to end time property of [Appointment].
  DateTime to;

  /// Background which is equivalent to color property of [Appointment].
  Color background;

  /// IsAllDay which is equivalent to isAllDay property of [Appointment].
  bool isAllDay;
}
