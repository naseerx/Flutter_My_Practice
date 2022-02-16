import 'package:flutter/material.dart';

class MyCustomButton extends StatelessWidget {
  String title;
  final VoidCallback onTap;
  MyCustomButton({
    required this.title, required this.onTap
  } );


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
     onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(20),
        height: 100,
        width: 200,
        decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                // color: Color(0xff00ffd0),
                  color: Colors.purple,
                  offset: Offset(3, 4),
                  blurRadius: 3,
                  spreadRadius: 3,
                  blurStyle: BlurStyle.normal)
            ],
            color: Colors.blue,
            borderRadius: BorderRadius.circular(30)),
        child:  Center(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }


}