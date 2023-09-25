

import 'package:flutter/material.dart';
final ValueNotifier<int> number =ValueNotifier(0);

class mainpage extends StatefulWidget {
  const mainpage({super.key});

  @override
  State<mainpage> createState() => _mainpageState();
}

class _mainpageState extends State<mainpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[100],
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 400),
              child: FloatingActionButton(
                backgroundColor: Colors.blueGrey,
                onPressed: () {
                  number.value += 1;
                },
                child: Icon(Icons.add),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ValueListenableBuilder(valueListenable: number, builder: (context,value,child){
              return Text("$value",
              style: TextStyle(fontSize: 30),);
            })
          ],
        ),
      ),
    );
  }
}
