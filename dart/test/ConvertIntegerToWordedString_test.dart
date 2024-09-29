import 'package:test/test.dart';
import '../sample/lib/converter.dart';   // Dart import syntax

void main() {
  group('ConvertIntegerToWordedStringTests', () {

    test('first positive integer is one', () {
      var number = 1;
      var words = integerToWordedString(number);
      expect(words.toLowerCase(), equals('one'));
    });

    test('first 2 digit integer is ten', () {
      var number = 10;
      var words = integerToWordedString(number);
      expect(words.toLowerCase(), equals('ten'));
    });


  });
}