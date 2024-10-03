
String integerToWordedString(int number) {
  final ones = <String>['','one','two','three','four','five','six','seven','eight','nine'];
  final teens = <String>['','ten','eleven','twleve','thirteen','fourteen','fifteen','sixteen','seventeen','eighteen','nineteen'];
  final tens = <String>['zeroth','ten','twenty','thirty','fourty','fifty','sixty','seventy','eighty','ninety'];

  if (number == 0) {return "zero";}
  if (number < 10){return ones[number];}
  if (number < 20){return teens[(number / 10).floor()];}
  if (number < 100){return tens[(number / 10).floor()] + '-' +  integerToWordedString(number % 10);}
  if (number < 1000){return ones[(number/100).floor()] + " hundred" + ( (number%100==0) ? "" : " " + integerToWordedString(number % 100));}
  if (number<10000){return ones[(number/1000).floor()] + ' thousand' + ( (number%1000==0) ? "" : " " + integerToWordedString(number % 1000));}
  if (number<20000){return teens[(number/10000).floor()] + ' thousand' + ( (number%10000==0) ? "" : " " + integerToWordedString(number % 10000));}

  return 'woops';
}