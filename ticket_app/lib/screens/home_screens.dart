import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Column, Row
    return Scaffold(
      //We want scrollable efect
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsetsDirectional.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [Text("Good Morning"), Text("Book Tickets")],
                    ),
                    Container(
                      color: Colors.blueAccent,
                      width: 70,
                      height: 70,
                    )
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("Search icon"), Text("empty space")],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
