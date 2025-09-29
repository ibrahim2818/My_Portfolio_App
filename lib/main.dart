import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        appBar: AppBar(
          title: const Text('My Portfolio') ,
          centerTitle: true,
      ),

            body: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                        children: [
              Row(
                children: [

                  CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('assets/images/ibrahim.jpg'),
                  ),
                  SizedBox(width: 20),
                  Column(
                    children: [
                      Text('Ibrahim', style: TextStyle(fontSize: 45),),
                      Text('App Developer', style: TextStyle(fontSize: 24),),
                    ],
                  ),
                ],
              ),
                          SizedBox(height: 20),
                          Column(
                            children: [
                            Row(
                            ),
                              Row(),
                              Row(),
                              Row(),
                              Row(),
        ],
                          ),

                        ]
                    ),
            ),
      ),

    );
  }
}
