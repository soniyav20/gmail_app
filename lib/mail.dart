import 'package:flutter/material.dart';

class Mail extends StatefulWidget {
  const Mail({Key? key}) : super(key: key);

  @override
  _MailState createState() => _MailState();
}

class _MailState extends State<Mail> {
  var s = Icons.star;
  var sa = (Icons.star_border);
  var sn = (Icons.star_border);
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      CircleAvatar(
        radius: 20.0,
        backgroundColor: Colors.brown,
        child: Text('S'),
      ),
      SizedBox(
        width: 10.0,
      ),
      SizedBox(
        width: 10.0,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Soniya Vijay',
            style: TextStyle(fontSize: 20.0),
          ),
          Text(
            'Holiday Announcement - Reg',
            style: TextStyle(fontSize: 16),
          ),
          Text(
            'Dear Student, Holiday is declared due to he..',
            style: TextStyle(fontSize: 12.0),
          )
        ],
      ),
      SizedBox(
        width: 8.0,
      ),
      Column(
        children: [
          Text('12 Nov'),
          IconButton(
              onPressed: () {
                setState(() {
                  if (sa == s) {
                    sa = sn;
                  } else {
                    sa = s;
                  }
                });
              },
              icon: Icon(sa))
        ],
      ),
    ]);
  }
}
