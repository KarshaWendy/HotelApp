// ignore_for_file: file_names, unused_element, unused_local_variable, unused_import

import 'package:flutter/cupertino.dart';
import 'dart:io';
import 'package:http/http.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hotel_smart/Authentication/SubComponents/TermsandConditions.dart';

import '../Authentication/Login.dart';
import '../Forms/UserFeedback.dart';
import 'SubComponents/CustomeImage.dart';
import 'SubComponents/EditProfile.dart';
import 'SubComponents/PastBookings.dart';
import 'SubComponents/SettingItems.dart';

//import 'SubComponents/Settings.dart';
class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  var profile = {
    "name": "Ricky V",
    "image": "https://avatars.githubusercontent.com/u/86506519?v=4",
    "email": "g254fly@gmail.com"
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.white,
              pinned: true,
              snap: true,
              floating: true,
              title: getAppBar(),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => buildBody(),
                childCount: 1,
              ),
            )
          ],
        ));
  }

  Widget getAppBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Profile",
                style: TextStyle(
                    color: Color.fromARGB(255, 15, 15, 15),
                    fontSize: 24,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
        Column(children: [
          InkWell(
            onTap: () {},
            child: Container(
              // margin: const EdgeInsets.only(right: 15),
              alignment: Alignment.topRight,
              child: IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/edit.svg",
                  width: 18,
                  height: 18,
                ),
                iconSize: 55,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const EditProfile()),
                  );
                },
              ),
            ),
          ),
        ]),
      ],
    );
  }

  Widget buildBody() {
    //String serverResponse = 'Server response';
    return SingleChildScrollView(
      padding: const EdgeInsets.only(right: 20, top: 10),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              children: <Widget>[
                CustomImage(
                  profile["image"]!,
                  width: 80,
                  height: 80,
                  radius: 50,
                ),
                const SizedBox(
                  height: 12,
                ),
                const Text(
                  "Ricky V",
                  style: TextStyle(
                    color: Color(0xFF333333),
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "GV254@gmail.com",
                  style: TextStyle(
                    color: Color(0xFF333333),
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 40),
          SettingItem(
              title: "General Settings",
              leadingIcon: Icons.settings,
              leadingIconColor: const Color.fromARGB(255, 38, 112, 173),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const UserFeedback()),
                );
              }),
          const SizedBox(height: 10),
          SettingItem(
              title: "History",
              leadingIcon: Icons.history,
              leadingIconColor: const Color.fromARGB(255, 38, 112, 173),
              onTap: () {
                const PastBookings();
              }),
          const SizedBox(height: 10),
          // Padding(
          //       padding: const EdgeInsets.all(8.0),
          //       child: Text(serverResponse),
          //     ),

          // const SizedBox(height: 10),
          SettingItem(
              title: "Privacy",
              leadingIcon: Icons.privacy_tip_outlined,
              leadingIconColor: const Color.fromARGB(255, 38, 112, 173),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TermsAndConditions()),
                );
              }),
          const SizedBox(height: 10),
          SettingItem(
            title: "Log Out",
            leadingIcon: Icons.logout_outlined,
            leadingIconColor: const Color.fromARGB(255, 38, 112, 173),
            onTap: () {
              showConfirmLogout();
            },
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }

  showConfirmLogout() {
    showCupertinoModalPopup(
      context: context,
      builder: (context) => CupertinoActionSheet(
        message: const Text("Would you like to log out?"),
        actions: [
          CupertinoActionSheetAction(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LoginScreen()),
              );
            },
            child: const Text(
              "Log Out",
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
          )
        ],
        cancelButton: CupertinoActionSheetAction(
          child: const Text("Cancel"),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }

  // _makeGetRequest() async {
  //   final url = Uri.parse(_localhost());
  //   Response response = await get(url);
  //   setState(() {
  //     // serverResponse = response.body;
  //   });
  // }

  String _localhost() {
    if (Platform.isAndroid) {
      return 'http://10.0.2.2:3000';
    } else {
      return 'http://localhost:3000';
    }
  }
}
