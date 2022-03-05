import 'package:flutter/material.dart';
import 'package:lesson_1_task_1/models/static.dart';
import 'package:lesson_1_task_1/home_page.dart';

class PageSahifa extends StatelessWidget{
  const PageSahifa({Key? key}) : super(key: key);


  static List<Recipe> list = [
    Recipe("🚗 Damas", "⏳ 2013", "🛢 Gaz", "💰 5000", "🌎 Namangan",
        "assets/images/damas.jpg"),
    Recipe("🚗 Damas", "⏳ 2022", "🛢 Gaz", "💰 6000", "🌎 Andijon",
        "assets/images/labo.jpg"),
    Recipe("🚗 Nexia 3", "⏳ 2019", "🛢 Gaz", "💰 7000", "🌎 Farg'ona",
        "assets/images/nexia.jpg"),
    Recipe("🚗 Cobalt", "⏳ 2020", "🛢 Gaz", "💰 8000", "🌎 Toshkent",
        "assets/images/cobalt.jpg"),
    Recipe("🚗 Lada Xray", "⏳ 2018", "🛢 Gaz", "💰 9000", "🌎 Samarqand",
        "assets/images/lada.jpg"),
    Recipe("🚗 Trailblaser", "⏳ 2021", "🛢 Benzin", "💰 70000", "🌎 Samarqand",
        "assets/images/kuchlisi.jpg")

  ];





  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar: AppBar(
      title: Text('Bu page sahifa'),
    ),
      body: Pages(list[0], context),
    );
  }
}

Widget Pages(Recipe nomlar, context){
  return Container(
    child: Text(
      context.title + "\n" + context.address + "\n" + context.eat + "\n" +
          context.cost + "\n" + context.years, style: TextStyle(
        color: Colors.black87,
        fontSize: 18,
        fontWeight: FontWeight.bold),
    ),);
}