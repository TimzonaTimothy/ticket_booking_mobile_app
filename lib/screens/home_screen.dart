import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';

import '../base/res/styles/app_styles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         Text(
                          "Good Morning!",
                          style: AppStyles.headLineStyle3,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Book Tickets",
                          style: AppStyles.headLineStyle1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration:  BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(image: AssetImage(AppMedia.logo))
                      )
                    ),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("icon"), Text("Text 2")],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
