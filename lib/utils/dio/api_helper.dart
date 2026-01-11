import 'dart:developer';
import 'package:dio/dio.dart';

class ApiHelper{
  static final Dio _dio = Dio(
    BaseOptions(
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
    )
  )..interceptors.add(
    LogInterceptor(
      request: true,
      requestHeader: true,
      requestBody: true,
      responseHeader: false,
      responseBody: true,
      error: true,
    ),
  );
  static Map<String,String> _headers(String? token){
    final Map<String, String> headers = {
      "Content-Type": "application/json",
      "Accept": "application/json",
      "User-Agent":"Mobile",
    };
    if (token != null && token.isNotEmpty) {
      headers['Authorization'] = 'Bearer $token';
    }
    return headers;
  }
  /// ================= GET =================
  static Future<Response?> get(
      String url, {
        String? token,
        Map<String, dynamic>? query,
      }) async {
    try {
      _printRequest("GET", url, token, query);

      final response = await _dio.get(
        url,
        queryParameters: query,
        options: Options(headers: _headers(token)),
      );

      _printResponse(response);
      return response;
    } on DioException catch (e) {
      _printError(e);
      rethrow;
    }
  }

  /// ================= POST =================
  static Future<Response?> post(
      String url, {
        String? token,
        dynamic body,
      }) async {
    try {
      _printRequest("POST", url, token, body);

      final response = await _dio.post(
        url,
        data: body,
        options: Options(headers: _headers(token)),
      );

      _printResponse(response);
      return response;
    } on DioException catch (e) {
      _printError(e);
      rethrow;
    }
  }

  /// ================= LOG HELPERS =================
  static void _printRequest(
      String method,
      String url,
      String? token,
      dynamic data,
      ) {
    log("🚀 API HIT [$method]");
    log("➡️ URL: $url");
    log("➡️ HEADERS: ${_headers(token)}");
    if (data != null) {
      log("➡️ BODY: $data");
    }
  }

  static void _printResponse(Response response) {
    log("✅ STATUS: ${response.statusCode}");
    log("✅ RESPONSE: ${response.data}");
  }

  static void _printError(DioException e) {
    log("❌ API ERROR");
    log("❌ URL: ${e.requestOptions.uri}");
    log("❌ STATUS: ${e.response?.statusCode}");
    log("❌ MESSAGE: ${e.message}");
    log("❌ RESPONSE: ${e.response?.data}");
  }
}

