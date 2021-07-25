import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

void main() {
  runApp(JsonDemo());
}

class JsonDemo extends StatelessWidget {
  const JsonDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Json Demo",
    );
  }
}
