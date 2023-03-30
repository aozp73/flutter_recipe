import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecipePage extends StatelessWidget {
  const RecipePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _appBar(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: ListView(
            children: [
              _title("Recipes"),
              _menus(),
              _listItem("burger", "Made Burger"),
              _listItem("coffee", "Made Coffee"),
              _listItem("pizza", "Made Pizza"),
            ],
          ),
        )
    );
  }

  //_appBar
  AppBar _appBar() {
    return AppBar(
      // backgroudColor보단 테마로 지정하는게 더 좋음
      backgroundColor: Colors.white,
      actions: [
        IconButton(
            onPressed: () {
              print("클릭됨");
            },
            icon: Icon(CupertinoIcons.search),
            color: Colors.black),
        SizedBox(width: 15),
        Icon(CupertinoIcons.heart, color: Colors.redAccent),
        SizedBox(width: 15),
      ],
    );
  }


  // title
  Widget _title(String text, {double tp = 20.0}) {
    return Padding(
      padding: EdgeInsets.only(top: tp),
      child: Text(
        text,
        style: TextStyle(fontSize: 30),
      ),
    );
  }


  // menus
  Widget _menus() {
    return Padding(
      padding: const EdgeInsets.only(top:20),
      child: Row(
        children: [
          SizedBox(width: 15,),
          _menu(Icons.food_bank, "ALL"), // html의 div와 동일 빈박스
          SizedBox(width: 25,),
          _menu(Icons.emoji_food_beverage, "Coffee"),
          SizedBox(width: 25,),
          _menu(Icons.fastfood, "Burger"),
          SizedBox(width: 25,),
          _menu(Icons.local_pizza, "Pizza"),
          SizedBox(width: 25,),
        ],
      ),
    );
  }

  Widget _menu(IconData mIcon, String text) {
    return Container(
      width: 60,
      height: 80,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.black87)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(mIcon, color: Colors.redAccent, size: 30),
          Text(
              text,
              style: TextStyle(color: Colors.black87)
          )],
      ),
    );
  }

  // listItem
  Widget _listItem(String imageName, String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
              aspectRatio: 2 / 1,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  "assets/images/$imageName.jpeg",
                  fit: BoxFit.cover,
                ),
              )
          ),

          Text(
              title,
              style: TextStyle(fontSize: 20),),
          Text(
              "Have have Have have Have have Have have Have have Have have",
            style: TextStyle(color: Colors.grey, fontSize: 12)
          ),
        ],
      ),
    );
  }



}
