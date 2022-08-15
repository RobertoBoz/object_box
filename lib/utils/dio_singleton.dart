import 'package:dio/dio.dart';


class DioSingleton {
  factory DioSingleton() {
    _instance ??= DioSingleton._();
    return _instance!;
  }

  DioSingleton._();

  static DioSingleton? _instance;

  static late final Dio dio;

  static bool initSingletonbool = true;

  static void createDio() {
    if (initSingletonbool) {
      dio = Dio(
        BaseOptions(
          baseUrl: 'https://pokeapi.co/api/v2/',
          receiveTimeout: 30000, // 15 seconds
          connectTimeout: 30000,
          sendTimeout: 30000,
          contentType: 'application/json',
        ),
      );
      initSingletonbool = false;
    }
  }

  
}
