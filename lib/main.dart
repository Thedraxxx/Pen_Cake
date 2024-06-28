import 'package:flutter/material.dart';

void main() {
  runApp(const FoodApp());
}

class FoodApp extends StatelessWidget {
  const FoodApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar(),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 40, right: 20, left: 20),
            child: TextField(
              decoration:
               InputDecoration(fillColor: Colors.blue,
                  prefixIcon: Icon(Icons.search),
                  filled: true,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none),
                  hintText: "Search panecake",
                  suffixIcon: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Icons.mic),
                    ],
                  )),
            ),
          )
        ],
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.only(left: 40),
        child: Icon(
          Icons.arrow_back_ios_new_sharp,
          color: Colors.black,
          size: 18,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 40),
          child: IconButton(
              onPressed: null,
              icon: Icon(
                Icons.more_horiz_rounded,
                color: Colors.black,
                size: 18,
              )),
        )
      ],
      title: Text(
        "Breakfast",
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
      ),
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0.0,
    );
  }
}
