import 'package:flutter/material.dart';

class BmiResultScreen extends StatelessWidget {

  final int result;
  final bool isMale;
  final int age;
  final String getResult;
  final String comment;

  const BmiResultScreen({Key? key,
    required this.result,
    required this.isMale,
    required this.age,
    required this.getResult,
    required this.comment,
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.keyboard_arrow_left,
          ),
        ),
        title: const Text(
          'BMI Result',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              'Your Result',
              style: TextStyle(
                fontSize: 50.0,
                // fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            Container(
              height: 200,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.blue,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    getResult,
                    style: const TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  /* Text(
                    'Gender : ${isMale ? 'Male' : 'Female'}',
                    style: const TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ), */
                  Text(
                    'Result : $result',
                    style: const TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  /* Text(
                    'Age : $age',
                    style: const TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ), */
                ],
              ),
            ),
            Text(
              comment,
              style: const TextStyle(
                fontSize: 16.0,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
