import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:json_demoo/controller/user_controller.dart';

class HomePage extends StatelessWidget {
  final UserController controller = Get.put(UserController());
  final UserController usercontroller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Json Demo"),
      ),
      body: ListView(
        children: [
          _buildContainer(),
        ],
      ),
    );
  }

  _buildContainer() {
    return Obx(
      () {
        return ListView.builder(
          itemCount: usercontroller.userList.length,
          shrinkWrap: true,
          itemBuilder: (c, i) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 200,
                width: Get.width,
                color: Colors.red,
                child: Column(
                  children: [
                    Text(
                      usercontroller.userList[i].name,
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      usercontroller.userList[i].age,
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      usercontroller.userList[i].gender,
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      usercontroller.userList[i].height,
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
