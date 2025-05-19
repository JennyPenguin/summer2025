/*
  https://dart.dev/language/variables
*/

late String description; // can initialize later but make sure it is

main() {
  // create variable, type inference
  var name = 'Bob';
  print(name);

  // variable with explicit type
  String name2 = 'Alice';
  print(name2);

  // variable where type can change, everything in dart is object
  Object name3 = 'Hippo';
  name3 = 1;
  print(name3);

  /* 
    can be null or int, can't call functions that don't support
    null on it unless explicitly initialize
    initialize to null
  */
  int? name4;
  // okay bc toString supports null
  print(name4);
  // int name5 = name4; would cause error
  name4 = 5;
  int name5 = name4;
  print(name5);

  // this is okay but have to initialize before use
  int numCnt;
  // print(numCnt); would cause error
  // top level and class variables *lazily initialized*

  // dart can't check if properly initialized but used late
  description = 'hippo';
  print(description);

  // make it lazily initialized
  late int temp = 10000 * 8971232 ~/ 0;
  // int temp = 10000 * 8971232 ~/ 0; would cause error
  numCnt = 5;
  print(numCnt);

  final name6 = 'Bob';
  final String nickname6 = 'Bobby';
  print(nickname6);
}
