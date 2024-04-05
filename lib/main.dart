import 'package:fire_base_authentication/firebase_options.dart';
import 'package:fire_base_authentication/googlesignin.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';  
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}
///comment
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 62, 26, 122)),
        useMaterial3: true,
      ),
      home: GoogleSignInScreen(),
    );
  }
}