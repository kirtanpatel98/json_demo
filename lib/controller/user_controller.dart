import 'package:get/get.dart';
import 'package:json_demoo/modelsl/person_models.dart';
import 'package:json_demoo/networkServices.dart/api_services.dart';

class UserController extends GetxController {
  RxList<PersonModels> userList = RxList();
  RxBool userLoader = RxBool(true);

  @override
  void onInit() {
    fetchData();
    super.onInit();
  }

  void fetchData() async {
    try {
      userLoader();
      var result = await ApiServices.getdata();
      userList.clear();
      if (result != null) {
        userList.addAll(result);
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
