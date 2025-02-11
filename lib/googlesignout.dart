// import 'package:fire_base_authentication/firebaseauth.dart';
// import 'package:fire_base_authentication/googlesignin.dart';
// import 'package:fire_base_authentication/home2.dart';
// import 'package:fire_base_authentication/validator.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';


// class LoginScreen extends StatefulWidget {
// @override
// _LoginScreenState createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
// final _formKey = GlobalKey<FormState>();

// final _emailTextController = TextEditingController();
// final _passwordTextController = TextEditingController();

// final _focusEmail = FocusNode();
// final _focusPassword = FocusNode();

// bool _isProcessing = false;

// Future<FirebaseApp> _initializeFirebase() async {
//   FirebaseApp firebaseApp = await Firebase.initializeApp();

//   User? user = FirebaseAuth.instance.currentUser;

//   if (user != null) {
//     Navigator.of(context).pushReplacement(
//       MaterialPageRoute(
//         builder: (context) => GoogleSignInScreen(
//           user: user,
//         ),
//       ),
//     );
//   }

//   return firebaseApp;
// }

// @override
// Widget build(BuildContext context) {
//   return GestureDetector(
//     onTap: () {
//       _focusEmail.unfocus();
//       _focusPassword.unfocus();
//     },
//     child: Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.deepOrangeAccent,
//         title: Text('SJI Info'),
//         centerTitle: true,
//       ),
//       body: FutureBuilder(
//         future: _initializeFirebase(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.done) {
//             return Padding(
//               padding: const EdgeInsets.only(left: 24.0, right: 24.0,top: 48),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   SizedBox(
//                     height: 150,
//                     width: 150,
//                     child: Image.asset("sji_logo.png"),
//                   ),
//                   const Padding(
//                     padding: EdgeInsets.only(bottom: 30.0,top: 12),
//                     child: Text(
//                       'Welcome to SJI',
//                       style: TextStyle(
//                         color: Colors.black,
//                         fontSize: 40
//                       )
//                     ),
//                   ),
//                   Form(
//                     key: _formKey,
//                     child: Column(
//                       children: <Widget>[
//                         TextFormField(
//                           controller: _emailTextController,
//                           focusNode: _focusEmail,
//                           validator: (value) => Validator.validateEmail(
//                             email: value,
//                           ),
//                           decoration: InputDecoration(
//                             hintText: "Email",
//                             errorBorder: UnderlineInputBorder(
//                               borderRadius: BorderRadius.circular(6.0),
//                               borderSide: BorderSide(
//                                 color: Colors.red,
//                               ),
//                             ),
//                           ),
//                         ),
//                         SizedBox(height: 8.0),
//                         TextFormField(
//                           controller: _passwordTextController,
//                           focusNode: _focusPassword,
//                           obscureText: true,
//                           validator: (value) => Validator.validatePassword(
//                             password: value,
//                           ),
//                           decoration: InputDecoration(
//                             hintText: "Password",
//                             errorBorder: UnderlineInputBorder(
//                               borderRadius: BorderRadius.circular(6.0),
//                               borderSide: BorderSide(
//                                 color: Colors.red,
//                               ),
//                             ),
//                           ),
//                         ),
//                         SizedBox(height: 24.0),
//                         _isProcessing
//                         ? CircularProgressIndicator()
//                         : Row(
//                           mainAxisAlignment:
//                               MainAxisAlignment.spaceBetween,
//                           children: [
//                             Expanded(
//                               child: ElevatedButton(
//                                 onPressed: () async {
//                                   _focusEmail.unfocus();
//                                   _focusPassword.unfocus();

//                                   if (_formKey.currentState!
//                                       .validate()) {
//                                     setState(() {
//                                       _isProcessing = true;
//                                     });

//                                     User? user = await FirebaseAuthHelper
//                                         .signInUsingEmailPassword(
//                                       email: _emailTextController.text,
//                                       password:
//                                           _passwordTextController.text,
//                                     );

//                                     setState(() {
//                                       _isProcessing = false;
//                                     });

//                                     if (user != null) {
//                                       Navigator.of(context)
//                                           .pushReplacement(
//                                         MaterialPageRoute(
//                                           builder: (context) =>
//                                               GoogleSignInScreen(user: user),
//                                         ),
//                                       );
//                                     }
//                                   }
//                                 },
//                                 child: Text(
//                                   'Sign In',
//                                   style: TextStyle(color: Colors.white),
//                                 ),
//                                 style: ButtonStyle(
//                                   backgroundColor: MaterialStateProperty.all(Colors.deepOrangeAccent),
//                                 ),
//                               ),
//                             ),
//                             SizedBox(width: 24.0),
//                             Expanded(
//                               child: ElevatedButton(
//                                 onPressed: () {
//                                   Navigator.of(context).push(
//                                     MaterialPageRoute(
//                                       builder: (context) =>
//                                           SignUpScreen(),
//                                     ),
//                                   );
//                                 },
//                                 child: Text(
//                                   'SignUp',
//                                   style: TextStyle(color: Colors.white),
//                                 ),
//                                 style: ButtonStyle(
//                                   backgroundColor: MaterialStateProperty.all(Colors.deepOrangeAccent),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         )
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//             );
//           }

//           return const Center(
//             child: CircularProgressIndicator(),
//           );
//         },
//       ),
//     ),
//   );
// }
// }