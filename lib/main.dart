import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // 디폴트 생성자
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // 그림은 리턴에 그려야 한다.
    return MaterialApp(
      // 선택적 매개변수 ()안에 아무것도 안넣어도 오류안남
      home: StorePage(),
    );
  }
}

class StorePage extends StatelessWidget {
  const StorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Woman",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Kids",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Shoes",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Bag",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Image.asset(
                "assets/bag.jpeg",
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 1),
            Expanded(
              flex: 1,
              child: Image.asset(
                "assets/cloth.jpeg",
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
