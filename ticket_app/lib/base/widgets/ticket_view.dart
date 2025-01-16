import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/app_layout_builder_widget.dart';
import 'package:ticket_app/base/widgets/big_dot.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  get color => null;

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * 0.85,
      height: 197,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        padding: EdgeInsets.all(16),

        // ignore: sort_child_properties_last
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "NYC",
                  style: AppStyles.headlinestyle2.copyWith(color: Colors.white),
                ),
                Expanded(
                  child: Container(),
                ),
                const BigDot(),
                const Expanded(
                  child: Stack(
                    children: [
                      SizedBox(
                        height: 19,
                        child: AppLayoutBuilderWidget(
                          randomDivider: 6,
                        ),
                      ),
                      // Center(
                      //   child: Text(
                      //     "Plane",
                      //   ),
                      // )
                    ],
                  ),
                ),
                const BigDot(),
                Expanded(
                  child: Container(),
                ),
                Text(
                  "NYC",
                  style: AppStyles.headlinestyle2.copyWith(color: Colors.white),
                )
              ],
            )
          ],
        ),
        decoration: BoxDecoration(
            color: AppStyles.ticketBlue,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(21), topRight: Radius.circular(21))),
      ),
    );
  }
}
