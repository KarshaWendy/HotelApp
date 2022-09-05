
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:hotel_smart/UserView/HomePage.dart';
import 'package:hotel_smart/UserView/UserProfile.dart';

import '../UserView/Booking.dart';
import '../UserView/Favourites.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  
  @override
  _HomePageState createState() => _HomePageState();
}
  
class _HomePageState extends State<HomePage> {
  int pageIndex = 0;
  
  final pages = [
    // Favourites(),
    // Updates(),
    // Booking(),
    // More(),
    //const Page1(),
    const BookingHomePage(),
    const Favourites(profile: '',),
    const Booking(profile: '',),
    const UserProfile()
    //const Page4(),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffC4DFCB),
    
      body: pages[pageIndex],
      bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.black,
            unselectedItemColor: const Color.fromARGB(255, 60, 98, 180),
            currentIndex: pageIndex,
            onTap: (index) => setState(() => pageIndex = index),
            // ignore: prefer_const_literals_to_create_immutables
            items: [
                const BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                const BottomNavigationBarItem(
                  icon: Icon(Icons.favorite),
                  label: 'Favourites',
                ),
                const BottomNavigationBarItem(
                  icon: Icon(Icons.bookmark_rounded),
                  label: 'Bookings',
                ),
               const BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'Profile',
                )
            ]),
    );
  }
  
//   Container buildMyNavBar(BuildContext context) {
//     return Container(
//       height: 60,
//       decoration: BoxDecoration(
//         color: Theme.of(context).primaryColor,
//         borderRadius: const BorderRadius.only(
//           topLeft: Radius.circular(20),
//           topRight: Radius.circular(20),
//         ),
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: [
//           IconButton(
//             enableFeedback: false,
//             onPressed: () {
//               setState(() {
//                 pageIndex = 0;
//               });
//             },
//             icon: pageIndex == 0
//                 ? const Icon(
//                     Icons.home_filled,
//                     color: Colors.white,
//                     size: 35,
//                   )
//                 : const Icon(
//                     Icons.home_outlined,
//                     color: Colors.white,
//                     size: 35,
//                   ),
//           ),
//           IconButton(
//             enableFeedback: false,
//             onPressed: () {
//               setState(() {
//                 pageIndex = 1;
//               });
//             },
//             icon: pageIndex == 1
//                 ? const Icon(
//                     Icons.work_rounded,
//                     color: Colors.white,
//                     size: 35,
//                   )
//                 : const Icon(
//                     Icons.work_outline_outlined,
//                     color: Colors.white,
//                     size: 35,
//                   ),
//           ),
//           IconButton(
//             enableFeedback: false,
//             onPressed: () {
//               setState(() {
//                 pageIndex = 2;
//               });
//             },
//             icon: pageIndex == 2
//                 ? const Icon(
//                     Icons.widgets_rounded,
//                     color: Colors.white,
//                     size: 35,
//                   )
//                 : const Icon(
//                     Icons.widgets_outlined,
//                     color: Colors.white,
//                     size: 35,
//                   ),
//           ),
//           IconButton(
//             enableFeedback: false,
//             onPressed: () {
//               setState(() {
//                 pageIndex = 3;
//               });
//             },
//             icon: pageIndex == 3
//                 ? const Icon(
//                     Icons.person,
//                     color: Colors.white,
//                     size: 35,
//                   )
//                 : const Icon(
//                     Icons.person_outline,
//                     color: Colors.white,
//                     size: 35,
//                   ),
//           ),
//         ],
//       ),
//     );
//   }
}
  
class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffC4DFCB),
      child: Center(
        child: Text(
          "Page Number 1",
          style: TextStyle(
            color: Colors.green[900],
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
  
class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffC4DFCB),
      child: Center(
        child: Text(
          "Page Number 2",
          style: TextStyle(
            color: Colors.green[900],
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
  
class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffC4DFCB),
      child: Center(
        child: Text(
          "Page Number 3",
          style: TextStyle(
            color: Colors.green[900],
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
  
class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffC4DFCB),
      child: Center(
        child: Text(
          "Page Number 4",
          style: TextStyle(
            color: Colors.green[900],
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

//  int currentIndex = 0;
//   final screens = [
//     Favourites(),
//     Updates(),
//     Booking(),
//     More(),
//   ];
// Positioned(
//               bottom: 0,
//               left: 0,
//               right: 0,
//               child: Container(
//                 height: 72,
//                 decoration: const BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(24),
//                     topRight: Radius.circular(24),
//                   ),
//                 ),
//                  child:  BottomNavigationBar(
//             type: BottomNavigationBarType.fixed,
//             selectedItemColor: Colors.black,
//             unselectedItemColor: Color.fromARGB(255, 60, 98, 180),
//             currentIndex: currentIndex,
//             onTap: (index) => setState(() => currentIndex = index),
//             // ignore: prefer_const_literals_to_create_immutables
//             items: [
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.home),
//                 label: 'Home',
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.heart_broken_rounded),
//                 label: 'Favourites',
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.bookmark_rounded),
//                 label: 'Notification',
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.book_online_rounded),
//                 label: 'Booking',
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.more_horiz_rounded),
//                 label: 'More',
//               )
//             ]),
//               ),
//             ),