import 'package:admin_panel/charts/sample.dart';
import 'package:admin_panel/providers/colors.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: GridView(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        physics: const BouncingScrollPhysics(),
        children: [
          MyCard(),
          MyCard(),
          MyCard(),
          MyCard(),
          MyCard(),
          MyCard(),
          MyCard(),
          MyCard(),
          MyCard(),
          MyCard(),
          MyCard(),
          MyCard(),
          MyCard(),
          MyCard(),
          MyCard(),
          MyCard(),
          MyCard(),
          MyCard(),
          MyCard(),
          MyCard(),
          MyCard(),
          MyCard(),
          MyCard(),
        ],
      ),
    );
  }
}

class MyCard extends StatefulWidget {
  const MyCard({Key? key}) : super(key: key);

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.only(
          top: 30,
          left: 30,
          right: 30,
        ),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(
                bottom: 30,
              ),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: CustomColors.drawerTextColor,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: CustomColors.drawerTextColor,
                    ),
                    child: Icon(
                      Icons.lightbulb_outline_rounded,
                      size: 20,
                      color: CustomColors.drawerTrailingTextColor,
                    ),
                  ),
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: CustomColors.drawerTextColor,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: CustomColors.drawerTextColor,
                    ),
                    child: Icon(
                      Icons.more_horiz_outlined,
                      size: 20,
                      color: CustomColors.drawerTrailingTextColor,
                    ),
                  ),
                ],
              ),
            ),
            const Text(
              "Hello World 123",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Flexible(
              child: SizedBox(
                child: SimplePieChart.withRandomData(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

