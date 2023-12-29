import 'package:flutter_beginner_class/23_12_28/data_source/time_api.dart';
import 'package:flutter_beginner_class/23_12_28/model/time.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('현재 시간이 모델로 잘 들어가야 한다', () async {
    final api = TimeApi();
    Time time = await api.getTime();

    print(time.time);
    print(time.utcTime);

  });
}