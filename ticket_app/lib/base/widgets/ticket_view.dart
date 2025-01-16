import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16),

              // ignore: sort_child_properties_last
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "NYC",
                        style: AppStyles.headlinestyle2
                            .copyWith(color: Colors.white),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      const BigDot(),
                      Expanded(
                        child: Stack(
                          children: [
                            const SizedBox(
                              height: 23.5,
                              child: AppLayoutBuilderWidget(
                                randomDivider: 6,
                              ),
                            ),
                            Center(
                                child: Transform.rotate(
                                    angle: 1.57,
                                    child: const Icon(
                                      Icons.local_airport_rounded,
                                      color: Colors.white,
                                    ))),
                          ],
                        ),
                      ),
                      const BigDot(),
                      Expanded(
                        child: Container(),
                      ),
                      Text(
                        "LDN",
                        style: AppStyles.headlinestyle2
                            .copyWith(color: Colors.white),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        "New-York",
                        style: AppStyles.headlinestyle2
                            .copyWith(color: Colors.white),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      Text(
                        "8H 30M ",
                        style: AppStyles.headlinestyle2
                            .copyWith(color: Colors.white),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      Text(
                        "London",
                        style: AppStyles.headlinestyle2
                            .copyWith(color: Colors.white),
                      )
                    ],
                  )
                ],
              ),
              decoration: BoxDecoration(
                  color: AppStyles.ticketBlue,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21))),
            ),

            //Container 2
            Container(
              padding: EdgeInsets.all(16),

              // ignore: sort_child_properties_last
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "NYC",
                        style: AppStyles.headlinestyle2
                            .copyWith(color: Colors.white),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      const BigDot(),
                      Expanded(
                        child: Stack(
                          children: [
                            const SizedBox(
                              height: 23.5,
                              child: AppLayoutBuilderWidget(
                                randomDivider: 6,
                              ),
                            ),
                            Center(
                                child: Transform.rotate(
                                    angle: 1.57,
                                    child: const Icon(
                                      Icons.local_airport_rounded,
                                      color: Colors.white,
                                    ))),
                          ],
                        ),
                      ),
                      const BigDot(),
                      Expanded(
                        child: Container(),
                      ),
                      Text(
                        "LDN",
                        style: AppStyles.headlinestyle2
                            .copyWith(color: Colors.white),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        "New-York",
                        style: AppStyles.headlinestyle2
                            .copyWith(color: Colors.white),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      Text(
                        "8H 30M ",
                        style: AppStyles.headlinestyle2
                            .copyWith(color: Colors.white),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      Text(
                        "London",
                        style: AppStyles.headlinestyle2
                            .copyWith(color: Colors.white),
                      )
                    ],
                  )
                ],
              ),
              decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(21),
                      bottomRight: Radius.circular(21))),
            )
          ],
        ),
      ),
    );
  }
}
