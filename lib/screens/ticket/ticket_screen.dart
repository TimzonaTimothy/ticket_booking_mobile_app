import 'package:flutter/material.dart';
import 'package:ticket_app/base/utils/all_json.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';

import '../../base/res/styles/app_styles.dart';
import '../../base/widgets/app_column_text_layout.dart';
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
          ),
          const SizedBox(
            height: 20,
          ),
          Container(

              padding: const EdgeInsets.only(left: 16),
              child: TicketView(
                ticket: ticketList[0],
                isColor: true,
              )),
              SizedBox(height: 1,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            color: AppStyles.ticketColorWhite,
            child: const Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [AppColumnTextLayout(
                        topText: 'DB',
                        bottomText: 'Pass',
                        alignment: CrossAxisAlignment.start,
                        isColor: true,
                      ),AppColumnTextLayout(
                        topText: '5221 368736',
                        bottomText: 'Passport',
                        alignment: CrossAxisAlignment.end,
                        isColor: true,
                      ),],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
