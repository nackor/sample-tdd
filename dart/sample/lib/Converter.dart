
String integerToWordedString(int number) {
  final ones = <String>['zero','one','two','three','four','five','six','seven','eight','nine'];
  final tens = <String>['ten','eleven','twleve','thirteen','fourteen','fifteen','sixteen','seventeen','eighteen','nineteen'];
  if (number < 10){return 'one';}
  if (number < 20){return 'ten';}
  return 'woops';
}