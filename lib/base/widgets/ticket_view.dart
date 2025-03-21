import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

import 'app_layoutbuilder_widget.dart';
import 'big_circle.dart';
import 'big_dot.dart';

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
                      Text(
                        'ENU',
                        style: AppStyles.headLineStyle3
                            .copyWith(color: Colors.white),
                        overflow: TextOverflow.ellipsis,
                      ),
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
                      Text(
                        'ABJ',
                        style: AppStyles.headLineStyle3
                            .copyWith(color: Colors.white),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 3,
                  ),

                  //show departure and destination names

                  Row(
                    children: [
                      Text(
                        'Enugu',
                        style: AppStyles.headLineStyle3
                            .copyWith(color: Colors.white),
                        overflow: TextOverflow.ellipsis,
                      ),
                      Expanded(child: Container()),
                      Text(
                        '1H 30M',
                        style: AppStyles.headLineStyle3
                            .copyWith(color: Colors.white),
                        overflow: TextOverflow.ellipsis,
                      ),
                      Expanded(child: Container()),
                      Text(
                        'Abuja',
                        style: AppStyles.headLineStyle3
                            .copyWith(color: Colors.white),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              color: AppStyles.ticketOrange,
              child: Row(
                children: [
            
                  const BigCircle(isRight: false,),
                  Expanded(child: Container()),
                  const BigCircle(isRight: true,),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: AppStyles.ticketOrange,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(21),
                      bottomRight: Radius.circular(21))),
              child: Column(
                children: [
                  // show departure and destination with icons first line
                  Row(
                    children: [
                      Text(
                        'ENU',
                        style: AppStyles.headLineStyle3
                            .copyWith(color: Colors.white),
                        overflow: TextOverflow.ellipsis,
                      ),
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
                      Text(
                        'ABJ',
                        style: AppStyles.headLineStyle3
                            .copyWith(color: Colors.white),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 3,
                  ),

                  //show departure and destination names

                  Row(
                    children: [
                      Text(
                        'Enugu',
                        style: AppStyles.headLineStyle3
                            .copyWith(color: Colors.white),
                        overflow: TextOverflow.ellipsis,
                      ),
                      Expanded(child: Container()),
                      Text(
                        '1H 30M',
                        style: AppStyles.headLineStyle3
                            .copyWith(color: Colors.white),
                        overflow: TextOverflow.ellipsis,
                      ),
                      Expanded(child: Container()),
                      Text(
                        'Abuja',
                        style: AppStyles.headLineStyle3
                            .copyWith(color: Colors.white),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
