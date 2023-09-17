import 'package:distingguish/custom_appBar.dart';
import 'package:distingguish/search_section.dart';
import 'package:distingguish/slider/Carouselwithdots.dart';
import 'package:distingguish/widgets/Categorieswidget.dart';
import 'package:distingguish/widgets/Drawerwidget.dart';
import 'package:distingguish/widgets/newestItem.dart';
import 'package:distingguish/widgets/popular.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              CustomAppBAr(),
              SizedBox(
                height: 20,
              ),
              SearchBAr(),
              SizedBox(
                height: 20,
              ),
              SliderScreen(),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 10),
                child: Text(
                  "Categories",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              CategoriesWidget(),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 10),
                child: Text(
                  "Popular",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              PopularItemWidget(),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 10),
                child: Text(
                  "All Time Favourite",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              NewestItemWidget(),
            ],
          ),
        ),
      ),
      drawer: DrawerWidget(),
      floatingActionButton: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 10,
                  offset: Offset(0, 3),
                )
              ]),
          child: FloatingActionButton(
            onPressed: () {
              Navigator.pushNamed(context, "cartPage");
            },
            child: Icon(
              CupertinoIcons.cart,
              color: Colors.red,
              size: 28.0,
            ),
            backgroundColor: Colors.white,
          )),
    );
  }
}
