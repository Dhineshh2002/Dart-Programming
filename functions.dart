void main(){
  int add = addition(2,3);
  print(add);
  
  print(getMessage());
  
  mayBeNull(5);
  
  reqFunc(s2:'World!', s:'Hello');
  reqFunc(s2:'Hello');
}

int addition(int a, int b)
{
  return a+b;
}

String getMessage(){
  return 'Hello';
}

mayBeNull(int a, [String? s]){
  print('$a $s');
}


reqFunc({required String s, String? s2}){
  print('$s $s2');
}

