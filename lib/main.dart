import 'package:flutter/material.dart';
import 'package:flutter_wordpress/flutter_wordpress.dart' as wp;
import 'package:greenilluv1/routes/Routes.dart';
import 'package:greenilluv1/products/product_list.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'login.dart';

Future<void> main()  async {

  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String login = prefs.getString("email");
  runApp(
      new MaterialApp(
        title: 'Green illu',
        theme: new ThemeData(
            primarySwatch: Colors.indigo
        ),
        home: login == null ? LoginPage() : ProductsListPage(),
        routes:  {
          Routes.products: (context) => ProductsListPage(),
          Routes.login: (context) => LoginPage()
        },
      )
  );
}
