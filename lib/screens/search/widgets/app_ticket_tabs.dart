import 'package:flutter/material.dart';

class AppTicketTabs extends StatelessWidget {
  const AppTicketTabs({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: const Color(0xFFF4F6FD)),
      child: Row(
        children: [
          Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.horizontal(left: Radius.circular(50))),
            padding: const EdgeInsets.symmetric(vertical: 7),
            width: size.width * .44,
            child: const Center(child: Text("Airline Tickets")),
          ),
          Container(
            decoration: const BoxDecoration(
                color: Colors.transparent,
                borderRadius:
                    BorderRadius.horizontal(right: Radius.circular(50))),
            padding: const EdgeInsets.symmetric(vertical: 7),
            width: size.width * .44,
            child: const Center(child: Text("Hotels")),
          ),
        ],
      ),
    );
  }
}
