/*
https://dart.dev/language/built-in-types

Understanding null safety:
https://dart.dev/null-safety/understanding-null-safety#top-and-bottom


Object: superclass of all Dart classes except Null
Enum: superclass of all enums
Future and Stream: used in async programming
Iterable: For-in loops and generator functions
Never: exp can never sucessfully finish evaluating
dynamic: disable static type checking on variable
void: a value is never used

Numbers:
int & double are both subtypes of num
bitwise opeartors only defined in int class
*/

import 'package:characters/characters.dart';

void main() {
  // num can have both int and double values
  num x = 1;
  num y = (x as int) << 3;
  print(y);
  // would error bc already int
  double z = x * 3.9;
  print(z);

  // parsing strings
  var one = int.parse('1');
  var onePointOne = double.parse('1.1');

  String oneAsString = 1.toString();
  String piAsString = 3.14159.toStringAsFixed(2);
  print(piAsString);

  // underscore help improve readability of large number
  int b1 = 1_000_000;
  print(b1);
  // can skip {} if identifier
  print('$b1' == '1000000');
  print('${b1}' == '1000000');

  String s1 = '''
  There are multi-line strings like this''';
  print(s1 + '!!');

  var s = r'Int a raw string, there is no escape \n \t.';
  print(s);

  // const strings can only contain expressions that
  // evaluate to numeric, string, or bool value

  bool isHappy = true;

  // Runes, used to get unicodes
  print('I love Google \u2665');

  // characters package to read and write unicode characters
  var hi = 'Hi 🇩🇰';
  print(hi);
  print('The end of string: ${hi.substring(hi.length - 1)}');
  print('The last character : ${hi.characters.last}');

  // symbol object represent operator or identifier in progra,
  var name2 = #hi;
  print(name2);
}
