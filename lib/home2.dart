// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:google_sign_in/google_sign_in.dart';

// class GoogleSignInScreen extends StatefulWidget {
//   const GoogleSignInScreen({Key? key, required User user}) : super(key: key);

//   @override
//   State<GoogleSignInScreen> createState() => _GoogleSignInScreenState();
// }

// class _GoogleSignInScreenState extends State<GoogleSignInScreen> {
//   String? userEmail;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Google SignIn Screen')),
//       body: userEmail == null
//           ? Center(
//               child: Card(
//                 elevation: 5,
//                 shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10)),
//                 child: IconButton(
//                   iconSize: 40,
//                   icon: Image.asset(
//                     ' asset/water.JPEG',
//                   ),
//                   onPressed: () async {
//                     dynamic result = await signInWithGoogle(context);
//                     if (result != null) {
//                       setState(() {
//                         userEmail = result.user!.email;
//                       });
//                     }
//                   },
//                 ),
//               ),
//             )
//           : EmailDetailsPage(email: userEmail!),
//     );
//   }

//   Future<UserCredential?> signInWithGoogle(BuildContext context) async {
//     try {
//       final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

//       final GoogleSignInAuthentication? googleAuth =
//           await googleUser?.authentication;

//       final credential = GoogleAuthProvider.credential(
//         accessToken: googleAuth?.accessToken,
//         idToken: googleAuth?.idToken,
//       );

//       return FirebaseAuth.instance.signInWithCredential(credential);
//     } catch (e) {
//       // Handle exception
//       print('exception->$e');
//       return null;
//     }
//   }
// }

// class EmailDetailsPage extends StatelessWidget {
//   final String email;

//   const EmailDetailsPage({Key? key, required this.email}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Email Details'),
//       ),
//       body: Center(
//         child: Text(email),
//       ),
//     );
//   }
// }