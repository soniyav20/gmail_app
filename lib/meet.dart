import 'package:flutter/material.dart';
import 'package:gmail_clone/bottombar.dart';
import 'package:gmail_clone/drawer.dart';

class Meet extends StatefulWidget {
  const Meet({Key? key}) : super(key: key);

  @override
  _MeetState createState() => _MeetState();
}

class _MeetState extends State<Meet> {
  GlobalKey<ScaffoldState> _sca = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      drawer: DrawerTop(),
      key: _sca,
      body: Column(
        children: [
          Container(
              margin: EdgeInsets.all(10.0),
              height: 50.0,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40.0)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        _sca.currentState!.openDrawer();
                      },
                      icon: Icon(Icons.menu)),
                  Text(
                    'Meet',
                    style: TextStyle(fontSize: 30.0),
                  ),
                  CircleAvatar(
                    radius: 18.0,
                    backgroundColor: Colors.brown,
                    child: Text('S'),
                  ),
                ],
              )),
          SizedBox(
            height: 20.0,
          ),
          Row(
            children: [
              SizedBox(
                width: 10.0,
              ),
              Expanded(
                child: MaterialButton(
                    height: 40.0,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'New meeting',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    color: Colors.blue[900],
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24.0))),
              ),
              SizedBox(
                width: 10.0,
              ),
              Expanded(
                child: MaterialButton(
                    height: 40.0,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Join a meeting',
                          style: TextStyle(color: Colors.blue[900]),
                        )
                      ],
                    ),
                    color: Colors.white,
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24.0))),
              ),
              SizedBox(
                width: 10.0,
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(60.0, 40.0, 60.0, 0.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 100.0,
                  child: Image(
                    image: AssetImage('assets/hi.jpeg'),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Get a link that you can share',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 26.0),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Tap \'New meeting\' to get a link that you can send to people that you want to meet with',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16.0),
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomBar(),
    ));
    ;
  }
}
