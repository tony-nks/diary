import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:diary/widgets/app_bar.dart';
import 'package:diary/widgets/body_measurement.dart';
import 'package:diary/widgets/meals_today.dart';
import 'package:diary/widgets/statistics.dart';
import 'package:diary/widgets/text_divider.dart';
import 'package:diary/widgets/water.dart';
import 'package:diary/widgets/water_notification.dart';
import 'package:fluent_appbar/fluent_appbar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _bottomNavIndex = 0;
  final iconList = <IconData>[
    Icons.brightness_5,
    Icons.brightness_4,
    Icons.brightness_6,
    Icons.brightness_7,
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
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            flexibleSpace: Container(
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(35)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    offset: Offset(3, 5),
                    spreadRadius: -5,
                    blurRadius: 5,
                  )
                ]
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'My Diary',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Color.fromRGBO(55, 18, 100, 1),
                          fontFamily: "BalooChettan2"),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.arrow_back_ios,
                          size: 16,
                          color: Color.fromRGBO(55, 18, 100, 1),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.calendar_today_outlined,
                            size: 14,
                            color: Color.fromRGBO(55, 18, 100, 1)),
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
            ),
          ),
          backgroundColor: Color.fromRGBO(240, 240, 240, 1),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // appBar
              //CustomAppBar(),
              Expanded(
                child: SizedBox(
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    children: [
                      // Текст Mediterranean diet - details
                      TextDivider(title: 'Mediterranean diet', link: 'Details', iconData: Icons.arrow_forward),
                      // Статистика какая-то
                      Statistics(),
                      SizedBox(height: 10),

                      // Текст Meals today - Customize
                      TextDivider(title: 'Meals today', link: 'Customize', iconData: Icons.arrow_forward),

                      //Контейнеры красивые не понятные
                      SingleChildScrollView(
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
                      SizedBox(height: 10),

                      // Текст Body measurement - Today
                      TextDivider(title: 'Body measurement', link: 'Today', iconData: Icons.arrow_forward),
                      SizedBox(height: 10),

                      //карточка с циферками
                      BodyMeasurement(),
                      SizedBox(height: 10),

                      //Текст Water - Aqua SmartBattle
                      TextDivider(title: 'Water', link: 'Aqua Smart Bottle', iconData: Icons.add,),

                      //Water Widget
                      WaterWidget(),
                      SizedBox(height: 20),

                      //табличка со стаканчиком
                      WaterNotification(),
                    ],
                  ),
                ),
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [Colors.blueAccent, Colors.lightBlueAccent],
                ),
              ),
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: AnimatedBottomNavigationBar.builder(
            height: 70,
            itemCount: iconList.length,
            tabBuilder: (int index, bool isActive) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    iconList[index],
                    size: 24,
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
            shadow: BoxShadow(
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
