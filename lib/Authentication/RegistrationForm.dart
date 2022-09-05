// // ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'package:flutter/material.dart';

// import 'SubComponents/TermsofUse.dart';

// class SignUpScreen extends StatefulWidget {
//   @override
//   _SignUpScreenState createState() => _SignUpScreenState();
// }

// class _SignUpScreenState extends State<SignUpScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: true,
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         elevation: 0,
//         brightness: Brightness.light,
//         backgroundColor: Colors.white,
//         leading: IconButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           icon: Icon(Icons.arrow_back_ios,
//             size: 20,
//             color: Colors.black,),

//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Container(
//           padding: EdgeInsets.symmetric(horizontal: 40),
//           height: MediaQuery.of(context).size.height - 50,
//           width: double.infinity,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: <Widget>[
//               Column(
//                 children: <Widget>[
//                   Text("Sign up",
//                   style: TextStyle(
//                     fontSize: 30,
//                     fontWeight: FontWeight.bold,

//                   ),),
//                   SizedBox(height: 20,),
//                   Text("Create an account, It's free ",
//                     style: TextStyle(
//                         fontSize: 15,
//                         color:Colors.grey[700]),)

//                 ],
//               ),
//               Column(
//                 children: <Widget>[
//                   inputFile(label: "Username"),
//                   inputFile(label: "Email"),
//                   inputFile(label: "Password", obscureText: true),
//                   inputFile(label: "Confirm Password ", obscureText: true),
//                 ],
//               ),
//               TermsOfUse(),
//               Container(
//                 padding: EdgeInsets.only(top: 3, left: 3),
//                 decoration:
//                 BoxDecoration(
//                     borderRadius: BorderRadius.circular(50),
//                     border: Border(
//                       bottom: BorderSide(color: Colors.black),
//                       top: BorderSide(color: Colors.black),
//                       left: BorderSide(color: Colors.black),
//                       right: BorderSide(color: Colors.black),

//                     )

//                 ),
//                 child: MaterialButton(
//                   minWidth: double.infinity,
//                   height: 60,
//                   onPressed: () {

//                   },
//                   color: Color(0xff0095FF),
//                   elevation: 0,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(50),

//                   ),
//                   child: Text(
//                     "Sign up", style: TextStyle(
//                     fontWeight: FontWeight.w600,
//                     fontSize: 18,
//                     color: Colors.white,

//                   ),
//                   ),

//                 ),

//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   Text("Already have an account?"),
//                   Text(" Login", style:TextStyle(
//                       fontWeight: FontWeight.w600,
//                       fontSize: 18
//                   ),
//                   )
//                 ],
//               )

//             ],

//           ),

//         ),

//       ),

//     );
//   }
// }

// // we will be creating a widget for text field
// Widget inputFile({label, obscureText = false})
// {
//   return Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: <Widget>[
//       Text(
//         label,
//         style: TextStyle(
//             fontSize: 15,
//             fontWeight: FontWeight.w400,
//             color:Colors.black87
//         ),

//       ),
//       SizedBox(
//         height: 5,
//       ),
//       TextField(
//         obscureText: obscureText,
//         decoration: InputDecoration(
//             contentPadding: EdgeInsets.symmetric(vertical: 0,
//                 horizontal: 10),
//             enabledBorder: OutlineInputBorder(
//               borderSide: BorderSide(
//                   color: Colors.grey
//               ),

// //ignore_for_file: deprecated_member_use

//             ),
//             border: OutlineInputBorder(
//                 borderSide: BorderSide(color: Colors.grey)
//             )
//         ),
//       ),
//       SizedBox(height: 10,)
//     ],
//   );
// }

// ignore_for_file: file_names, avoid_print

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hotel_smart/Extras/NavBar.dart';

import 'SubComponents/TermsofUse.dart';
import 'SubComponents/Validators.dart';

class RegistrationForm extends StatefulWidget {
  const RegistrationForm({Key? key}) : super(key: key);

  @override
  _RegistrationFormState createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  final GlobalKey<FormState> _passwordResetFormKey = GlobalKey<FormState>();
  late TextEditingController _firstNameController = TextEditingController();
  late TextEditingController _emailController = TextEditingController();
  late TextEditingController _phoneNumberController = TextEditingController();
  late TextEditingController _passwordController = TextEditingController();
  late TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  void initState() {
    _firstNameController = TextEditingController();
    _emailController = TextEditingController();
    _phoneNumberController = TextEditingController();
    _passwordController = TextEditingController();
    _confirmPasswordController = TextEditingController();
    super.initState();
  }

  final bool _obscureText = true;


  @override
  Widget build(BuildContext context) {
    String? emailValidator = Validators.validateEmail('');
    String? passwordValidator = Validators.validatePassword('');
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                            alignment: Alignment.topLeft,
                            child: const SizedBox(
                                child: Icon(Icons.arrow_back_ios),
                                height: 20,
                                width: 20)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Column(
                children: <Widget>[
                  const Text("Sign up",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,

                  ),),
                  const SizedBox(height: 20,),
                  Text("Create an account, It's free ",
                    style: TextStyle(
                        fontSize: 15,
                        color:Colors.grey[700]),)

                ],
              ),
            Ink(
              child: Container(
                color: Colors.black.withOpacity(0),
                padding: const EdgeInsets.all(25.0),
                child: Form(
                  key: _passwordResetFormKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: TextFormField(
                          controller: _firstNameController,
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) => emailValidator!,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            icon: const Icon(
                              Icons.book_rounded,
                              color: Color.fromARGB(255, 64, 106, 219),
                            ),
                            border: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 64, 106, 219),
                              ),
                            ),
                            enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 64, 106, 219),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color.fromARGB(255, 64, 106, 219),
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            hintText: "Name",
                            hintStyle: const TextStyle(
                              color: Color.fromARGB(255, 64, 106, 219),
                              fontWeight: FontWeight.w600,
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30.0),
                     
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: TextFormField(
                          controller: _emailController,
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) => emailValidator!,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            icon: const Icon(
                              Icons.email_rounded,
                              color: Color.fromARGB(255, 64, 106, 219),
                            ),
                            border: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 64, 106, 219),
                              ),
                            ),
                            enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 64, 106, 219),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color.fromARGB(255, 64, 106, 219),
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            hintText: "Email",
                            hintStyle: const TextStyle(
                              color: Color.fromARGB(255, 64, 106, 219),
                              fontWeight: FontWeight.w600,
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30.0),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: TextFormField(
                          controller: _phoneNumberController,
                          keyboardType: TextInputType.number,
                          //validator: (value) => emailValidator!,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            icon: const Icon(
                              Icons.email_rounded,
                              color: Color.fromARGB(255, 64, 106, 219),
                            ),
                            border: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 64, 106, 219),
                              ),
                            ),
                            enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 64, 106, 219),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color.fromARGB(255, 64, 106, 219),
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            hintText: "Phone Number",
                            hintStyle: const TextStyle(
                              color: Color.fromARGB(255, 64, 106, 219),
                              fontWeight: FontWeight.w600,
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30.0),
                     
                     
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: TextFormField(
                          controller: _passwordController,
                          validator: (value) => passwordValidator!,
                          obscureText: _obscureText,
                          initialValue: null,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            icon: const Icon(
                              Icons.lock_rounded,
                              color: Color.fromARGB(255, 64, 106, 219),
                            ),
                            border: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 64, 106, 219),
                              ),
                            ),
                            enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 64, 106, 219),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color.fromARGB(255, 64, 106, 219),
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            hintText: "Password",
                            hintStyle: const TextStyle(
                              color: Color.fromARGB(255, 64, 106, 219),
                              fontWeight: FontWeight.w600,
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30.0),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: TextFormField(
                          controller: _confirmPasswordController,
                          validator: (value) => passwordValidator!,
                          obscureText: _obscureText,
                          initialValue: null,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            icon: const Icon(
                              Icons.lock_rounded,
                              color: Color.fromARGB(255, 64, 106, 219),
                            ),
                            border: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 64, 106, 219),
                              ),
                            ),
                            enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 64, 106, 219),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color.fromARGB(255, 64, 106, 219),
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            hintText: "Confirm password",
                            hintStyle: const TextStyle(
                              color: Color.fromARGB(255, 64, 106, 219),
                              fontWeight: FontWeight.w600,
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                      ),
                      TermsOfUse(),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(50, 30, 50, 50),
                        child: ElevatedButton(
                          child: const Text(
                            "Register",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18.0,
                              color: Colors.white,
                            ),
                          ),
                          onPressed: () {
                             FirebaseAuth.instance
                      .createUserWithEmailAndPassword(
                        
                          email: _emailController.text,
                          password: _passwordController.text)
                      .then((value) {
                    print("Created New Account");
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const HomePage()));
                  }).onError((error, stackTrace) {
                    print("Error ${error.toString()}");
                  });
              
                          },
                          style: ElevatedButton.styleFrom(
                            primary: const Color.fromARGB(255, 64, 106, 219),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 50, vertical: 20),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
