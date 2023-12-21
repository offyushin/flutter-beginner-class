import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class BirthdayScreen extends StatelessWidget {
  const BirthdayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/background3.jpg'),
                    fit: BoxFit.cover),
              ),
              child: Center(
                child: SizedBox(
                  width: 300,
                  height: 400,
                  child: Lottie.network(
                      'https://lottie.host/1e1f6909-0af9-49d5-a55f-64cae8a70b5f/gtZ6RQhSd7.json'),
                ),
              ),
            ),
          ),
          Positioned(
              top: 0,
              bottom: 0,
              left: 0,
              right: 0,
              child: Center(
                child: Text('생일축하!',
                style: TextStyle(fontSize: 40),),
              ))
        ],
      ),
    );
  }
}
// title: const Text(
// '생일 추카포카🎂',
// style: TextStyle(fontFamily: 'yeongdeok_kr', fontSize: 35),
// ),
