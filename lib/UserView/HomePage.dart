// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
//import 'package:syncfusion_flutter_calendar/calendar.dart';


class BookingHomePage extends StatefulWidget {
  const BookingHomePage({Key? key}) : super(key: key);

  @override
  State<BookingHomePage> createState() => _BookingHomePageState();
}

class _BookingHomePageState extends State<BookingHomePage> {
 String dropdownvalue = 'Room';
  var items =  ['Room','Ocean View','Pool View','Garden View'];

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child:SingleChildScrollView(
          child: SizedBox(
            height: 700,
            child: Stack(
              children: [
                Positioned(
                  left: 16,
                  right: 0,
                  bottom: 64,
                  top: 24,
                  child: Column(
                    
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Hello, Dreamwalker",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Let's find the best",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text(
                        "room for you",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.grey[100],
                                          borderRadius: BorderRadius.circular(8),
                                        ),
                                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                                        // child: SfCalendar(
                                        //   view: CalendarView.month,
                                        // ),
                                        child: const TextField(
                                          decoration: InputDecoration(
                                              border: InputBorder.none,
                                              icon: Icon(Ionicons.calendar_outline),
                                              hintText: "Dates"),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 16,
                                    ),
                                    Expanded(
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                                        decoration: BoxDecoration(
                                          color: Colors.grey[100],
                                          borderRadius: BorderRadius.circular(8),
                                        ),
                                          child: 
                                  DropdownButton(
                                    value: dropdownvalue,
                                    icon: const Icon(Icons.keyboard_arrow_down),   
                                    items: items.map((String items) {
                                      return DropdownMenuItem(
                                        value: items,
                                        child: Text(items),
                                      );
                                    }).toList(),
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        dropdownvalue = newValue!;
                                      });
                                    },
                                  ),
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey[100],
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                                  child: const TextField(
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        icon: Icon(
                                          Ionicons.people_outline,
                                        ),
                                        hintText: "Guest"),
                                  ),
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                Container(
                                  width: double.infinity,
                                  padding: const EdgeInsets.symmetric(vertical: 20),
                                  decoration: BoxDecoration(
                                    color: Colors.indigoAccent[100],
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "search room".toUpperCase(),
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Text(
                            "Top Searches",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Spacer(),
                          const Text("See All"),
                          const Icon(
                            Icons.keyboard_arrow_right,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Expanded(
                        child: ListView.builder(
                          itemCount: 16,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 16),
                              child: Container(
                                width: 240,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: Flexible(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.blueGrey[200],
                                            borderRadius: BorderRadius.circular(8),
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                  "https://cdn.pixabay.com/photo/2021/10/06/15/05/bedroom-6686061_960_720.jpg"),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          padding: EdgeInsets.all(8),
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                                                decoration: BoxDecoration(
                                                  color: Colors.indigoAccent[100],
                                                  borderRadius: BorderRadius.circular(4),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    "10%",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              CircleAvatar(
                                                backgroundColor: Colors.white,
                                                radius: 18,
                                                foregroundColor: Colors.indigoAccent[200],
                                                child: Icon(
                                                  Icons.favorite,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Carden Inn Times Square"),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Row(
                                            children: const [
                                              Icon(
                                                Icons.location_on_outlined,
                                                color: Colors.blueGrey,
                                                size: 16,
                                              ),
                                              SizedBox(
                                                width: 8,
                                              ),
                                              Text(
                                                "New York, NY(LAG)",
                                                style: TextStyle(
                                                  color: Colors.blueGrey,
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                // Positioned(
                //   bottom: 0,
                //   left: 0,
                //   right: 0,
                //   child: Padding(
                //     padding: const EdgeInsets.all(8.0),
                //     child: Container(
                //       height: 72,
                //       decoration: const BoxDecoration(
                //         color: Colors.white,
                //         borderRadius: BorderRadius.only(
                //           topLeft: Radius.circular(24),
                //           topRight: Radius.circular(24),
                //         ),
                //       ),
                //       child:  BottomNavigationBar(
                // type: BottomNavigationBarType.fixed,
                // selectedItemColor: Colors.black,
                // unselectedItemColor: Color.fromARGB(255, 60, 98, 180),
                // currentIndex: currentIndex,
                // onTap: (index) => setState(() => currentIndex = index),
                // // ignore: prefer_const_literals_to_create_immutables
                // items: [
                //     BottomNavigationBarItem(
                //       icon: Icon(Icons.home),
                //       label: 'Home',
                //     ),
                //     BottomNavigationBarItem(
                //       icon: Icon(Icons.heart_broken_rounded),
                //       label: 'Favourites',
                //     ),
                //     BottomNavigationBarItem(
                //       icon: Icon(Icons.bookmark_rounded),
                //       label: 'Notification',
                //     ),
                //     BottomNavigationBarItem(
                //       icon: Icon(Icons.book_online_rounded),
                //       label: 'Booking',
                //     ),
                //     BottomNavigationBarItem(
                //       icon: Icon(Icons.more_horiz_rounded),
                //       label: 'More',
                //     )
                // ]),
                //     ),
                //   ),
                // ),
                Positioned(
                  right: 16,
                  top: 16,
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      
                      const SizedBox(
                        width: 16,
                      ),
                      const CircleAvatar()
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}