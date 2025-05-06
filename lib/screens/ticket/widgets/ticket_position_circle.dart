import 'package:flutter/material.dart';

import '../../../base/res/styles/app_styles.dart';

class TicketPositionCircle extends StatelessWidget {
  const TicketPositionCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
          left: 22, 
          top: 250,
            child: Container(
              padding: EdgeInsets.all(3), 
              decoration: BoxDecoration(
                shape: BoxShape.circle, 
                border: Border.all(width: 2, color: AppStyles.textColor)
              ),
                child: CircleAvatar(
          maxRadius: 4,
          backgroundColor: AppStyles.textColor,
        )));
  }
}