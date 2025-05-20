/*

https://dart.dev/language/collections

*/

void main() {
  // list, only contain same types
  var list = ['hippo', 'bebe', 'cece'];

  // con create compile time constant list
  list = const ['j', 'a'];

  // set, unordered colelction of unique elements
  var halogens = {'fluorine', 'chlorine', 'bromine'};
  var names = <String>{};
  Set<String> names2 = {};
  // creates map, not set
  var names3 = {};
  var elements = <String>{};
  elements.add('fluorine');
  elements.addAll(halogens);

  // maps, key-value pairs, eack key unique
  var gifts = {'hippo': 2, 2: 'hippo'}; // Map<dynamic, dynamic >
  var gifts2 = Map<String, String>();
  gifts2['first'] = 'partridge';
  print(gifts2);
  print(gifts2['second'] == null);

  // collection, contains leaf elements and control flow elements
}
