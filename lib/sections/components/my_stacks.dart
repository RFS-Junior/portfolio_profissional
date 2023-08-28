import 'package:flutter/material.dart';

class MyStack extends StatelessWidget {
  const MyStack({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Stacks",
            style: TextStyle(color: Colors.black),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: size.width * 0.05,
              decoration: BoxDecoration(
                color: Colors.red[600],
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Flutter",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            Container(
              width: size.width * 0.05,
              decoration: BoxDecoration(
                color: Colors.red[600],
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Nodejs",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ],
        ),
        Divider(
          height: size.width * 0.007,
          thickness: 0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: size.width * 0.05,
              decoration: BoxDecoration(
                color: Colors.red[600],
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Java",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            Container(
              width: size.width * 0.05,
              decoration: BoxDecoration(
                color: Colors.red[600],
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Python",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
