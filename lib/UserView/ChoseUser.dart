// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:hotel_smart/Extras/NavBar.dart';

import '../AdminView/AdminPanel.dart';

class ChooseUser extends StatefulWidget {
  const ChooseUser({Key? key}) : super(key: key);

  @override
  _ChooseUserState createState() => _ChooseUserState();
}

class _ChooseUserState extends State<ChooseUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children:[
        Container(
          height: 300,
                margin: const EdgeInsets.fromLTRB(
                            0.0, 0.0, 0.0, 0.0),
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Image.asset('assets/images/outside.png'),
                ),
              ),
              const Center(child: Padding(
                padding: EdgeInsets.all(5.0),
                child: Text("A little vacation and getting to unwind is very important.\n                        Well....How about a VACAY?",
                style:TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.blueAccent)),
              )
              ,),
       Padding(
                        padding: const EdgeInsets.fromLTRB(20, 50, 5, 10),
                        child: SizedBox(
                          height: 20,
                          width: 80,
                          child: ElevatedButton(
                            child: const Text(
                              "User",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14.0,
                                color: Colors.white,
                              ),
                            ),
                            onPressed: () {
                          Navigator.push(
                           context,
                           MaterialPageRoute(builder: (context) => const HomePage()),
                           );
                        },
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(
                                    const Color(0xFF2BB9AD)),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(45.0),
                                ))),
                          ),
                        ),
                      ),
                       Padding(
                        padding: const EdgeInsets.fromLTRB(20, 20, 5, 10),
                        child: SizedBox(
                          height: 20,
                          width: 80,
                          child: ElevatedButton(
                            child: const Text(
                              "Admin",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14.0,
                                color: Colors.white,
                              ),
                            ),
                            onPressed: () {
                          Navigator.push(
                           context,
                           MaterialPageRoute(builder: (context) => const AdminPanel()),
                           );
                        },
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(
                                    const Color(0xFF2BB9AD)),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(45.0),
                                ))),
                          ),
                        ),
                      ),])
    );
  }
}
