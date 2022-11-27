import 'package:argik/models/Veg.dart';
import 'package:fireauth/controllers/db_controller.dart';
import 'package:fireauth/utilities/server_response.dart';
import 'package:get/state_manager.dart';

class DataController extends GetxController {
  final DatabaseService _databaseService = DatabaseService(
      databaseUrl: "https://agrik-3b2ea-default-rtdb.firebaseio.com/");

  RxList<Veg> vegs = RxList.empty();
  RxMap details = RxMap({});

  @override
  void onInit() async {
    // TODO: implement onInit
    ServerResponse data = await _databaseService.getData(nodePath: "/vegs/");
    data.data.forEach((key, object) {
      print("👋 object ======>$object");
      vegs.add(Veg.fromMap(object));
    });
    ServerResponse detailsData =
        await _databaseService.getData(nodePath: "/details/");
    detailsData.data.forEach((key, object) {
      print("👋 details ======>$key : $object");
      details[key] = object;
    });
    super.onInit();
  }
}
