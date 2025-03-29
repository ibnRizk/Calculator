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
              fontSize: 32,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  calculatebutton('Ac', Colors.black, Colors.grey),
                  calculatebutton('+/-', Colors.black, Colors.grey),
                  calculatebutton('%', Colors.black, Colors.grey),
                  calculatebutton('/', Colors.white, Colors.orange),
                ],
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  calculatebutton('7', Colors.black, Colors.grey),
                  calculatebutton('8', Colors.black, Colors.grey),
                  calculatebutton('9', Colors.black, Colors.grey),
                  calculatebutton('X', Colors.white, Colors.orange),
                ],
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  calculatebutton('4', Colors.black, Colors.grey),
                  calculatebutton('5', Colors.black, Colors.grey),
                  calculatebutton('6', Colors.black, Colors.grey),
                  calculatebutton('-', Colors.white, Colors.orange),
                ],
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  calculatebutton('1', Colors.black, Colors.grey),
                  calculatebutton('2', Colors.black, Colors.grey),
                  calculatebutton('3', Colors.black, Colors.grey),
                  calculatebutton('+', Colors.white, Colors.orange),
                ],
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey,
                      shape: StadiumBorder(),
                      padding: EdgeInsets.only(
                        left: 36,
                        top: 12,
                        bottom: 12,
                        right: 92,
                      ),
                    ),
                    child: Text(
                      '0',
                      style: TextStyle(color: Colors.black, fontSize: 36),
                    ),
                  ),
                  calculatebutton('.', Colors.black, Colors.grey),
                  calculatebutton('=', Colors.white, Colors.orange),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
