import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ServicesInitializer {
  ServicesInitializer._();

  static final ServicesInitializer initializer = ServicesInitializer._();

  late ProviderContainer container;

  init(WidgetsBinding widgetsBinding, ProviderContainer container) async {
    this.container = container;

    // Init FirebaseApp instance before runApp
    await _
  }

  _initFirebase() async {
    await Firebase.initializeApp(

    );
  }

  
}
