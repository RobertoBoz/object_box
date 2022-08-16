

import 'package:object_box/data/objectbox.g.dart';
import 'package:path_provider/path_provider.dart' show getApplicationDocumentsDirectory;
import "package:path/path.dart" as join;


class ObjectBoxSigleton{

    static final ObjectBoxSigleton _singleton = ObjectBoxSigleton._internal();

  factory ObjectBoxSigleton() {
    return _singleton;
  }

  ObjectBoxSigleton._internal();

  static late Store store;

  static Future<void> initObjectStore() async {
     final directory = await getApplicationDocumentsDirectory();
    store = Store(
      getObjectBoxModel(),
      directory: join.join(directory.path,'objectbox')
    );
  }

  static void close() => store.close();
  


}