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

    test('a different 3 digit integer is three hundred sixty-four', () {
      var number = 364;
      var words = integerToWordedString(number);
      expect(words.toLowerCase(), equals('three hundred sixty-four'));
    });

    test('first 4 digit integer is one thousand', () {
      var number = 1000;
      var words = integerToWordedString(number);
      expect(words.toLowerCase(), equals('one thousand'));
    });
    test('another 4 digit integer is one thousand five hundred one', () {
      var number = 1501;
      var words = integerToWordedString(number);
      expect(words.toLowerCase(), equals('one thousand five hundred one'));
    });

    test('first 5 digit integer is ten thousand', () {
      var number = 10000;
      var words = integerToWordedString(number);
      expect(words.toLowerCase(), equals('ten thousand'));
    });

    test('another 5 digit integer is twelve thousand twenty-six', () {
      var number = 12026;
      var words = integerToWordedString(number);
      expect(words.toLowerCase(), equals('twelve thousand twenty-six'));
    });

    test('first integer larger than or equal to 20,000 is twenty thousand', () {
      var number = 20000;
      var words = integerToWordedString(number);
      expect(words.toLowerCase(), equals('twenty thousand'));
    });

    test('5 digit integer larger than 36057 is thirty-six thousand fifty-seven', () {
      var number = 36057;
      var words = integerToWordedString(number);
      expect(words.toLowerCase(), equals('thirty-six thousand fifty-seven'));
    });

    test('first 6 digit integer 100000 is one hundred thousand', () {
      var number = 100000;
      var words = integerToWordedString(number);
      expect(words.toLowerCase(), equals('one hundred thousand'));
    });

    test('another 6 digit integer 999999 is nine hundred thousand nine hundred ninety nine', () {
      var number = 999999;
      var words = integerToWordedString(number);
      expect(words.toLowerCase(), equals('nine hundred thousand nine hundred ninety nine'));
    });

  });
}