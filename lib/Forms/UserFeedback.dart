
// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'SubComponents/UserReview.dart';

class UserFeedback extends StatefulWidget {
  const UserFeedback({Key? key}) : super(key: key);

  @override
  _UserFeedbackState createState() => _UserFeedbackState();
}

class _UserFeedbackState extends State<UserFeedback> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: ListView(children: [
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: InkWell(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                      alignment: Alignment.topLeft,
                      child: Container(
                            alignment: Alignment.topLeft,
                            child: const SizedBox(
                                child: Icon(Icons.arrow_back_ios),
                                height: 30,
                                width: 30)),),
                ),
              ),
              UserReview(),
            ])));
  }
}
