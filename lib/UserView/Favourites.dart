// ignore_for_file: prefer_const_literals_to_create_immutables, file_names, non_constant_identifier_names, avoid_print, unused_element, unused_local_variable
import 'dart:convert';
import '../models/FavouritesClass.dart';
import 'package:flutter/material.dart';
import '../Forms/HotelBooking.dart';
import 'package:http/http.dart' as http;

class Favourites extends StatefulWidget {
  final String profile;
  const Favourites({Key? key, required this.profile}) : super(key: key);
  @override
  _FavouritesState createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> {
  int lengthfav = 0;
  int total = 0;
  late int previous_total;
  bool check = false;
  late int guestid;
  late int roomid;

  @override
  Widget build(BuildContext context) {
    String profile = widget.profile;

    Future<List<Favourites>> displayfavourites() async {
      //getting the guest id using guest name
      var url1 = Uri.parse('http://localhost:3000/guest/guest/$profile');
      Map<String, String> requestHeaders1 = {
        'Content-type': 'application/json',
        'Accept': 'application/json',
      };
      var response1 = await http.get(url1, headers: requestHeaders1);
      var guestjson = json.decode(response1.body);
      print(guestjson);
      int guestid = guestjson[0]["guestid"];
//getting cart item from cart using guestid
      var url =
          Uri.parse('http://192.168.0.103:4000/favourites/favourites/$guestid');
      Map<String, String> requestHeaders = {
        'Content-type': 'application/json',
        'Accept': 'application/json',
      };
      var response = await http.get(url, headers: requestHeaders);
      var favouritesjson = json.decode(response.body);
      print(favouritesjson);
      List<Favourites> favouriteitems = [];
      for (var user in favouritesjson) {
        Favourite favourites = Favourite(
          user["favouritesid"],
          user["guestid"],
          user["roomid"],
          user["count"],
          user["name"],
          user["type"],
          user["created"],
          user["modified"],
          profile: '',
        );

        //total = total + favourites.count;

        //favouriteitems.add(favourites);
      }
      lengthfav = favouriteitems.length;
      print(lengthfav);
      //print(cartitems);
      print("Total price : " + total.toString());
      return favouriteitems;
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text("Saved Items"),
            ),
            Card(
              elevation: 2,
              color: const Color.fromARGB(255, 228, 209, 209),
              child: Row(children: [
                SizedBox(
                  width: 200,
                  //height: 500,
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Image.asset('assets/images/fhotel.png'),
                    ),
                  ),
                ),
                SizedBox(
                  width: 140,
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: Text("Pool View Room"),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.star_border_outlined,
                            color: Colors.yellow,
                          ),
                          const Icon(
                            Icons.star_border_outlined,
                            color: Colors.yellow,
                          ),
                          const Icon(
                            Icons.star_border_outlined,
                            color: Colors.yellow,
                          ),
                          const Icon(
                            Icons.star_border_outlined,
                            color: Colors.yellow,
                          ),
                          const Icon(
                            Icons.star_border_outlined,
                            color: Colors.yellow,
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 30),
                        child: Text("USD: 15 per night"),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Padding(
                            padding: EdgeInsets.fromLTRB(0, 20, 5, 10),
                            child: Icon(Icons.delete),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 20, 5, 10),
                            child: SizedBox(
                              height: 20,
                              width: 80,
                              child: ElevatedButton(
                                child: const Text(
                                  "Book",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.0,
                                    color: Colors.white,
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const HotelBooking()),
                                  );
                                },
                                style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            const Color(0xFF2BB9AD)),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(45.0),
                                    ))),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ]),
            ),
            Card(
              elevation: 2,
              color: const Color.fromARGB(255, 228, 209, 209),
              child: Row(children: [
                SizedBox(
                  width: 200,
                  //height: 500,
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Image.asset('assets/images/fhotel.png'),
                    ),
                  ),
                ),
                SizedBox(
                  width: 140,
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: Text("Pool View Room"),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.star_border_outlined,
                            color: Colors.yellow,
                          ),
                          const Icon(
                            Icons.star_border_outlined,
                            color: Colors.yellow,
                          ),
                          const Icon(
                            Icons.star_border_outlined,
                            color: Colors.yellow,
                          ),
                          const Icon(
                            Icons.star_border_outlined,
                            color: Colors.yellow,
                          ),
                          const Icon(
                            Icons.star_border_outlined,
                            color: Colors.yellow,
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 30),
                        child: Text("USD: 15 per night"),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Padding(
                            padding: EdgeInsets.fromLTRB(0, 20, 5, 10),
                            child: Icon(Icons.delete),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 20, 5, 10),
                            child: SizedBox(
                              height: 20,
                              width: 80,
                              child: ElevatedButton(
                                child: const Text(
                                  "Book",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.0,
                                    color: Colors.white,
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const HotelBooking()),
                                  );
                                },
                                style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            const Color(0xFF2BB9AD)),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(45.0),
                                    ))),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ]),
            ),
            Card(
              elevation: 2,
              color: const Color.fromARGB(255, 228, 209, 209),
              child: Row(children: [
                SizedBox(
                  width: 200,
                  //height: 500,
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Image.asset('assets/images/fhotel.png'),
                    ),
                  ),
                ),
                SizedBox(
                  width: 140,
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: Text("Pool View Room"),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.star_border_outlined,
                            color: Colors.yellow,
                          ),
                          const Icon(
                            Icons.star_border_outlined,
                            color: Colors.yellow,
                          ),
                          const Icon(
                            Icons.star_border_outlined,
                            color: Colors.yellow,
                          ),
                          const Icon(
                            Icons.star_border_outlined,
                            color: Colors.yellow,
                          ),
                          const Icon(
                            Icons.star_border_outlined,
                            color: Colors.yellow,
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(10, 10, 20, 30),
                        child: Text("USD: 15 per night"),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Padding(
                            padding: EdgeInsets.fromLTRB(0, 20, 5, 10),
                            child: Icon(Icons.delete),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 20, 5, 10),
                            child: SizedBox(
                              height: 20,
                              width: 80,
                              child: ElevatedButton(
                                child: const Text(
                                  "Book",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.0,
                                    color: Colors.white,
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const HotelBooking()),
                                  );
                                },
                                style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            const Color(0xFF2BB9AD)),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(45.0),
                                    ))),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}
