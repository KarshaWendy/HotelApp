// ignore_for_file: file_names, prefer_const_constructors, avoid_print, duplicate_ignore


import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../UserView/ChoseUser.dart';
import 'RegistrationForm.dart';
import 'SubComponents/Validators.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String? emailValidator = Validators.validateEmail('');
  String? passwordValidator = Validators.validatePassword('');
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
//final TextEditingController password = TextEditingController();
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  final _obsecureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white, systemOverlayStyle: SystemUiOverlayStyle.dark,
        ),
        body: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text(
                              "Login",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Login to your account",
                              style: TextStyle(
                                  fontSize: 15, color: Colors.grey[700]),
                            )
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 40),
                          child: Column(
                            children: <Widget>[
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.7,
                                child: TextFormField(
                                  controller: emailController,
                                  keyboardType: TextInputType.emailAddress,
                                  validator: (value) => emailValidator!,
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    icon: const Icon(
                                      Icons.email_rounded,
                                      color: Color.fromARGB(255, 64, 106, 219),
                                    ),
                                    border: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            Color.fromARGB(255, 64, 106, 219),
                                      ),
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            Color.fromARGB(255, 64, 106, 219),
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            Color.fromARGB(255, 64, 106, 219),
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    hintText: "Email",
                                    hintStyle: TextStyle(
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
                                  controller: passwordController,
                                  validator: (value) => passwordValidator!,
                                  obscureText: _obsecureText,
                                  initialValue: null,
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    icon: const Icon(
                                      Icons.lock_rounded,
                                      color: Color.fromARGB(255, 64, 106, 219),
                                    ),
                                    border: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            Color.fromARGB(255, 64, 106, 219),
                                      ),
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            Color.fromARGB(255, 64, 106, 219),
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            Color.fromARGB(255, 64, 106, 219),
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    hintText: "Password",
                                    hintStyle: TextStyle(
                                      color: Color.fromARGB(255, 64, 106, 219),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18.0,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 30.0),
                              //inputFile(label: "Password", obscureText: true)
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 40),
                          child: Container(
                            padding: EdgeInsets.only(top: 3, left: 3),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border: Border(
                                  bottom: BorderSide(color: Colors.black),
                                  top: BorderSide(color: Colors.black),
                                  left: BorderSide(color: Colors.black),
                                  right: BorderSide(color: Colors.black),
                                )),
                            child: MaterialButton(
                              minWidth: double.infinity,
                              height: 60,
                              onPressed: () {},
                              color: Color(0xff0095FF),
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: TextButton(
                                //   "Login", style: TextStyle(
                                //   fontWeight: FontWeight.w600,
                                //   fontSize: 18,
                                //   color: Colors.white,

                                // ),
                                child: const Text(
                                  'Log in',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                    color: Colors.white,
                                  ),
                                ),
                                onPressed: (){
                  FirebaseAuth.instance
                      .signInWithEmailAndPassword(
                          email: emailController.text,
                          password: passwordController.text)
                      .then((value) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ChooseUser()));
                  }).onError((error, stackTrace) {
                    print("Error ${error.toString()}");
                  });
                
                                },
                                //Navigator.pop(context);
                                //    Navigator.push(
                                //  context,
                                //  MaterialPageRoute(builder: (context) => HomePage()),
                                //  );
                              ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: <Widget>[
                            const Text("Don't have an account?"),
                            TextButton(
                              child: const Text(
                                'Sign up',
                                style: TextStyle(fontSize: 20),
                              ),
                              onPressed: () {
                                //Navigator.pop(context);
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => RegistrationForm()),
                                );
                              },
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ])));
  }

  // Future signIn() async {
  //   await FirebaseAuth.instance.signInWithEmailAndPassword(
  //     email: emailController.text.trim(),
  //     password: passwordController.text.trim(),
  //   );
  // }
}

// we will be creating a widget for text field
Widget inputFile({label, obscureText = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        label,
        // ignore: prefer_const_constructors
        style: TextStyle(
            fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87),
      ),
      // ignore: prefer_const_constructors
      SizedBox(
        height: 5,
      ),
      TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            border:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.grey))),
      ),
      SizedBox(
        height: 10,
      )
    ],
  );
}


// // ignore_for_file: deprecated_member_use

// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';


// class Login extends StatefulWidget {
//   @override
//   _LoginState createState() => _LoginState();
// }

// final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
// bool isLoading = false;
// String p =
//     r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

// RegExp regExp = new RegExp(p);
// final TextEditingController email = TextEditingController();
// final TextEditingController userName = TextEditingController();
// final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
// final TextEditingController password = TextEditingController();

// bool obserText = true;

// class _LoginState extends State<Login> {
//   void submit(context) async {
//     try {
//       setState(() {
//         isLoading = true;
//       });
//       UserCredential result = await FirebaseAuth.instance
//           .signInWithEmailAndPassword(
//               email: email.text, password: password.text);
//       print(result);
//     } on PlatformException catch (error) {
//       var message = "Please Check Your Internet Connection ";
//       if (error.message != null) {
//         message = error.message!;
//       }
//       _scaffoldKey.currentState?.showSnackBar(
//         SnackBar(
//           content: Text(message.toString()),
//           duration: Duration(milliseconds: 800),
//           backgroundColor: Theme.of(context).primaryColor,
//         ),
//       );
//       setState(() {
//         isLoading = false;
//       });
//     } catch (error) {
//       setState(() {
//         isLoading = false;
//       });
//       _scaffoldKey.currentState.showSnackBar(SnackBar(
//         content: Text(error.toString()),
//         duration: Duration(milliseconds: 800),
//         backgroundColor: Theme.of(context).primaryColor,
//       ));
//     }

//     setState(() {
//       isLoading = false;
//     });
//   }

//   void vaildation() async {
//     if (email.text.isEmpty && password.text.isEmpty) {
//       _scaffoldKey.currentState.showSnackBar(
//         SnackBar(
//           content: Text("Both Flied Are Empty"),
//         ),
//       );
//     } else if (email.text.isEmpty) {
//       _scaffoldKey.currentState.showSnackBar(
//         SnackBar(
//           content: Text("Email Is Empty"),
//         ),
//       );
//     } else if (!regExp.hasMatch(email.text)) {
//       _scaffoldKey.currentState.showSnackBar(
//         SnackBar(
//           content: Text("Please Try Vaild Email"),
//         ),
//       );
//     } else if (password.text.isEmpty) {
//       _scaffoldKey.currentState.showSnackBar(
//         SnackBar(
//           content: Text("Password Is Empty"),
//         ),
//       );
//     } else if (password.text.length < 8) {
//       _scaffoldKey.currentState.showSnackBar(
//         SnackBar(
//           content: Text("Password  Is Too Short"),
//         ),
//       );
//     } else {
//       submit(context);
//     }
//   }

//   Widget _buildAllPart() {
//     return Expanded(
//       flex: 3,
//       child: Container(
//         width: double.infinity,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Column(
//               children: <Widget>[
//                 Text(
//                   "Login",
//                   style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 MyTextFormField(
//                   name: "Email",
//                   controller: email,
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 PasswordTextFormField(
//                   obserText: obserText,
//                   name: "Password",
//                   controller: password,
//                   onTap: () {
//                     FocusScope.of(context).unfocus();
//                     setState(() {
//                       obserText = !obserText;
//                     });
//                   },
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 isLoading == false
//                     ? MyButton(
//                         onPressed: () {
//                           vaildation();
//                         },
//                         name: "Login",
//                       )
//                     : Center(
//                         child: CircularProgressIndicator(),
//                       ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 ChangeScreen(
//                     name: "SignUp",
//                     whichAccount: "I Have Not Account!",
//                     onTap: () {
//                       Navigator.of(context).pushReplacement(
//                         MaterialPageRoute(
//                           builder: (ctx) => SignUp(),
//                         ),
//                       );
//                     }),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: _scaffoldKey,
//       body: Form(
//         key: _formKey,
//         child: Container(
//           margin: EdgeInsets.symmetric(horizontal: 10),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               _buildAllPart(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }