import 'package:book_app/pages/home/widgets/book_staggered.dart';
import 'package:book_app/pages/home/widgets/custom_tabBar.dart';
import 'package:flutter/material.dart';

import 'package:book_app/constants/colors.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var tabIndex = 0;
  var bottomIndex = 0;
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Column(
        children: [
          CustomTab(tabIndex, (int index) {
            setState(() {
              tabIndex = index;
            });
            pageController.jumpToPage(index);
          }),
          Expanded(
            child: BookStaggeredGridView(
              tabIndex,
              (int index) => setState(() {
                tabIndex = index;
              }),
              pageController,
            ),
          ),
        ],
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 5,
      leading: IconButton(
        onPressed: () {},
        icon: Icon(Icons.menu_rounded, color: Colors.grey),
      ),
      actions: [IconButton(icon: const Icon(Icons.search), onPressed: () {})],
      title: const Text(
        'All Books',
        style: TextStyle(
          color: kFont,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildBottomNavigationBar() {
    final bottoms = [
      Icons.home_outlined,
      Icons.analytics_outlined,
      Icons.keyboard_voice_outlined,
      Icons.bookmark_border_outlined,
      Icons.person_outlined,
    ];
    final widht = MediaQuery.of(context).size.width;
    return SizedBox(
      width: widht,
      height: 56,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) => GestureDetector(
          onTap: () => setState(() {
            bottomIndex = index;
          }),
          child: Container(
            width: (widht - 40) / 5,
            padding: EdgeInsets.symmetric(vertical: 15),
            decoration: bottomIndex == index
                ? const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 3, color: Colors.deepOrange),
                    ),
                  )
                : null,
            child: Icon(bottoms[index],
            size: 30,
              color: bottomIndex==index?kFont:Colors.grey.shade400,
            ),
          ),
        ),
        separatorBuilder: (_, index) => const SizedBox(width: 10),
        itemCount: bottoms.length,
      ),
    );
  }
}
