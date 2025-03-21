import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

import 'app_column_text_layout.dart';
import 'app_layoutbuilder_widget.dart';
import 'big_circle.dart';
import 'big_dot.dart';
import 'text_style_fourth.dart';
import 'text_style_third.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85,
      height: 189,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Column(
          children: [
            // blue part of the ticket
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: AppStyles.ticketBlue,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21))),
              child: Column(
                children: [
                  // show departure and destination with icons first line
                  Row(
                    children: [
                      const TextStyleThird(text: 'ENU'),
                      Expanded(child: Container()),
                      const BigDot(),
                      Expanded(
                          child: Stack(
                        children: [
                          const SizedBox(
                            height: 24,
                            child: AppLayoutBuilderWidget(
                              randeomDivider: 6,
                            ),
                          ),
                          Center(
                            child: Transform.rotate(
                                angle: 1.57,
                                child: const Icon(
                                  Icons.local_airport_rounded,
                                  color: Colors.white,
                                )),
                          )
                        ],
                      )),
                      const BigDot(),
                      Expanded(child: Container()),
                      const TextStyleThird(text: 'ABJ'),
                    ],
                  ),

                  const SizedBox(
                    height: 3,
                  ),

                  //show departure and destination names

                  Row(
                    children: [
                      const SizedBox(
                          width: 100, child: TextStyleFourth(text: 'Enugu')),
                      Expanded(child: Container()),
                      const TextStyleFourth(
                        text: "1H 30M",
                      ),
                      Expanded(child: Container()),
                      const SizedBox(
                        width: 100,
                        child: TextStyleFourth(
                          text: 'Abuja',
                          align: TextAlign.end,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // circle and dots
            Container(
              color: AppStyles.ticketOrange,
              child: const Row(
                children: [
                  BigCircle(
                    isRight: false,
                  ),
                  Expanded(
                      child: AppLayoutBuilderWidget(
                    randeomDivider: 16,
                    width: 6,
                  )),
                  BigCircle(
                    isRight: true,
                  ),
                ],
              ),
            ),
            // orange part of the ticket
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: AppStyles.ticketOrange,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(21),
                      bottomRight: Radius.circular(21))),
              child: const Column(
                children: [
                  // show departure and destination with icons first line
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     AppColumnTextLayout(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextStyleThird(text: '1 May'),
                          SizedBox(
                            height: 5,
                          ),
                          TextStyleThird(text: 'DATE'),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          TextStyleThird(text: '1 May'),
                          SizedBox(
                            height: 5,
                          ),
                          TextStyleThird(text: 'DATE'),
                        ],
                      ),
                      // Expanded(child: Container()),
                      // Text(
                      //   '08: 800 AM',
                      //   style: AppStyles.headLineStyle4
                      //       .copyWith(color: Colors.white),
                      //   overflow: TextOverflow.ellipsis,
                      // ),
                      // Expanded(child: Container()),
                      // Text(
                      //   '23',
                      //   style: AppStyles.headLineStyle4
                      //       .copyWith(color: Colors.white),
                      //   overflow: TextOverflow.ellipsis,
                      // ),
                    ],
                  ),

                  SizedBox(
                    height: 3,
                  ),

                  //show departure and destination names

                  // Row(
                  //   children: [
                  //     Text(
                  //       'Date',
                  //       style: AppStyles.headLineStyle4
                  //           .copyWith(color: Colors.white),
                  //       overflow: TextOverflow.ellipsis,
                  //     ),
                  //     Expanded(child: Container()),
                  //     Text(
                  //       'Departure time',
                  //       style: AppStyles.headLineStyle4
                  //           .copyWith(color: Colors.white),
                  //       overflow: TextOverflow.ellipsis,
                  //     ),
                  //     Expanded(child: Container()),
                  //     Text(
                  //       'Number',
                  //       style: AppStyles.headLineStyle4
                  //           .copyWith(color: Colors.white),
                  //       overflow: TextOverflow.ellipsis,
                  //     ),
                  //   ],
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
