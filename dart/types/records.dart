/*
  https://dart.dev/language/records

  fixed sized, immutable, typed
*/

// can also give record type a name
typedef ButtonItem = ({String label, void Function()? onPress});

void main() {
  var record = ('first', a: 2, b: true, 'last');

  // record types annotations
  (int, int) swap((int, int) record) {
    var (a, b) = record;
    return (b, a);
  }

  print(swap((1, 2)));

  (String, int) record2 = ('string', 12);

  // record type annotation with named fields which are part of type
  ({int a, bool b}) record3 = (a: 123, b: true);
  // would cause error
  // ({int x, bool y}) record4 = record3;

  // can also name positional fields but don't affect type
  (int x, int y) record4 = (1, 2);

  // records are immutable!!
  print(record.$1);
  print(record.a);

  // the type of a record is its shape: set of fields, field types, and their names if any

  // can use record to retrive multiple return values
  (String name, int age) userInfo(Map<String, dynamic> json) {
    return (json['name'] as String, json['age'] as int);
  }

  final json = <String, dynamic>{'name': 'dash', 'age': 10};

  var (name2, age2) = userInfo(json);
  print(name2);

  // destructure with named fields
  ({String name, int age}) userInfo2(Map<String, dynamic> json) {
    return (name: json['name'] as String, age: json['age'] as int);
  }

  final (:name, :age) = userInfo2(json);
  print(name);

  final List<ButtonItem> buttons = [(label: "b1", onPress: () => print('hi'))];

  // can convert record types to class or extension types
}
