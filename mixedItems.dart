void main(){
  List<dynamic> mixedItems = ['dhinesh', 1, 2, 'balaji', 5.5, 6.5,
                              3, 4, {'1':'Hotstar'}, {'2':'Netflix'}];

  List<int> intItems = [];
  List<double> doubleItems = [];
  List<String> stringItems = [];
  List<Map<String,String>> mapItems = [];
  
  for(var x in mixedItems){
    if(x is int){
      intItems.add(x);
    }
    else if(x is double){
      doubleItems.add(x);
    }
    else if(x is String){
      stringItems.add(x);
    }
    else{
      mapItems.add(x);
    }
  }
  print('Integers: $intItems');
  print('Double: $doubleItems');
  print('String: $stringItems');
  print('Map: $mapItems');
}