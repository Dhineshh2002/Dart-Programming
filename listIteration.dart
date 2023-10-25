void main(){
  List <int> num = [1,2,3,4,5];
  
  for(int i=0; i<num.length; i++){ 
    print(num[i]);
  }
  print('');
  
  num.forEach((elements)=>print(elements));
  print('');
  
  for(int element in num){
    print(element);
  }
  print('');
  
  Iterator<int> it = num.iterator;
  while(it.moveNext()){
    print(it.current);
  }
}