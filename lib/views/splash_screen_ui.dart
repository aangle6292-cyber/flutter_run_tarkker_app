import 'dart:async';
import 'package:flutter/material.dart';
import 'show_all_run_ui.dart';

class SplashScreenUI extends StatefulWidget {
  const SplashScreenUI({super.key});

  @override
  State<SplashScreenUI> createState() => _SplashScreenUIState();
}

class _SplashScreenUIState extends State<SplashScreenUI> {
  @override
  void initState() {
    super.initState();

    // ตั้งเวลา 3 วินาทีเพื่อเปลี่ยนหน้า
    Timer(const Duration(seconds: 3), () {
      if (mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const ShowAllRunUI()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ใช้สีน้ำเงินเข้มที่เป็นสีหลักเดิมแต่เป็นสีพื้นเรียบๆ
      backgroundColor: const Color(0xFF030D4F),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // LOGO IMAGE (คงไว้เฉพาะตัวรูปภาพ)
              Image.asset('assets/images/running.png', width: 160),

              const SizedBox(height: 30),

              // ชื่อและรหัสนักศึกษา
              const Text(
                '6619410028 Sugit Mensi',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                'ศุกิจ เมนซี่่',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.normal,
                ),
              ),

              const SizedBox(height: 40),

              const CircularProgressIndicator(color: Colors.white),
            ],
          ),
        ),
      ),
    );
  }
}
