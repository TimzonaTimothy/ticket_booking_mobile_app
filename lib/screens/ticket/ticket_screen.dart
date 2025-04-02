import 'package:flutter/material.dart';

import '../../base/res/styles/app_styles.dart';
import '../search/widgets/app_ticket_tabs.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        shrinkWrap: true,
        children: [
          const SizedBox(
            height: 40,
          ),
          Text(
            "Tickets",
            style: AppStyles.headLineStyle1,
          ),
          const SizedBox(
            height: 20,
          ),
          const AppTicketTabs(
            firstTab: "Upcoming",
            secondTab: "Previous",
          )
        ],
      ),
    );
  }
}
