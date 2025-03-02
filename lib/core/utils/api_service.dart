import 'package:dio/dio.dart';

class ApiService {
  final _baseurl = 'http://equinaapis.ordarawy.com/';
  final Dio _dio;

  ApiService(this._dio) {
    _dio.options.baseUrl = _baseurl;
    _dio.options.connectTimeout = const Duration(milliseconds: 20000);
    _dio.options.receiveTimeout = const Duration(milliseconds: 20000);
  }

  Future<Map<String, dynamic>> get(
      {required String endpoint, String? search, Options? Headers}) async {
    var response = await _dio.get(
      endpoint,
      queryParameters: {'search': search},
      options: Headers,
    );
    return response.data;
  }

  
}