import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:diary/widgets/body_measurement.dart';
import 'package:diary/widgets/meals_today.dart';
import 'package:diary/widgets/statistics.dart';
import 'package:diary/widgets/text_divider.dart';
import 'package:diary/widgets/water.dart';
import 'package:diary/widgets/water_notification.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _bottomNavIndex = 0;
  final iconList = <String>[
    'assets/menu/book.png',
    'assets/menu/sneakers.png',
    'assets/menu/apple.png',
    'assets/menu/profile.png',
  ];
  final ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SafeArea(
        child: Scaffold(
          extendBody: true,
          backgroundColor: const Color.fromRGBO(240, 240, 240, 1),
          body: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverAppBar(
                toolbarHeight: 70,
                title: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'My Diary',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Color.fromRGBO(55, 18, 100, 1),
                            fontFamily: "BalooChettan2"),
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.arrow_back_ios,
                            size: 16,
                            color: Color.fromRGBO(55, 18, 100, 1),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(Icons.calendar_today_outlined,
                              size: 14, color: Color.fromRGBO(55, 18, 100, 1)),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            '15 May',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color.fromRGBO(55, 18, 100, 1),
                                fontFamily: "BalooChettan2",
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(Icons.arrow_forward_ios,
                              size: 16, color: Color.fromRGBO(55, 18, 100, 1)),
                        ],
                      ),
                    ],
                  ),
                ),
                pinned: true,
                expandedHeight: 80,
                backgroundColor: Colors.white,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(20),
                  ),
                ),
                flexibleSpace: FlexibleSpaceBar(
                  background: Container(
                    color: const Color.fromRGBO(240, 240, 240, 1),
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate([
                  // Текст Mediterranean diet - details
                  const TextDivider(
                      title: 'Mediterranean diet',
                      link: 'Details',
                      iconData: Icons.arrow_forward),
                  // Статистика какая-то
                  const Statistics(),
                  const SizedBox(height: 10),

                  // Текст Meals today - Customize
                  const TextDivider(
                      title: 'Meals today',
                      link: 'Customize',
                      iconData: Icons.arrow_forward),

                  //Контейнеры красивые не понятные
                  SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: const [
                        SizedBox(width: 30),
                        MealsToday(
                          full: true,
                          title: 'Breakfast',
                          image: 'assets/images/Breakfast.png',
                          kcal: '525',
                          startColor: Color.fromRGBO(250, 120, 130, 1),
                          endColor: Color.fromRGBO(253, 170, 148, 1),
                        ),
                        MealsToday(
                          full: true,
                          title: 'Lunch',
                          image: 'assets/images/Lunch.png',
                          kcal: '602',
                          startColor: Color.fromRGBO(116, 139, 232, 1),
                          endColor: Color.fromRGBO(92, 96, 223, 1),
                        ),
                        MealsToday(
                            full: false,
                            image: 'assets/images/Snack.png',
                            title: 'Snack',
                            kcal: '800',
                            startColor: Color.fromRGBO(254, 149, 181, 1),
                            endColor: Color.fromRGBO(250, 84, 134, 1))
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),

                  // Текст Body measurement - Today
                  const TextDivider(
                      title: 'Body measurement',
                      link: 'Today',
                      iconData: Icons.arrow_forward),
                  const SizedBox(height: 10),

                  //карточка с циферками
                  const BodyMeasurement(),
                  const SizedBox(height: 10),

                  //Текст Water - Aqua SmartBattle
                  const TextDivider(
                    title: 'Water',
                    link: 'Aqua Smart Bottle',
                    iconData: Icons.add,
                  ),

                  //Water Widget
                  const WaterWidget(),
                  const SizedBox(height: 20),

                  //табличка со стаканчиком
                  const WaterNotification(),
                ]),
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Container(
              height: 60,
              width: 60,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [Colors.blueAccent, Colors.lightBlueAccent],
                ),
              ),
              child: const Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: AnimatedBottomNavigationBar.builder(
            height: 60,
            itemCount: iconList.length,
            tabBuilder: (int index, bool isActive) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    iconList[index],
                    scale: 24,
                  ),
                  const SizedBox(height: 4),
                ],
              );
            },
            backgroundColor: Colors.white,
            activeIndex: _bottomNavIndex,
            splashSpeedInMilliseconds: 300,
            notchSmoothness: NotchSmoothness.softEdge,
            gapLocation: GapLocation.center,
            leftCornerRadius: 32,
            rightCornerRadius: 32,
            onTap: (index) => setState(() => _bottomNavIndex = index),
            shadow: const BoxShadow(
              offset: Offset(0, 1),
              blurRadius: 12,
              spreadRadius: 0.5,
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
