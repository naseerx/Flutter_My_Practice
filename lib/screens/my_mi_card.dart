import 'package:flutter/material.dart';

class MyMiCard extends StatelessWidget {
  const MyMiCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Center(
          child: Text(
            'MY MI Card',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                fontFamily: 'Pacifico'),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.exit_to_app,
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.white54,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                child: Column(children: const <Widget>[
                  CircleAvatar(
                    radius: 42,
                    backgroundColor: Colors.pink,
                    child: CircleAvatar(
                      radius: 38,
                      backgroundImage: AssetImage('assets/nser.jpg'),
                    ),
                  ),
                  Text(
                    'MUHAMMAD \n    NASEER',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      letterSpacing: 1.5,
                    ),
                  ),
                ]),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                  color: Colors.teal,
                ),
              ),
              const ListTile(
                leading: Icon(
                  Icons.favorite,
                ),
                title: Text(
                  'Flutter',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                ),
              ),
              const ListTile(
                leading: Icon(
                  Icons.arrow_forward_sharp,
                ),
                title: Text(
                  'Dart',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                ),
              ),
              const SizedBox(
                height: 7,
                width: 10,
                child: Divider(
                  thickness: 3,
                  color: Colors.teal,
                ),
              ),
              const ListTile(
                leading: Icon(
                  Icons.flutter_dash,
                ),
                title: Text(
                  'IntelliJ',
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Colors.amber),
                ),
              ),
              const ListTile(
                title: Text(
                  'Android Studio',
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Colors.amber),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.teal,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
           CircleAvatar(
             radius: 52,
             backgroundColor: Colors.pink,
             child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/nser.jpg')
          ),
           ),
          const Text(
            'Muhammad Naseer',
            style: TextStyle(
                fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Text(
            'FLUTTER DEVELOPER',
            style: TextStyle(
              color: Colors.teal.shade100,
              fontWeight: FontWeight.bold,
              fontSize: 15,
              letterSpacing: 2.5,
            ),
          ),
          SizedBox(
            height: 37,
            width: 150,
            child: Divider(
              thickness: 2,
              color: Colors.teal.shade100,
            ),
          ),
          Card(
            color: Colors.white,
            margin: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 25,
            ),
            child: Row(
              children: const <Widget>[
                Icon(
                  Icons.phone,
                  color: Colors.teal,
                ),
                Text(
                  '  +923453096739',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    letterSpacing: 1.7,
                  ),
                )
              ],
            ),
          ),
          Card(
            color: Colors.white,
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
            child: Row(
              children: <Widget>[
                const Icon(
                  Icons.email,
                  color: Colors.teal,
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  'muhammadnaseerkhan1122@gmail.com',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal.shade900,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
