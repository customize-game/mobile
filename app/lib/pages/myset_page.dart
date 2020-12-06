import 'package:flutter/material.dart';

class MysetPage extends StatelessWidget {
  MysetPage();

  void _onPressedFloatingActionButton(){
    // マイセット追加処理
  }
  
  @override
  Widget build(BuildContext context) {
    final titleTextStyle = Theme.of(context).textTheme.title;
    return Scaffold(
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.cyan,
            borderRadius: BorderRadius.all(Radius.circular(20.0))
          ),
          child: Center(
            child: Text(
              "myset",
              style: TextStyle(
                fontSize: titleTextStyle.fontSize,
                color: titleTextStyle.color,
              ),
            ),
          ),
        ),
      ),
      floatingActionButton:FloatingActionButton(
        onPressed: _onPressedFloatingActionButton ,
        child: Icon(Icons.add),
        backgroundColor: Colors.indigo,
      ),
    );
  }
}