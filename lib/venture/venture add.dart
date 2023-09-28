import 'package:flutter/material.dart';

class Vanture extends StatefulWidget {
  const Vanture({super.key});

  @override
  State<Vanture> createState() => _VantureState();
}

class _VantureState extends State<Vanture> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 250,
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          height: 120,
                          color: Colors.blue,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 120,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        height: 50,
                        width: 80,
                        decoration: BoxDecoration(color: Colors.black),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
