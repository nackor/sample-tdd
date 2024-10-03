import 'package:test/test.dart';
import '../sample/lib/converter.dart';   // Dart import syntax

void main() {
  group('ConvertIntegerToWordedStringTests', () {

    test('first non-negative integer is zero', () {
      var number = 0;
      var words = integerToWordedString(number);
      expect(words.toLowerCase(), equals('zero'));
    });

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

    test('last 2 digit integer is ninety-nine', () {
      var number = 99;
      var words = integerToWordedString(number);
      expect(words.toLowerCase(), equals('ninety-nine'));
    });

    test('first 3 digit integer is one hundred', () {
      var number = 100;
      var words = integerToWordedString(number);
      expect(words.toLowerCase(), equals('one hundred'));
    });


  });
}