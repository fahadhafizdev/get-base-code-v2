import 'dart:convert';
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get_base_code_v2/app/config/config.dart';
import 'package:get_base_code_v2/app/utils/util_log.dart';
import 'package:get_base_code_v2/app/utils/util_show_dialog_tool.dart';
import 'package:get_base_code_v2/app/utils/util_snackbar.dart';

import 'message_error.dart';
import 'share_prefference_service.dart';

class CustomService {
  Future<dynamic> request({
    required String title,
    required String url,
    required Method method,
    bool withToken = true,
    Map<String, dynamic> params = const {},
    Map<String, dynamic> queryParameters = const {},
    bool isMultipart = false,
  }) async {
    late Response response;
    Dio dio = Dio();
    late String token;

    try {
      //NOTE : CHECK WITH TOKEN

      if (withToken) {
        await SharedPrefferenceService().getToken().then((value) {
          token = value!;
        });

        log('token $token');

        dio = Dio(
          BaseOptions(
            contentType: isMultipart ? null : Headers.jsonContentType,
            receiveTimeout: const Duration(milliseconds: 15000),
            connectTimeout: const Duration(milliseconds: 15000),
            sendTimeout: const Duration(milliseconds: 15000),
            headers: {
              'Authorization': 'Bearer $token',
            },
          ),
        );
      } else {
        token = '';
        dio = Dio(
          BaseOptions(
            receiveTimeout: const Duration(milliseconds: 15000),
            connectTimeout: const Duration(milliseconds: 15000),
            sendTimeout: const Duration(milliseconds: 15000),
            contentType: Headers.jsonContentType,
          ),
        );
      }

      //NOTE : CHECK MULTIPART FOR IMAGE
      dynamic value =
          isMultipart ? await formData(params: params) : jsonEncode(params);

      //NOTE : CHECK METHOD API
      if (method == Method.GET) {
        response = await dio.get(
          url,
          queryParameters: queryParameters,
          data: value,
        );
      } else if (method == Method.POST) {
        response = await dio.post(
          url,
          data: value,
          queryParameters: queryParameters,
        );
      } else if (method == Method.DELETE) {
        response = await dio.delete(
          url,
          data: value,
          queryParameters: queryParameters,
        );
      } else if (method == Method.PUT) {
        response = await dio.put(
          url,
          data: value,
          queryParameters: queryParameters,
        );
      }

      //NOTE : CHECK RESPONSE STATUS
      UtilLog().logPrint(title: title, data: response.data['result']!);

      if (response.statusCode == 200) {
        return response.data;
      } else if (response.statusCode == 204) {
        return response.data;
      }
    } on DioException catch (e) {
      // if (e.response!.statusCode == 401) {
      //   log('clear logout');
      //   SharedPrefferenceService().clear();
      //   Get.offAndToNamed('/splashscreen');
      // }
      log('error dio exception $e');
      log('error dio exception ${e.message}');
      debugPrint('dio error ${e.type}');
      debugPrint('dio error ${e.response!.statusCode}');
      debugPrint('dio error ${e.response!.data['result']}');

      var message = e.response!.data['result'].toString();

      log('message error : $message');

      //if token invalid back to splashscreen
      // if (e.response!.data['code'].toString() == 'invalid_token') {
      //   debugPrint('do this logout');
      //   SharedPrefferenceService().clear();
      //   Get.offNamedUntil('/splashscreen', (route) => false);
      // }

      //custom handle error
      onError(title: title, message: message.toString(), err: e);

      throw Exception(message);
    }
  }

  Future<FormData> formData({required Map<String, dynamic> params}) async {
    return FormData.fromMap(params);
  }

  void onError(
      {required DioException err,
      required String title,
      String? message = ''}) {
    switch (err.type) {
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        // UtilSnackBar().show(title: 'Error Message', message: receiveTimeout);
        throw receiveTimeout;

      case DioExceptionType.cancel:
        break;
      case DioExceptionType.unknown:
        // UtilSnackBar().show(title: 'Error Message', message: messageOther);
        throw messageOther;

      default:
        int? code = err.response?.statusCode;
        switch (code) {
          case 400:
            // UtilSnackBar()
            // .show(title: 'Error Message', message: message ?? message400);
            throw message ?? message400;
          case 401:

            // UtilSnackBar()
            // .show(title: 'Error Message', message: message ?? message401);
            throw message401;
          case 404:
            // UtilSnackBar()
            // .show(title: 'Error Message', message: message ?? message404);
            throw message404;
          case 409:
            // UtilSnackBar()
            // .show(title: 'Error Message', message: message ?? message409);
            throw message409;
          case 500:
            // UtilSnackBar()
            //     .show(title: 'Error Message', message: message ?? message500);
            throw message500;
          default:
            // UtilSnackBar().show(title: 'Error Message', message: message ?? '');
            throw 'Undefinned';
        }
    }
  }
}

enum Method { POST, GET, DELETE, PUT }
