Future <int> sumOfNum(Stream<int> stream) async {
  int sum = 0;
  
  await for(int value in stream){
    sum += value;
  }
  return sum;
}

Stream <int> pushNum(int num) async* { 
  
  for(int i = 1; i <= num; i++){
    yield i;
  }
}

void main() async {
  Stream<int> stream = pushNum(5);
  
  int sumOfnum = await sumOfNum(stream);
  
  print(sumOfnum);
}