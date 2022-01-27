import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chef App',
      theme: ThemeData.dark(),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'Chef App',
            style: TextStyle(
                color: Colors.purpleAccent,
                shadows: [Shadow(blurRadius: 8, color: Colors.pinkAccent)]),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              icon: const Icon(Icons.done_all_outlined),
              onPressed: () {},
            ),
          ]),
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://avatars.githubusercontent.com/u/82886071?v=4'),
              radius: 75,
            ),
            SizedBox(height: 20),
            Text(
              'Developed by @Thomas',
              style: TextStyle(
                  color: Colors.amberAccent,
                  shadows: [Shadow(blurRadius: 8, color: Colors.pinkAccent)]),
            ),
          ],
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration:
                  BoxDecoration(border: Border.all(width: 1), boxShadow: const [
                BoxShadow(
                  blurRadius: 2,
                  color: Colors.pinkAccent,
                  spreadRadius: 2,
                )
              ]),
              alignment: Alignment.center,
              width: double.infinity,
              height: 53,
              child: const Text(
                'strawberry pavlova recipe',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20),
            // Text
            Container(
              alignment: Alignment.center,
              child: const Text(
                'Pavlova is a meringue dessert that is made with such simple ingredients as egg whites and sugar. Sometimes, cream of tartar and cornstarch is also used.The meringue disk is baked only enough to crisp up the outside while leaving the inside marshmallow and soft.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  height: 1.5,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.vertical(
                  bottom: Radius.circular(30),
                ),
                border: Border.all(width: 1),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.star,
                            color: Colors.amberAccent,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amberAccent,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amberAccent,
                          ),
                          Icon(Icons.star),
                          Icon(Icons.star),
                        ],
                      ),
                      const Text('17 Reviews')
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // column 1
                        Column(
                          children: const [
                            Icon(
                              Icons.restaurant_sharp,
                              color: Colors.green,
                              size: 35,
                            ),
                            Text('Feed'),
                            Text('2 - 4')
                          ],
                        ),
                        Column(
                          children: const [
                            Icon(
                              Icons.category_sharp,
                              color: Colors.green,
                              size: 35,
                            ),
                            Text('Feed'),
                            Text('2 - 4')
                          ],
                        ),
                        Column(
                          children: const [
                            Icon(
                              Icons.emoji_food_beverage,
                              color: Colors.green,
                              size: 35,
                            ),
                            Text('Feed'),
                            Text('2 - 4')
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
