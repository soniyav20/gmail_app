import 'package:flutter/material.dart';

class DrawerTop extends StatefulWidget {
  const DrawerTop({Key? key}) : super(key: key);

  @override
  _DrawerTopState createState() => _DrawerTopState();
}

class _DrawerTopState extends State<DrawerTop> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          SizedBox(
              height: 80.0,
              child: ListTile(
                title: Text(
                  'Gmail',
                  style: TextStyle(fontSize: 24.0, color: Colors.red),
                ),
              )),
          ListTile(
            leading: CircleAvatar(
              radius: 8.0,
              backgroundColor: Colors.green[800],
            ),
            title: Text('Active'),
            trailing: Icon(Icons.arrow_drop_down),
          ),
          ListTile(
            leading: Icon(Icons.create),
            title: Text('Add a status'),
          ),
          ListTile(
            leading: Icon(Icons.all_inbox),
            title: Text('All inboxes'),
          ),
          ListTile(
            leading: Icon(Icons.inbox_rounded),
            title: Text('Inbox'),
            trailing: Text('3'),
          ),
          ListTile(
            leading: Icon(Icons.star_border),
            title: Text('Starred'),
          ),
          ListTile(
            title: Text('All Labels'),
          ),
          ListTile(
            leading: Icon(Icons.star_border),
            title: Text('Starred'),
          ),
          ListTile(
            leading: Icon(Icons.access_time),
            title: Text('Snoozed'),
          ),
          ListTile(
              leading: Icon(Icons.label_important_outline),
              title: Text('Important'),
              trailing: Text('3')),
          ListTile(
            leading: Icon(Icons.send),
            title: Text('Sent'),
          ),
          ListTile(
            leading: Icon(Icons.schedule_send),
            title: Text('Scheduled'),
          ),
          ListTile(
            leading: Icon(Icons.outbox),
            title: Text('Outbox'),
          ),
          ListTile(
            leading: Icon(Icons.insert_drive_file_outlined),
            title: Text('Drafts'),
          ),
          ListTile(
              leading: Icon(Icons.mail_outline_outlined),
              title: Text('All mail'),
              trailing: Text('3')),
          ListTile(
            leading: Icon(Icons.report_gmailerrorred_sharp),
            title: Text('Spam'),
          ),
          ListTile(
            leading: Icon(Icons.delete_outline_sharp),
            title: Text('Bin'),
          ),
          ListTile(
            title: Text('Google apps'),
          ),
          ListTile(
            leading: Icon(Icons.calendar_today),
            title: Text('Calendar'),
          ),
          ListTile(
            leading: Icon(Icons.account_circle_outlined),
            title: Text('Contacts'),
          ),
          SizedBox(
            height: 10.0,
          ),
          ListTile(
            leading: Icon(Icons.settings_outlined),
            title: Text('Settings'),
          ),
          ListTile(
            leading: Icon(Icons.help_outline_outlined),
            title: Text('Help and feedback'),
          ),
        ],
      ),
    );
  }
}
