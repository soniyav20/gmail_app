import 'package:flutter/material.dart';
import 'package:gmail_clone/bottombar.dart';
import 'package:gmail_clone/drawer.dart';
import 'package:gmail_clone/mail.dart';

var ind = 0;
void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(40.0)),
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            _sca.currentState!.openDrawer();
                          },
                          icon: Icon(Icons.menu)),
                      SizedBox(
                        width: 280.0,
                        child: TextFormField(
                            cursorWidth: 40.0,
                            obscureText: false,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                fillColor: Colors.grey,
                                focusColor: Colors.grey,
                                hintText: 'Search in emails',
                                hintStyle: TextStyle(color: Colors.black87))),
                      ),
                      CircleAvatar(
                        radius: 18.0,
                        backgroundColor: Colors.brown,
                        child: Text('S'),
                      ),
                    ],
                  )),
              SingleChildScrollView(
                  child: Padding(
                padding: EdgeInsets.fromLTRB(16.0, 0, 16.0, 0),
                child: Column(children: [
                  Mail(),
                  SizedBox(
                    height: 8.0,
                  ),
                  Mail(),
                  SizedBox(
                    height: 8.0,
                  ),
                  Mail(),
                  SizedBox(
                    height: 8.0,
                  ),
                  Mail(),
                  SizedBox(
                    height: 8.0,
                  ),
                ]),
              )),
            ],
          ),
          bottomNavigationBar: BottomBar(),
          floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
          floatingActionButton: MaterialButton(
              height: 50.0,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.create_outlined),
                  SizedBox(
                    width: 4.0,
                  ),
                  Text('Compose')
                ],
              ),
              color: Colors.lightBlue[100],
              onPressed: () {},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0)))),
    );
  }
}
