import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Column, Row
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      //We want scrollable efect
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsetsDirectional.symmetric(
                horizontal: 20, vertical: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good Morning",
                          style: AppStyles.headlinestyle2,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text("Book Tickets", style: AppStyles.headlinestyle1)
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                              image: AssetImage(AppMedia.logo))),
                    )
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                // ignore: avoid_unnecessary_containers
                Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 12),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 255, 255, 255)),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          FluentSystemIcons.ic_fluent_search_regular,
                          color: Color(0xffbfc205),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Text("Search")
                      ],
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
