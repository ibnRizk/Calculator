import 'package:flutter/material.dart';

class CalculateView extends StatefulWidget {
  const CalculateView({super.key});

  @override
  State<CalculateView> createState() => _CalculateViewState();
}

class _CalculateViewState extends State<CalculateView> {
  Widget calculatebutton(String text, Color txtColor, Color btnColor) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: btnColor,
        padding: EdgeInsets.all(20),
        shape: CircleBorder(),
      ),
      child: Text(text, style: TextStyle(fontSize: 32, color: txtColor)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text(
            'Calculator',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          backgroundColor: Colors.black,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    '0',
                    style: TextStyle(color: Colors.white, fontSize: 100),
                  ),
                ],
              ),
              SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}
