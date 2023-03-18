import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

import '../../authentication/models/user_model.dart';

class UserRepository extends GetxController {
  static UserRepository get instance => Get.find();
  final _db = FirebaseFirestore.instance;

  createUser(UserModel user) {
    _db
        .collection("Users")
        .add(user.toJson())
        .whenComplete(
          () => Get.snackbar("Success", "You got in!!",
              snackPosition: SnackPosition.BOTTOM),
        )
        .catchError((error, stackTrace) {
      Get.snackbar("Error", "Oops!! Try again",
          snackPosition: SnackPosition.BOTTOM);
    });
  }
}
