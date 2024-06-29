import 'package:clear/category_model.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FoodApp());
}
class FoodApp extends StatelessWidget {
  const FoodApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food App',
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  HomePage({super.key});
 

 
  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
   List<CategoryModel> categories =[];
 void _getCategories()
  {
   categories = CategoryModel.getCategories();
  }
  @override
  Widget build(BuildContext context) {
    _getCategories();
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade100,
      appBar: appBar(),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 40, right: 20, left: 20),
            child:TextField(
  decoration: InputDecoration(
    fillColor: Colors.white,
    prefixIcon: Icon(Icons.search, size: 25),
    filled: true,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: BorderSide.none,
    ),
    hintText: "Search pancake",
    hintStyle: TextStyle(color: Colors.black),
    suffixIcon: Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Icon(Icons.mic),
    ),
  ),
),
 ),
 SizedBox(height: 20,),
 Row(mainAxisAlignment: MainAxisAlignment.start,
   children: [
     Padding(
       padding: const EdgeInsets.only(left: 20),
       child: Text("Category",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
     ),
   ],
 ),
 SizedBox(height: 10,),
   Container(
    height: 150,
    child: ListView.builder(
      itemCount: categories.length,
      itemBuilder: (context,index){
      return Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: categories[index].boxcolor,
        ),
      );
    },
   ),
       ) ],
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
      backgroundColor: Colors.blueGrey.shade100,
      elevation: 0.0,
    );
  }
}
