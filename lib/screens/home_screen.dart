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
            children: [
              // appBar
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12.0, vertical: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30.0),
                        child: Text(
                          'My Diary',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30, color: Color.fromRGBO(55, 18, 100,  1),
                          fontFamily: "BalooChettan2"),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.arrow_back_ios,
                            size: 16, color: Color.fromRGBO(55, 18, 100,  1),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.calendar_today_outlined,
                                size: 14, color: Color.fromRGBO(55, 18, 100,  1)
                              ),
                              SizedBox(width: 10,),
                              Text(
                                '15 May',
                                style: TextStyle(fontSize: 14, color: Color.fromRGBO(55, 18, 100,  1), fontFamily: "BalooChettan2", fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 16, color: Color.fromRGBO(55, 18, 100,  1)
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // Текст Mediterranean diet - details
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20),
                      child: Text('Mediterranean diet', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Color.fromRGBO(55, 18, 100,  1), fontFamily: "BalooChettan2",),),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          SizedBox(width: 90,),
                          Text('Details', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.blue, fontFamily: "BalooChettan2",),),
                          SizedBox(width: 10,),
                          Icon(Icons.arrow_forward,  size: 16, color: Colors.blueGrey),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // Статистика какая-то
            Statistics(),


              // Текст Meals today - Customize

              //Контейнеры красивые не понятные
              MealsToday(),

              //Body measurement - Today
            ],
          ),
        ),
      ),
    );
  }
}
