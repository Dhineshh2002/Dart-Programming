void main(){
  Map<String, int> age = {
    'John':30, 
    'James': 35, 
    'Jack': 50
  };
  
  age.forEach((key, value){
    print('$key : $value');
  });
  print('');
  
  for(String key in age.keys){
    print('$key : ${age[key]}');
  }
  print('');
  
  for(MapEntry<String, int> entry in age.entries){
    print('${entry.key} : ${entry.value}');
  }
}