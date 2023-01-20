import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  final String titleAppBar = 'AppBar';
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: titleAppBar,
      home: Scaffold(
        appBar: MyAppBar(title:titleAppBar),
        body: Container(
          alignment: Alignment.center,
        ),
      ),
    );
  }
}

class MyAppBar extends StatelessWidget implements
    PreferredSizeWidget {
  final String title;
  final double sizeAppBar = 200.0;

  const MyAppBar({Key? key, required this.title}) : super(key:
  key);

  @override
  Size get preferredSize => Size.fromHeight(sizeAppBar);

  @override build(BuildContext context) {

    return AppBar(
      title: Text(title),
      backgroundColor: Colors.black,
      elevation: 10.0,
      leading: IconButton(
          onPressed: (){},
          icon: const
          Icon(Icons.menu)
      ),
      actions: [
        IconButton(
            onPressed: (){},
            icon: const Icon(
                Icons.settings),
        )
      ],
    );
  }
}
