import 'dart:developer';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:path_provider/path_provider.dart';

import '../error/exceptions.dart';
import '../error/failures.dart';

class ImageSelector {
  ImageSelector._();

  static final instance = ImageSelector._();

  static String? _appDocDirPath;

  Future<String> get appDocDir async {
    if (_appDocDirPath != null) return _appDocDirPath!;
    _appDocDirPath = await getAppDocDir();
    return _appDocDirPath!;
  }

  getAppDocDir() async {
    final appDocDir = await getApplicationDocumentsDirectory();
    return appDocDir.path;
  }

  Future<Either<Failure, File?>> pickImage(BuildContext context, {
    required bool formCamera,
  }) async {
    try {
      final _pickedFile = await ImagePicker()
    .


    return Right(_r)
    } catch (e) {
    log(e.toString());
    final _failure = DefaultFailure(message: Exceptions.errorMessage(e));
    return Left(_failure);
    }
  }
}
