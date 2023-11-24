import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MainCoreProvider {
  MainCoreProvider(this.ref) {}

  final Ref ref;

  /// User module method
  Future<bool> checkValidAuth() async {
    final _uid = getCurrentUserAuthUid();

    if (_uid != null) {
      return await validAuth(_uid);
    } else {
      return false;
    }
  }

  String? getCurrentUserAuthUid() {
    return FirebaseAuth.instance.currentUser?.uid;
  }

  Future<bool> validAuth(String uid)async{
    final _result = await _userRepo
  }
}
