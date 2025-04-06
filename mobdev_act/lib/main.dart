import 'package:flutter/material.dart';
import 'package:mobdev_act/home_page.dart';
import 'package:mobdev_act/shop.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  const Main({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Navigation Demo',
              style: TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
          leading: Image(
            image: AssetImage('assets/icons/fubuki.jpg'),
            width: 5.0,
            height: 5.0,
          ),
          backgroundColor: const Color.fromARGB(255, 15, 90, 18),
          titleTextStyle: TextStyle(
              color: const Color.fromARGB(255, 8, 6, 6),
              fontSize: 25.00,
              fontWeight: FontWeight.bold),
        ),
        bottomNavigationBar: BottomAppBar(
          color: const Color.fromARGB(255, 31, 74, 32),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.home),
                color: const Color.fromARGB(255, 198, 213, 195),
                iconSize: 30.0,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ),
                  );
                },
              ),
              SizedBox(width: 100),
              IconButton(
                icon: Icon(Icons.shopping_cart),
                color: const Color.fromARGB(255, 198, 213, 195),
                iconSize: 30.0,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Shop(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                const Color.fromARGB(255, 42, 204, 64),
                const Color.fromARGB(255, 42, 204, 64)
              ],
            ),
          ),
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Hello, World!',
                      style: TextStyle(
                        fontSize: 24,
                        color: const Color.fromARGB(255, 8, 6, 6),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
