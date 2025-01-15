import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/app_double_text.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';

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
                horizontal: 20, vertical: 40),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Aventoura",
                          style: AppStyles.headlinestyle1,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text("Find Your Dream Destination",
                            style: AppStyles.headlinestyle2)
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
                  height: 30,
                ),

                // ignore: avoid_unnecessary_containers
                Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 12),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(255, 255, 255, 255)),
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
                    )),

                const SizedBox(
                  height: 40,
                ),

                //Upcoming flight text
                const AppDoubleText(
                  bigText: 'Upcoming Flights',
                  smallText: 'View all',
                ),

                const SizedBox(
                  height: 15,
                ),

                TicketView()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
