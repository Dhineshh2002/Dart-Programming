void main() {
  List l = [1, 2, 2, 3, 3, 4, 4, 5.3];
  print('List: $l');

  print("Printing list using loop:");
  for (var x in l) {
    print(x);
  }
  print('');

  l.add(10);
  print('10 is added');
  print(l);

  l.remove(1);
  print('1 is removed');
  print(l);

  l.removeRange(0, 3);
  print('3 elements removed');
  print(l);
  
  Set s = {1,2,3,4};
  print('\nSet: $s');
  
  print('\nMap:');
  Map m = {};
  for(var x in l){
    if(m[x] == null){
      m[x] = 1;
    }
    else{
      m[x] += 1;
    }
  }
  print(m);
}
