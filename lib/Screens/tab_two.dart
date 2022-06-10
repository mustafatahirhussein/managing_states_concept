import 'package:flutter/material.dart';

class TabTwo extends StatefulWidget {
  const TabTwo({Key? key}) : super(key: key);

  @override
  State<TabTwo> createState() => _TabTwoState();
}

class _TabTwoState extends State<TabTwo> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 22,
      itemBuilder: (context, index) {

        return const Card(
          child: ListTile(
            title: Text("TabTwo"),
          ),
        );
      },
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
