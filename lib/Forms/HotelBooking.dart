// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../UserView/myBookings.dart';

class HotelBooking extends StatefulWidget {
  const HotelBooking({Key? key}) : super(key: key);

  @override
  _HotelBookingState createState() => _HotelBookingState();
}

class _HotelBookingState extends State<HotelBooking> {
  final bool _status = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       resizeToAvoidBottomInset: false,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                              
                          },
                          child: Container(
                              alignment: Alignment.topLeft,
                              child: const SizedBox(
                                  child: Icon(Icons.arrow_back_ios),
                                  height: 30,
                                  width: 30)),
                        ),
                      ),
                        const Center(child: Padding(
                          padding: EdgeInsets.fromLTRB(10, 20, 110, 20),
                          child: Text("Booking Information"),
                        )),
                        ],),]
                      ),),
                      Padding(padding: const EdgeInsets.all(8.0),
                      child: Column(children: [Row(children: [Card(
            elevation: 2,
            color: const Color.fromARGB(255, 228, 209, 209),
            child: Row(children: [
              SizedBox(
                width: 200,
                //height: 500,
                child: Container(
                  margin: const EdgeInsets.fromLTRB(
                              0.0, 0.0, 0.0, 0.0),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Image.asset('assets/images/fhotel.png'),
                  ),
                ),
              ),
              SizedBox(
                width: 160,
                child: Column
                (
                  children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                    child: Text("Pool View Room"),
                  ),
                  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                  Icon(
                    Icons.star_border_outlined,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star_border_outlined,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star_border_outlined,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star_border_outlined,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star_border_outlined,
                    color: Colors.yellow,
                  ),
                  ],
                ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      child: Text("USD: 15 per night"),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
                      child: Text("Economic Single Room"),
                    ),
                ],),
              )
            ]),
          ),
          ],
                        
                      )],),),
                      Padding(padding: const EdgeInsets.fromLTRB(10, 20, 10, 40),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              //crossAxisAlignment: CrossAxisAlignment.stretch,
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 100,
                                  child: Column(
                                    children: const [
                                      Text("Check In"),
                                     Text("10/10/2022")],
                                  ),
                                ),
                                SizedBox(
                                  width: 100,
                                  child: Column(
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      const Text("Check Out"),
                                     const Text("20/10/2022")],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 40, 10, 40),
                            child: Row(
                              //crossAxisAlignment: CrossAxisAlignment.stretch,
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 100,
                                  child: Column(
                                    children: const [
                                      Text("Guests"),
                                     Text("2 Guests")],
                                  ),
                                ),
                                SizedBox(
                                  width: 100,
                                  child: Column(
                                    children: const [
                                      Text("Rooms"),
                                     Text("1 Room")],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("Contact Details"),
                          ),
                          const Padding(
                    padding: EdgeInsets.fromLTRB(5, 10, 5, 0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.all(2.0),
                        child: Text(
                          "Name",
                          style: TextStyle(
                        color: Color.fromARGB(255, 104, 103, 103),
                        fontSize: 18,
                        //fontWeight: FontWeight.w600
                        ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: TextField(
                            decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color.fromARGB(255, 43, 109, 185)),
                  ),
                  focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color.fromARGB(255, 43, 109, 185)),
                  ),
                          border: UnderlineInputBorder(),
                        ))),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(5, 10, 5, 0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.all(2.0),
                        child: Text(
                          "Email",
                          style: TextStyle(
                        color: Color.fromARGB(255, 104, 103, 103),
                        fontSize: 18,
                        //fontWeight: FontWeight.w600
                        ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: TextField(
                            decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color.fromARGB(255, 43, 109, 185)),
                  ),
                  focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color.fromARGB(255, 94, 114, 224)),
                  ),
                          border: UnderlineInputBorder(),
                        ))),
                  ),
                   const Padding(
                    padding: EdgeInsets.fromLTRB(5, 10, 5, 0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.all(2.0),
                        child: Text(
                          "Amount",
                          style: TextStyle(
                        color: Color.fromARGB(255, 104, 103, 103),
                        fontSize: 18,
                        //fontWeight: FontWeight.w600
                        ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: TextField(
                            decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color.fromARGB(255, 43, 109, 185)),
                  ),
                  focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color.fromARGB(255, 94, 114, 224)),
                  ),
                          border: UnderlineInputBorder(),
                        ))),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(5, 10, 5, 0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Text(
                          "Phone Number",
                          style: TextStyle(
                        color: Color.fromARGB(255, 104, 103, 103),
                        fontSize: 18,
                        //fontWeight: FontWeight.w600
                        ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                  ),
                  // ignore: duplicate_ignore
                  Padding(
                      padding: const EdgeInsets.fromLTRB(5, 20, 5, 30),
                      // ignore: unnecessary_new
                      child: new Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              // ignore: unnecessary_new
                              child: new TextField(
                                decoration: const InputDecoration(
                                    
                                     enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color.fromARGB(255, 43, 109, 185)),
                  ),
                  focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color.fromARGB(255, 43, 109, 185)),
                  ),
                                      hintText: "Country Code"),
                                enabled: _status,
                              ),
                            ),
                            flex: 1,
                          ),
                          Flexible(
                            // ignore: unnecessary_new
                            child: new TextField(
                              decoration: const InputDecoration(
                                  enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color.fromARGB(255, 43, 109, 185)),
                  ),
                  focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color.fromARGB(255, 43, 109, 185)),
                  ),
                                      hintText: "Enter Phone Number"),
                              enabled: _status,
                            ),
                            flex: 2,
                          ),
                        ],
                      )),
                   Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Container(
                                  alignment: Alignment.topLeft,
                                  child: const Text(
                                    "Make a special Request",
                                    style: TextStyle(
                        color: Color.fromARGB(255, 104, 103, 103),
                        fontSize: 18,
                        //fontWeight: FontWeight.w600
                        ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                            Column(children: [
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  margin: const EdgeInsets.only(right: 15),
                                  alignment: Alignment.topRight,
                                  child: IconButton(
                                    icon: const Icon(Icons.pages_rounded),
                                    iconSize: 25,
                                    onPressed: () {
                                      
                                    },
                                  ),
                                ),
                              ),
                            ]),
                            
                          ]),
                          ),
                          SizedBox(
                        width: 300,
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                       
                          // validator: (value) => emailValidator(value!),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Color.fromARGB(255, 60, 95, 212)),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Color.fromARGB(255, 60, 95, 212)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Color.fromARGB(255, 60, 95, 212)),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            hintText: "Enter your comments here..",
                            hintStyle: const TextStyle(
                              color: Color.fromARGB(255, 60, 95, 212),
                              fontWeight: FontWeight.w600,
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                    padding: const EdgeInsets.fromLTRB(10,50,5,30),
                    child: SizedBox(
                      height: 50,
                      width: 2000,
                      child: ElevatedButton(
                        child: const Text(
                          "Book",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 25.0,
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                           context,
                           MaterialPageRoute(builder: (context) => const MyBookings()),
                           );
                        },
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                const Color.fromARGB(255, 60, 95, 212)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(45.0),
                            ))),
                      ),
                    ),
                  ),
                        ],
                      ),)
                    ],
                  ),
                  
        ),
      
    );
  }
}
