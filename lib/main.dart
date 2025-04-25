import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/admin/admin_login.dart';
import 'package:flutter_application_1/pages/bottomnav.dart'; // Adjust to your actual path
import 'package:flutter_application_1/pages/home.dart'; // Adjust to your actual path
import 'package:flutter_application_1/pages/login.dart'; // Adjust to your actual path
import 'package:flutter_application_1/pages/onboard.dart'; // Adjust to your actual path
import 'package:flutter_application_1/pages/signup.dart';
import 'package:flutter_application_1/widget/app_constant.dart';
import 'package:flutter_stripe/flutter_stripe.dart'; // Adjust to your actual path

void main() async {
  // Ensure that Firebase is initialized before the app starts
  WidgetsFlutterBinding.ensureInitialized();
  // Initialize Firebase with the provided configuration
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyDFTpusdElTGChI7j8Vw5buc4jxZL3PZlc",
      authDomain: "e-commerce-project-2c21f.firebaseapp.com",
      projectId: "e-commerce-project-2c21f",
      storageBucket: "e-commerce-project-2c21f.firebasestorage.app",
      messagingSenderId: "39818934611",
      appId: "1:39818934611:web:d448b0d022bcbfcffc09a6",
      measurementId: "G-3FY38FJPNQ",
    ),
  );

  // Run the app after Firebase is initialized
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: BottomNav(), // Make sure this is your starting page
    );
  }
}
