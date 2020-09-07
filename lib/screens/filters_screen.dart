import '../widgets/main_drawer.dart';
import 'package:flutter/material.dart';

class FiltersScreen extends StatelessWidget {
  static const routeName = '/filter-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filter'),
      ),
      drawer: MainDrawer(),
      body: Center(
        child: Text('Filter page'),
      ),
    );
  }
}
