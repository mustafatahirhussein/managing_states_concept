import 'package:flutter/material.dart';
import 'package:maintaining_states_flutter_concept/Screens/tab_three.dart';
import 'package:maintaining_states_flutter_concept/Screens/tab_two.dart';
import 'package:maintaining_states_flutter_concept/Screens/users.dart';

class MainOne extends StatefulWidget {
  const MainOne({Key? key}) : super(key: key);

  @override
  State<MainOne> createState() => _MainOneState();
}

class _MainOneState extends State<MainOne> {

  PageController? pageController;
  int? index;
  List<Widget>? widgets;

  @override
  void initState() {
    super.initState();

    index = 0;
    widgets = [
      const Users(),
      const TabTwo(),
      const TabThree(),
    ];

    pageController = PageController(initialPage: index!);
  }

  @override
  void dispose() {
    pageController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Maintaining States - Concept"),
      ),
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        children: widgets!,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index!,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Users'),
          BottomNavigationBarItem(icon: Icon(Icons.category_outlined),label: 'Tab2'),
          BottomNavigationBarItem(icon: Icon(Icons.category_sharp),label: 'Tab3'),
        ],
        type: BottomNavigationBarType.fixed,
        onTap: (v) {
          setState(() {
            index = v;
          });
        },
      ),
    );
  }
}
