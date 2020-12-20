import 'package:dio/dio.dart';
import 'package:integrate_sqlite_api/src/models/programmer_model.dart';
import 'package:integrate_sqlite_api/src/providers/db_provider.dart';

class ProgrammerApiProvider {
  Future<List<Programmer>> getAllProgrammers() async {
    var url = "https://demo2479287.mockable.io/programmer";
    Response response = await Dio().get(url);

    return (response.data as List).map((programmer) {
      print('Inserting $programmer');
      DBProvider.db.createProgrammer(Programmer.fromJson(programmer));
    }).toList();
  }
}
