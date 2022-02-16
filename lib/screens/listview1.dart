import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyListview1 extends StatelessWidget {
  MyListview1({Key? key}) : super(key: key);
  var fruits = [
    'Apple',
    'Mango',
    'Banana',
    'Orange',
    'Peach',
    'Apple',
    'Orange',
    'Peach',
    'Apple',
    'Mango',
    'Banana',
    'Orange',
    'Mango',
    'Banana',
    'Orange',
    'Peach',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text(
          'List View',
          style: TextStyle(fontSize: 30),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: fruits.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              onTap: () {
                print(fruits[index]);
              },
              leading: Container(
                height: 50,
                width: 60,
                decoration: const BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Text(
                    '${index + 1}',
                    style: const TextStyle(fontSize: 20),
                  ),
                ),
              ),
              title: Text(fruits[index]),
              subtitle: const Text('I like Fruits'),
              trailing: const Icon(
                Icons.arrow_forward_sharp,
                size: 30,
              ),
            );
          }),
    );
  }
}