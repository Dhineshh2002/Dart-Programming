void main(){
  List<dynamic> mixedItems = [{1:"balaji"},{2:"dhinesh"},
                              ["one","two","three"],{1,2,3,4}];
  
  Map<int, String> mapItems = {};
  List<String> listItems = [];
  Set<int> setItems = {};
  
  for(var items in mixedItems){
    if(items is Map<int, String>){
      mapItems.addAll(items);
    }
    else if(items is Set<int>){
      setItems.addAll(items);
    }
    else{
      listItems.addAll(items);
      // listItems += items;
    }
  }
  print('Map: $mapItems');
  print('Set: $setItems');
  print('List: $listItems');
}