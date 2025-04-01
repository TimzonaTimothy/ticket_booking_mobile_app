import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

import '../../screens/all_tickets.dart';
import '../utils/app_routes.dart';

class AppDoubleText extends StatelessWidget {
  const AppDoubleText({Key? Key, required this.bigText, required this.smallText, required this.func}):super(key:Key);
  final String bigText; 
  final String smallText;
  final VoidCallback func;

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(bigText, style: AppStyles.headLineStyle2, overflow: TextOverflow.ellipsis,), 
        InkWell(
          onTap: func,
          child: Text(smallText, style: AppStyles.textStyle.copyWith(color: AppStyles.primaryColor), overflow: TextOverflow.ellipsis,), 
        )
      ],
    );
  }
}