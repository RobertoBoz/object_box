import 'package:object_box/utils/dio_singleton.dart';

class PokeApi {

  Future<void >getpokemons()async {

    try{
      final list = await DioSingleton.dio.get('pokemon?limit=100000&offset=0');
      int i = 0;
      for (final result in list.data['results']){

        

        final pokemon = await DioSingleton.dio.get(result[i]['url']);
      
        i++;
      }

    }catch(e){

    }
  }







}