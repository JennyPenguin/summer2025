/*
https://dart.dev/language/operators
*/

// operators create expressions

void main() {
  int a = 0;
  a++;
  print(a);

  int b = ++a;
  print(b--);
  print(a > b);

  // int division
  int c = 3 ~/ 2;
  print(c);

  // to test if two object represent the same thing, use ==
  // to test if exact same object, use identical()

  // operators like == are invoked on first operand (in terms of type)

  /*
  as can type cast, works only when subtype
  throws error if null or incorrect type
  */
  // String name = '1';
  // int age = name as int;

  int? d;
  // checks is type + null
  if (d is int) {
    print(d + 2);
  } else {
    print("oops2");
  }
  // assign only if variable is null
  d ??= 3;
  print(d);

  int? e = 5;
  e ??= 3;
  print(e);

  // compound assignment operators
  // a op = b is the same as a = a op b

  int value = 0x22;
  print(value);

  bool isPublic = true;
  var vis = isPublic ? 'public' : 'private';

  // ?? returns first if non-null else second
  String playerName(String? name) => name ?? 'Guest';
  print(playerName('hippo j'));

  // cascade notation, operate on same object
  // ?.. on first operator ensures non-null
  /*
  document.querySelectior('#confirm')
    ?..textContent =
        'Confirm'
    ..classList.add('important')
    ..onClick.listen((e) => window.alert('Confirmed!'))
    ..scrollIntoView();
  */
  // can only cascade on function that return an object

  // spread operators (not an operator but part of the collection literal)
  // evalute collection, unpack values, and inserts them into another collection
  var list1 = [1, 2, 3];
  var list2 = [...list1 + list1];
  print(list2);

  int? h = 2;
  // can cast to non-null type with ! but error if null
  // only work on more complicated objects
  
  // will think casting to bool
  //print(!h);
}
