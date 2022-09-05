// ignore_for_file: file_names, avoid_print, avoid_print, duplicate_ignore, unused_element

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:hotel_smart/UserView/Booking.dart';
import 'package:http/http.dart' as http;

import 'PastBookingsclass.dart';


class PastBookings extends StatefulWidget {
  const PastBookings({Key? key}) : super(key: key);

  //final String profile;
   //PastBookings({Key? key, required this.profile}) : super(key: key);

  @override
  State<PastBookings> createState() => _PastBookingsState();
}

class _PastBookingsState extends State<PastBookings> {
  int lengthct = 0;
  int total = 0;
  // ignore: non_constant_identifier_names
  late int previous_total;
  bool check = false;
  late int guestid;
  late int reservationid;
  @override
  Widget build(BuildContext context) {
    //String profile = widget.profile;

    Future<List<Reservations>> displayreservation() async{
//getting reservation item from reservation using custid
      var url = Uri.parse('http://192.168.0.103:5000/reservation/reservations/:id');
      Map<String, String> requestHeaders = {
        'Content-type': 'application/json',
        'Accept': 'application/json',
      };
      var response = await http.get(url, headers: requestHeaders);
      var reservationjson = json.decode(response.body);
      print(reservationjson);
      List<Reservations> reservationitems = [];
      for (var u in reservationjson) {
        Reservations reservation = Reservations(
            u["guestid"],
            u["reservationid"],
            u["date"],
            u["check_in"],
            u["check_out"],
            u["status"],
            u["amount"]);

        total = (total + reservation.amount) as int;

        reservationitems.add(reservation);
      }
      lengthct = reservationitems.length;
      print(lengthct);
      //print(reservationitems);
      print("Total cost of travel : " + total.toString());
      return reservationitems;
    }

    createAlertDialog(BuildContext context) {
      return showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              contentPadding: const EdgeInsets.all(10),
              backgroundColor: const Color.fromRGBO(21, 102, 59, 1),
              elevation: 20,
              title: const Text(
                "Delete item from reservation ?",
                style: TextStyle(fontSize: 25, color: Colors.white),
                textAlign: TextAlign.center,
              ),
              actions: [
                TextButton(
                    onPressed: () async {
                      check = true;
                      previous_total = total;
                     
                      // var url = Uri.parse(
                      //     'http://192.168.0.103:5000/reservation/reservation/delete/$reservationid/$guestid');
                      // var response = await http.delete(url);
                      // var result = json.decode(response.body);
                      // print("Response Status code : ${response.statusCode}");
                      // print("Response body : " + response.body.toString());
                      // setState(() {
                      //   displayreservation();
                      //   if (previous_total < total) {
                      //     total = previous_total;
                      //   }
                      //   print(total);
                      // });
                      Navigator.pop(context);
                    },
                    child: const Text(
                      "Yes",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    )),
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      "No",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ))
              ],
            );
          });
    }

    @override
    void initState() {
      super.initState();
      displayreservation();
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                        size: 15,
                      )),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.3,
                  ),
                  const Text("reservation",
                      style: TextStyle(
                          fontFamily: "Comfortaa",
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(21, 102, 59, 1)))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
              child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      side: const BorderSide(width: 1, style: BorderStyle.solid)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Booking(profile: '',)));
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(
                        left: 90, right: 90, top: 10, bottom: 10),
                    child: Text(
                      "Add More Items",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  )),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Text(
                "Added Items",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 400,
              child: FutureBuilder(
                  future: displayreservation(),
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    return ListView.builder(
                        itemCount: lengthct,
                        itemBuilder: (BuildContext context, int index) {
                          if (snapshot.data == null) {
                            return const Text(
                              "No items in reservation..!!",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            );
                          } else {
                            return Padding(
                                padding: const EdgeInsets.all(10),
                                child: Row(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    SizedBox(
                                      height: 80,
                                      width: 80,
                                      child: Expanded(
                                        child: Image.asset(
                                            snapshot.data[index].itemimage),
                                      ),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 5),
                                          child: Text(
                                            snapshot.data[index].itemname,
                                            style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20),
                                          ),
                                        ),
                                        Text(
                                          snapshot.data[index].itemquantity
                                                  .toString() +
                                              "x",
                                          style: const TextStyle(
                                              fontWeight: FontWeight.normal,
                                              fontSize: 15),
                                        ),
                                        Text(
                                          "Rs. " +
                                              snapshot.data[index].itemprice
                                                  .toString(),
                                          style: const TextStyle(
                                              fontWeight: FontWeight.normal,
                                              fontSize: 15),
                                        )
                                      ],
                                    ),
                                    IconButton(
                                        onPressed: () async {
                                          createAlertDialog(context);
                                        },
                                        icon: const Icon(
                                          Icons.delete_rounded,
                                          size: 25,
                                        )),
                                  ],
                                ));
                          }
                        });
                  }),
            ),
            const SizedBox(
              height: 30,
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Booking(profile: '',
                              // profile: profile,
                              //totalprice: total,
                            )));
              },
              child: const Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                child: Text(
                  "Checkout",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              style: ElevatedButton.styleFrom(
                  primary: const Color.fromRGBO(21, 102, 59, 1)),
            )
          ],
        ),
      ),
    );
  }
}

   
  //@override
  // Widget build(BuildContext context) {
  //   return Scaffold(body: Column(children: [Padding(padding: EdgeInsets.all(8),),Padding(padding: EdgeInsets.all(8),)]));
  // }
