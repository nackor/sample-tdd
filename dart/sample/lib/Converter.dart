
String integerToWordedString(int number) {
  if (number == 0) {return "zero";}
  return recurse_integerToWordedString(number);
}

String recurse_integerToWordedString(int number) {
  final ones = <String>['','one','two','three','four','five','six','seven','eight','nine'];
  final teens = <String>['ten','eleven','twelve','thirteen','fourteen','fifteen','sixteen','seventeen','eighteen','nineteen'];
  final tens = <String>['zeroth','ten','twenty','thirty','fourty','fifty','sixty','seventy','eighty','ninety'];
  if (number < 10){return ones[number];}
  if (number < 20){return teens[number % 10];}
  if (number < 100){return tens[(number / 10).floor()] + ( (number%10==0) ? "" : '-' + recurse_integerToWordedString(number % 10));}
  if (number < 1000){return ones[(number/100).floor()] + " hundred" + ( (number%100==0) ? "" : " " + recurse_integerToWordedString(number % 100));}
  if (number<1000000){return  recurse_integerToWordedString(number ~/ 1000) + ' thousand' + ( (number%1000==0) ? "" : " " + recurse_integerToWordedString(number % 1000));}

  return 'woops';
}

