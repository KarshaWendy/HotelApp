// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../../Authentication/SubComponents/Validators.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final GlobalKey<FormState> _passwordChangeFormKey = GlobalKey<FormState>();
  late TextEditingController _emailController = TextEditingController();
  late TextEditingController _passwordController = TextEditingController();
  late TextEditingController _newpasswordController = TextEditingController();
  late TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  void initState() {
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _newpasswordController = TextEditingController();
    _confirmPasswordController = TextEditingController();
    super.initState();
  }

  bool _obscureText = true;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    String? emailValidator = Validators.validateEmail('');
    String? passwordValidator = Validators.validatePassword('');
    const borderSide2 = BorderSide(color: Color.fromARGB(255, 60, 95, 212));
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(2.0),
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
                                height: 30,
                                width: 30)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Ink(
              child: Container(
                color: Colors.black.withOpacity(0),
                padding: const EdgeInsets.all(25.0),
                child: Form(
                  key: _passwordChangeFormKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Change Password",
                        style: TextStyle(
                          color: Color.fromARGB(255, 60, 95, 212),
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 30.0),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: TextFormField(
                          controller: _emailController,
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) => emailValidator!,
                          initialValue: null,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            icon: const Icon(
                              Icons.email_rounded,
                              color: Color.fromARGB(255, 60, 95, 212),
                            ),
                            border: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Color.fromARGB(255, 60, 95, 212)),
                            ),
                            enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Color.fromARGB(255, 60, 95, 212)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Color.fromARGB(255, 60, 95, 212)),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            hintText: "Email",
                            hintStyle: const TextStyle(
                              color: Color.fromARGB(255, 60, 95, 212),
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
                          obscureText: _obscureText,
                          initialValue: null,
                          keyboardType: TextInputType.text,
                          validator: (value) => passwordValidator!,
                          decoration: InputDecoration(
                            //filled: true,
                            fillColor: Colors.white,
                            icon: const Icon(
                              Icons.phone_android_rounded,
                              color: Color.fromARGB(255, 60, 95, 212),
                            ),
                            border: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Color.fromARGB(255, 60, 95, 212)),
                            ),
                            enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Color.fromARGB(255, 60, 95, 212)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Color.fromARGB(255, 60, 95, 212)),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            suffixIcon: IconButton(
                                icon: Icon(
                                  _obscureText
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                ),
                                onPressed: _toggle,
                                color: const Color.fromARGB(255, 60, 95, 212),
                              ),
                            hintText: "Current Password",
                            hintStyle: const TextStyle(
                              color: Color.fromARGB(255, 60, 95, 212),
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
                          controller: _newpasswordController,
                          validator: (value) => passwordValidator!,
                          obscureText: _obscureText,
                          initialValue: null,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            icon: const Icon(
                              Icons.lock_rounded,
                              color: Color.fromARGB(255, 60, 95, 212),
                            ),
                            border: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Color.fromARGB(255, 60, 95, 212)),
                            ),
                            enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Color.fromARGB(255, 60, 95, 212)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: borderSide2,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            suffixIcon: IconButton(
                                icon: Icon(
                                  _obscureText
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                ),
                                onPressed: _toggle,
                                color: const Color.fromARGB(255, 60, 95, 212),
                              ),
                            hintText: "New Password",
                            hintStyle: const TextStyle(
                              color: Color.fromARGB(255, 60, 95, 212),
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
                              color: Color.fromARGB(255, 60, 95, 212),
                            ),
                            // ignore: prefer_const_constructors
                            border: UnderlineInputBorder(
                              borderSide: const BorderSide(color: Color.fromARGB(255, 60, 95, 212)),
                            ),
                            // ignore: prefer_const_constructors
                            enabledBorder: UnderlineInputBorder(
                              borderSide: const BorderSide(color: Color.fromARGB(255, 60, 95, 212)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color:Color.fromARGB(255, 60, 95, 212)),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            suffixIcon: IconButton(
                                icon: Icon(
                                  _obscureText
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                ),
                                onPressed: _toggle,
                                color: const Color.fromARGB(255, 60, 95, 212),
                              ),
                            hintText: "Confirm password",
                            hintStyle: const TextStyle(
                              color: Color.fromARGB(255, 60, 95, 212),
                              fontWeight: FontWeight.w600,
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(50, 50, 50, 50),
                        child: ElevatedButton(
                          child: const Text(
                            "Submit",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18.0,
                              color: Colors.white,
                            ),
                          ),
                          onPressed: () {
                            if (_passwordChangeFormKey.currentState!
                                .validate()) {
                              //userValidation();
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            primary: const Color.fromARGB(255, 60, 95, 212),
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
