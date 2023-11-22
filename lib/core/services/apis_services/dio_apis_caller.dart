import 'dart:developer';

import 'package:getx_controller/core/error/exceptions.dart';
import 'package:getx_controller/core/error/failures.dart';
import 'package:getx_controller/core/services/apis_services/i_apis_caller.dart';
import 'package:dio/dio.dart';

class DioApisCaller implements IApisCaller {
  DioApisCaller() {
    dio = Dio(
      BaseOptions(
        connectTimeout: const Duration(milliseconds: 20000),
        receiveTimeout: const Duration(milliseconds: 20000),
      ),
    );
  }

  late Dio dio;

  @override
  Future<T> getData<T>(
      {required String path,
      Map<String, dynamic>? headers,
      Map<String, String>? queryParameters,
      required T Function(dynamic data) builder}) async {
    try {
      dio.options.headers = headers;
      Response response = await dio.get(path, queryParameters: queryParameters);
      return builder(response.data);
    } catch (e) {
      log(e.toString());
      final failure = ServerFailure(
        message: Exceptions.errorMessage(e),
        statusCode: Exceptions.statusCode(e),
      );
      return builder(failure);
    }
  }

  @override
  Future<T> postData<T>({
    required String path,
    required Map<String, dynamic>? headers,
    data,
    required T Function(dynamic data) builder,
  }) async {
    try {
      dio.options.headers = headers;
      Response response = await dio.post(path, data: data);
      return builder(response.data);
    } catch (e) {
      log(e.toString());

      final failure = ServerFailure(
        message: Exceptions.errorMessage(e),
        statusCode: Exceptions.statusCode(e),
      );

      return builder(failure);
    }
  }

  @override
  Future<T> patchData<T>({
    required String path,
    required Map<String, dynamic>? headers,
    data,
    required T Function(dynamic data) builder,
  }) async {
    try {
      dio.options.headers = headers;
      Response response = await dio.patch(path, data: data);
      return builder(response.data);
    } catch (e) {
      log(e.toString());
      final failure = ServerFailure(
        message: Exceptions.errorMessage(e),
        statusCode: Exceptions.statusCode(e),
      );
      return builder(failure);
    }
  }

  @override
  Future<T> putData<T>({
    required String path,
    required Map<String, dynamic>? headers,
    data,
    required T Function(dynamic data) builder,
  }) async {
    try {
      dio.options.headers = headers;
      Response response = await dio.put(path, data: data);
      return builder(response.data);
    } catch (e) {
      log(e.toString());
      final failure = ServerFailure(
        message: Exceptions.errorMessage(e),
        statusCode: Exceptions.statusCode(e),
      );

      return builder(failure);
    }
  }

  @override
  Future<T> deleteData<T>({
    required String path,
    required Map<String, dynamic>? headers,
    data,
    required T Function(dynamic data) builder,
  }) async {
    try {
      dio.options.headers = headers;
      Response response = await dio.delete(path, data: data);
      return builder(response.data);
    } catch (e) {
      log(e.toString());
      final failure = ServerFailure(
        message: Exceptions.errorMessage(e),
        statusCode: Exceptions.statusCode(e),
      );
      return builder(failure);
    }
  }
}
