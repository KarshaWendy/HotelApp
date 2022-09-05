// ignore_for_file: file_names, unnecessary_new

import 'package:flutter/material.dart';

class AdminPanel extends StatefulWidget {
  const AdminPanel({Key? key}) : super(key: key);

  @override
  _AdminPanelState createState() => _AdminPanelState();
}

class _AdminPanelState extends State<AdminPanel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome Candice"),
        elevation: .1,
        backgroundColor: const Color.fromRGBO(49, 87, 110, 1.0),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 2.0),
        child: GridView.count(
          crossAxisCount: 2,
          padding: const EdgeInsets.all(3.0),
          children: <Widget>[
            makeDashboardItem("Bookings", Icons.book_online),
            makeDashboardItem("Approvals", Icons.approval_outlined),
            makeDashboardItem("Payments", Icons.money),
            makeDashboardItem("Reports", Icons.menu_book),
            makeDashboardItem("History", Icons.history),
            makeDashboardItem("Activities", Icons.local_activity)
          ],
        ),
      ),
    );
  }

  Card makeDashboardItem(String title, IconData icon) {
    return Card(
        elevation: 1.0,
        margin: const EdgeInsets.all(8.0),
        child: Container(
          decoration: const BoxDecoration(color: Color.fromRGBO(220, 220, 220, 1.0)),
          child: new InkWell(
            onTap: () {},
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              verticalDirection: VerticalDirection.down,
              children: <Widget>[
                const SizedBox(height: 50.0),
                Center(
                    child: Icon(
                  icon,
                  size: 40.0,
                  color: Colors.black,
                )),
                const SizedBox(height: 20.0),
                new Center(
                  child: new Text(title,
                      style:
                          const TextStyle(fontSize: 18.0, color: Colors.black)),
                )
              ],
            ),
          ),
        ));
  }
}
