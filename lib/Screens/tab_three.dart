import 'package:flutter/material.dart';

class TabThree extends StatefulWidget {
  const TabThree({Key? key}) : super(key: key);

  @override
  State<TabThree> createState() => _TabThreeState();
}

class _TabThreeState extends State<TabThree> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 22,
      itemBuilder: (context, index) {

        return const Card(
          child: ListTile(
            title: Text("TabThree"),
          ),
        );
      },
    );
  }
}
