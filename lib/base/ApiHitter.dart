import 'package:dio/dio.dart';

import 'ApiEndPoint.dart';

class ApiHitter {
  static Dio _dio = Dio(BaseOptions(
    baseUrl: ApiEndpoint.BASE_URL,
    connectTimeout: 30000,
    receiveTimeout: 30000,
  ));

  Future<ApiResponse> getApiResponse(String endPoint) async {
    try {
      Response response = await _dio.get(endPoint);
      return ApiResponse(true, response: response);
    } catch (error) {
      try {
        return ApiResponse(false,
            msg: "Sorry Something went wrong.",
            response: Response(
                requestOptions: RequestOptions(path: ApiEndpoint.BASE_URL)));
      } catch (e) {
        return ApiResponse(false,
            msg: "Can not connect to internet.",
            response: Response(
                requestOptions: RequestOptions(path: ApiEndpoint.BASE_URL)));
      }
    }
  }
}

class ApiResponse {
  final bool status;
  final String msg;
  final Response response;

  ApiResponse(
    this.status, {
    this.msg = "Success",
    required this.response,
  });
}
