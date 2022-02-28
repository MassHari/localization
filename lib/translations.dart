import 'package:get/get.dart';
import 'langauges/ta.dart';
import 'langauges/te.dart';
import 'langauges/en.dart';

class Translation extends Translations{

  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys =>{
    "en":en,
    "ta":ta,
    "te":te
  };

}