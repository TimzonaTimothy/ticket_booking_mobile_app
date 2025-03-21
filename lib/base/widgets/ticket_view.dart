import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

import 'app_layoutbuilder_widget.dart';
import 'big_dot.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85,
      height: 179,
      child: Container(
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.only(right: 16),
        decoration: BoxDecoration(
            color: AppStyles.ticketBlue,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(21), topRight: Radius.circular(21))),
        child: Center(
            child: Column(
          children: [
            Row(
              children: [
                Text(
                  'ENU',
                  style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
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
                          angle: 1.5,
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
                  style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
            const Row(
              children: [],
            )
          ],
        )),
      ),
    );
  }
}
