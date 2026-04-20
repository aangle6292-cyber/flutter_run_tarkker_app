import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'views/splash_screen_ui.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://ocknsxzxigifkdwxkqjc.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im9ja25zeHp4aWdpZmtkd3hrcWpjIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzY2MDYxNTEsImV4cCI6MjA5MjE4MjE1MX0.ghQG6gUWJEjpJ1KBAh2U6Vqk-YTjnJ_CQO1Rlmour-o',
  );

  // Status bar ให้เข้ากับธีมสีเข้ม
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
    ),
  );

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const primaryColor = Color(0xFF030D4F);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Run Tracker App',
      theme: ThemeData(
        useMaterial3: true,

        // 🎯 คุมโทนสีทั้งแอป
        colorScheme: ColorScheme.fromSeed(
          seedColor: primaryColor,
          primary: primaryColor,
        ),

        // 🎯 AppBar เหมือน Splash
        appBarTheme: const AppBarTheme(
          backgroundColor: primaryColor,
          foregroundColor: Colors.white,
          centerTitle: true,
          elevation: 0,
        ),

        // 🎯 ปุ่มหลัก
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: primaryColor,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 14),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),

        // 🎯 ปุ่มลอย
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: primaryColor,
          foregroundColor: Colors.white,
        ),

        // 🎯 Input field ดูสะอาดขึ้น
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),

        // 🎯 ฟอนต์
        fontFamily: 'Sarabun',

        // 🎯 พื้นหลังนวล ๆ
        scaffoldBackgroundColor: const Color(0xFFF5F7FA),
      ),
      home: const SplashScreenUI(),
    );
  }
}
