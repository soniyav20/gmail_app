import 'package:flutter/material.dart';
import 'package:gmail_clone/bottombar.dart';
import 'package:gmail_clone/drawer.dart';

class Spaces extends StatefulWidget {
  const Spaces({Key? key}) : super(key: key);

  @override
  _SpacesState createState() => _SpacesState();
}

class _SpacesState extends State<Spaces> {
  GlobalKey<ScaffoldState> _sca = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          drawer: DrawerTop(),
          key: _sca,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                                hintText: 'Search in spaces',
                                hintStyle: TextStyle(color: Colors.black87))),
                      ),
                      CircleAvatar(
                        radius: 18.0,
                        backgroundColor: Colors.brown,
                        child: Text('S'),
                      ),
                    ],
                  )),
              SizedBox(
                height: 16.0,
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Text(
                  'Spaces',
                  style: TextStyle(fontSize: 12.0),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Spaces are where team magic happens. Find or create spaces using the new space button.',
                  style: TextStyle(fontSize: 16.0),
                ),
              )
            ],
          ),
          bottomNavigationBar: BottomBar(),
          floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
          floatingActionButton: MaterialButton(
              height: 50.0,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.add),
                  SizedBox(
                    width: 4.0,
                  ),
                  Text('New space')
                ],
              ),
              color: Colors.lightBlue[100],
              onPressed: () {},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0)))),
    );
    ;
  }
}
