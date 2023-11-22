import 'package:flutter_riverpod/flutter_riverpod.dart';

final connectivityServiceProvider = Provider<IConnectivityService>((ref) {
  return ConnectivityService();
});

abstract class IConnectivityService {
  init();
}

class ConnectivityService implements IConnectivityService {
  ///[_isInitialized] is used to ensure that the listeners are only called once
  bool _isInitialized = false;

  ///
  bool _isCoonected = true;

  @override
  init() {
    if (_isInitialized) return;
  }

  _initConnectivityStream(){
    
  }
}
