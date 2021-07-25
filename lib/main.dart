import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:json_demoo/bindings/appBindings.dart';

import 'homepage.dart';

void main() {
  runApp(JsonDemo());
}

class JsonDemo extends StatelessWidget {
  const JsonDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Json Demo",
      home: HomePage(),
      initialBinding: AppBindings(),
    );
  }
}
