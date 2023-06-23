import 'package:flutter/material.dart';
import 'package:otp_verification/home.dart';
import 'MyPhone.dart';
import 'MyVerify.dart';
import 'package:firebase_core/firebase_core.dart';

void main()  async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'phone',
      debugShowCheckedModeBanner: false,
      routes: {
        'phone': (context) => MyPhone(),
        'verify': (context) => MyVerify(),
        'homepage': (context) => HomePage()
      },
    );
  }
}
