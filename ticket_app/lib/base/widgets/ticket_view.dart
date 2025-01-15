import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * 0.85,
      height: 197,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        // ignore: sort_child_properties_last
        child: const Center(child: Text("Hello")),
        decoration: BoxDecoration(
            color: AppStyles.ticketBlue,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(21), topRight: Radius.circular(21))),
      ),
    );
  }
}
