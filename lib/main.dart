import 'package:flutter/material.dart';

import 'categories_screen.dart';
import 'router/router.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'DeliMeals',
        theme: ThemeData(
          colorScheme:
              ColorScheme.fromSwatch(primarySwatch: Colors.pink).copyWith(
            secondary: Colors.amber,
          ),
          appBarTheme: const AppBarTheme(
            // color:ColorManager.primary,
            elevation: 10,
            centerTitle: true,
            iconTheme: IconThemeData(
              color: Colors.white,
            ),
          ),
          canvasColor: const Color.fromRGBO(255, 254, 229, 1),
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
                //body1
                overline: const TextStyle(
                  color: Color.fromRGBO(20, 51, 51, 1),
                ),
                //body2
                caption: const TextStyle(
                  color: Color.fromRGBO(20, 51, 51, 1),
                ),
                // title
                bodyText1: const TextStyle(
                  fontSize: 20,
                  fontFamily: 'RobotoCondensed',
                  fontWeight: FontWeight.bold,
                ),
              ),
        ),
              onGenerateRoute: (settings) => generateRoute(settings),
              
        home: const CategoriesScreen());
  }
}
