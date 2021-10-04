import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:ui_app/widgets/custom_address.dart';

class ListAnnouncements extends StatelessWidget {
  const ListAnnouncements({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Text('New Schedule'),
          subtitle: Text('Monday Flutter Class 7:30 - 8:30'),
          // trailing: GestureDetector(
          //   child: Icon(Icons.edit_outlined),
          // onTap: () {
          //   Get.to(CustomAddress(
          //     isEdit: true,
          //   ));
          // },
          // ),
        )
      ],
    );
  }
}
