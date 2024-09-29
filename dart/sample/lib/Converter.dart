
String integerToWordedString(int number) {
  final ones = <String>['zero','one','two','three','four','five','six','seven','eight','nine'];
  final teens = <String>['ten','eleven','twleve','thirteen','fourteen','fifteen','sixteen','seventeen','eighteen','nineteen'];
  final tens = <String>['zeroth','ten','twenty','thirty','fourty','fifty','sixty','seventy','eighty','ninety'];
  if (number < 10){return ones[number];}
  if (number < 20){return teens[number%10];}
  if (number < 100){return tens[(number / 10).floor()] + '-' +  integerToWordedString(number % 10);}
  return 'woops';
}