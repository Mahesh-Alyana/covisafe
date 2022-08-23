import 'package:flutter/material.dart';

class DateDay extends StatefulWidget {
  DateDay({Key? key, required this.is_select}) : super(key: key);
  bool is_select = false;
  @override
  _DateDayState createState() => _DateDayState();
}

class _DateDayState extends State<DateDay> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        width: height * 0.1,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: widget.is_select
              ? const Color(0xff18A0FB)
              : const Color(0xff38354b),
        ),
        padding: const EdgeInsets.only(
          top: 7,
          bottom: 6,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "20 Nov\nWED",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xd8ffffff),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
