import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:overall_practice/utills/listview_store_data.dart';

class MyListview2 extends StatelessWidget {
  const MyListview2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent[200],
      appBar: AppBar(
        backgroundColor: Colors.deepOrange[200],
        title: const Text(
          'List View',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: StoreData.getAllStudents().length,
          itemBuilder: (BuildContext context, int index) {
            var student = StoreData.getAllStudents()[index];
            return Card(
              elevation: 12,
              margin: const EdgeInsets.all(10),
              color: Colors.cyanAccent[200],
              shadowColor: Colors.red,
              shape: RoundedRectangleBorder(
                  side: const BorderSide(color: Colors.white70, width: 4),
                  borderRadius: BorderRadius.circular(20)),
              child: ListTile(
                  onTap: () {},
                  leading: Container(
                    height: 50,
                    width: 60,
                    decoration: const BoxDecoration(
                      color: Colors.cyan,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        '${student.rolNumber}',
                        style:
                        const TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                  title: Text(
                    'Name:   ${student.name}',
                    style: const TextStyle(
                        fontSize: 20, fontFamily: 'RacingSansOne'),
                  ),
                  subtitle: Text(
                    'F/Name:   ${student.fName}',
                    style: const TextStyle(
                        fontSize: 20,
                        fontFamily: 'Italiano',
                        color: Colors.black87,
                        fontWeight: FontWeight.bold),
                  ),
                  trailing: Text(
                    'Grade:  ${student.grade}',
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  )),
            );
          }),
    );
  }
}