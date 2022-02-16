import 'package:flutter/material.dart';
import 'package:overall_practice/Widgets/custom_button.dart';
import 'package:overall_practice/screens/listview2.dart';


class ListViewPractice extends StatelessWidget {
  const ListViewPractice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        backgroundColor: const Color(0xff99ffa9),
        title: Column(
          children: const [
            Text(
              'ListView.builder',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'ListView',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
        elevation: 13,
        shadowColor: Colors.green,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            )),
        toolbarHeight: 190,
      ),
      body: Center(
        child: Column(
          children: [
            MyCustomButton(title: 'Examole 1', onTap: (){
               Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
                 return MyListview();
               }));

            }),
            MyCustomButton(title: 'Example 2', onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
                return MyListview2();
              }));

            })
          ],
        ),
      ),
    );
  }
}
class MyListview extends StatelessWidget {
  MyListview({Key? key}) : super(key: key);
  var fruits = [
    'Apple',
    'Mango',
    'Banana',
    'Orange',
    'Peach',
    'Apple',
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

