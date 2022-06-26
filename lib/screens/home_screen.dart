import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:diary/widgets/app_bar.dart';
import 'package:diary/widgets/body_measurement.dart';
import 'package:diary/widgets/meals_today.dart';
import 'package:diary/widgets/statistics.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Color.fromRGBO(240, 240, 240, 1),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // appBar
              CustomAppBar(),
              Expanded(
                child: SizedBox(
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    children: [
                      // Текст Mediterranean diet - details
                      Padding(
                        padding: const EdgeInsets.only(left: 28.0, right: 28.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 5.0, vertical: 10),
                              child: Text(
                                'Mediterranean diet',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Color.fromRGBO(55, 18, 100, 1),
                                  fontFamily: "BalooChettan2",
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 90,
                                ),
                                Text(
                                  'Details',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    color: Colors.blue,
                                    fontFamily: "BalooChettan2",
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(Icons.arrow_forward,
                                    size: 16, color: Colors.blueGrey),
                              ],
                            ),
                          ],
                        ),
                      ),
                      // Статистика какая-то
                      Statistics(),
                      SizedBox(height: 10),

                      // Текст Meals today - Customize
                      Padding(
                        padding: const EdgeInsets.only(left: 28.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 5.0, vertical: 10),
                              child: Text(
                                'Meals today',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Color.fromRGBO(55, 18, 100, 1),
                                  fontFamily: "BalooChettan2",
                                ),
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Text(
                                    'Customize',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      color: Colors.blue,
                                      fontFamily: "BalooChettan2",
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(Icons.arrow_forward,
                                      size: 16, color: Colors.blueGrey),
                                  SizedBox(
                                    width: 30,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

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
                      Padding(
                        padding: const EdgeInsets.only(left: 28.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 5.0, vertical: 10),
                              child: Text(
                                'Body measurement',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Color.fromRGBO(55, 18, 100, 1),
                                  fontFamily: "BalooChettan2",
                                ),
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Text(
                                    'Today',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      color: Colors.blue,
                                      fontFamily: "BalooChettan2",
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(Icons.arrow_forward,
                                      size: 16, color: Colors.blueGrey),
                                  SizedBox(
                                    width: 30,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      BodyMeasurement(),
                    ],
                  ),
                ),
              ),


            ],
          ),

        ),
      ),
    );
  }
}
