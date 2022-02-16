import 'package:flutter/material.dart';
import 'package:overall_practice/Widgets/custom_button.dart';
import 'package:overall_practice/screens/list_view.dart';
import 'package:overall_practice/screens/my_mi_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff31abd0),
      appBar: AppBar(
        backgroundColor: const Color(0xff00ffd0),
        title: const Center(
          child: Text(
            'My Overall Flutter Works',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        elevation: 13,
        shadowColor: Colors.green,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(30),
        )),
        toolbarHeight: 90,
      ),
      drawer: const Drawer(
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              MyCustomButton(
                title: 'MI CARD',
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                    return const MyMiCard();
                  }));
                },
              ),
              MyCustomButton(
                title: 'Stack',
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                    return  ListViewPractice();
                  }));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
