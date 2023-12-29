import 'dart:async';

import 'package:flutter_beginner_class/23_12_28/data_source/time_api.dart';

import '../23_12_28/model/time.dart';

class SeoulTimeRepo {
  final _api = TimeApi();

  final _timeStream = StreamController<Time>();

  SeoulTimeRepo() {
    Timer.periodic(Duration(seconds: 1), (timer) async {
      final time = await _api.getTime();
      _timeStream.add(time);
    });
  }

  Future<Time> getTime() => _api.getTime();

  Stream<Time> getTimeStream() => _timeStream.stream;
}
