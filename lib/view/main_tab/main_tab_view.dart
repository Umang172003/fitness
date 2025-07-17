import 'package:flutter/material.dart';
import 'package:fitness/view/home/home_view.dart';
import 'package:fitness/view/home/blank_view.dart';
import 'package:fitness/common/color_extension.dart';
import 'package:fitness/common_widget/tab_button.dart';

class MainTabView extends StatefulWidget {
  const MainTabView({super.key});

  @override
  State<MainTabView> createState() => _MainTabViewState();
}

class _MainTabViewState extends State<MainTabView> {
  int selectTab = 0;
  final PageStorageBucket pageBucket = PageStorageBucket();
  Widget currentTab = const HomeView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TColor.bgGray, // You can adjust this to your theme
      extendBody: true, // <- this allows bottom bar to float above body
      body: PageStorage(bucket: pageBucket, child: currentTab),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        width: 72,
        height: 72,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(colors: TColor.primaryG),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.15),
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: IconButton(
          icon: Icon(Icons.search, color: TColor.white, size: 32),
          onPressed: () {},
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 8,
        elevation: 10,
        color: Colors.transparent,
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
          child: Container(
            height: kToolbarHeight + 10,
            color: TColor.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TabButton(
                  icon: "assets/img/home_tab.png",
                  selectIcon: "assets/img/home_tab_select.png",
                  isActive: selectTab == 0,
                  onTap: () {
                    setState(() {
                      selectTab = 0;
                      currentTab = const HomeView();
                    });
                  },
                ),
                TabButton(
                  icon: "assets/img/activity_tab.png",
                  selectIcon: "assets/img/activity_tab_select.png",
                  isActive: selectTab == 1,
                  onTap: () {
                    setState(() {
                      selectTab = 1;
                      currentTab = const BlankView();
                    });
                  },
                ),
                const SizedBox(width: 40), // Gap for FAB
                TabButton(
                  icon: "assets/img/camera_tab.png",
                  selectIcon: "assets/img/camera_tab_select.png",
                  isActive: selectTab == 2,
                  onTap: () {
                    setState(() {
                      selectTab = 2;
                      currentTab = const BlankView();
                    });
                  },
                ),
                TabButton(
                  icon: "assets/img/profile_tab.png",
                  selectIcon: "assets/img/profile_tab_select.png",
                  isActive: selectTab == 3,
                  onTap: () {
                    setState(() {
                      selectTab = 3;
                      currentTab = const BlankView();
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
