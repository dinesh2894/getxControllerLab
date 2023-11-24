import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserRepo {
  UserRepo(this.ref);

  final Ref ref;
  late IFirebaseCaller _firebaseCaller;
}
