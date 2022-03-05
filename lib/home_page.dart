
import 'package:flutter/material.dart';
import 'package:lesson_1_task_1/page.dart';
import 'package:lesson_1_task_1/models/static.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
    return Scaffold(
      appBar: AppBar(title: Text('Avtoelon.uz'),),

      drawer: Drawer(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Bu mobil menu'),
            ],
          ),
        ),
      ),
      // backgroundColor: Colors.indigoAccent,
      body: ListView(
        children: [

          myCard(list[0], context),
          myCard(list[1], context),
          myCard(list[2], context),
          myCard(list[3], context),
          myCard(list[4], context),
          myCard(list[5], context),
        ],
      ),
    );
  }

  Widget myCard(Recipe recipe, context) {
    return InkWell(
      onTap: (){
      Navigator.push
        (context, MaterialPageRoute(builder: (context) => PageSahifa(),
    ),
    );

    },
      child: Card(
      margin: EdgeInsets.only(top: 1, left: 8, right: 8, bottom: 1),
      elevation: 100,
      color: Colors.white30,

        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 150,
              margin: EdgeInsets.all(7),
              color: Colors.white54,
              child: Image.asset(recipe.link),
            ),
            Padding(
              padding: EdgeInsets.all(4),
              child: Text(
                recipe.title + "\n" + recipe.address + "\n" + recipe.eat + "\n" +
                    recipe.cost + "\n" + recipe.years, style: TextStyle(
                  color: Colors.black87,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
              ),


            )
          ],

        ),
      ),
    );
  }
}


