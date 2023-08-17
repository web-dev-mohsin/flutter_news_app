import 'package:flutter/material.dart';
import 'package:news_app/screeen/all_news.dart';
import 'package:news_app/screeen/braking_news.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Flutter news app"),
            bottom: TabBar(tabs: [
              Tab(
                text: 'Braking News',
              ),
              Tab(
                text: 'All News',
              ),
            ]),
          ),
          body: TabBarView(children: [
            BrakingNews(),
            AllNews(),
          ]),
        ));
  }
}
