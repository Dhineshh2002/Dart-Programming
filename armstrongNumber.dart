import 'dart:math';
void main()
{
  int num = 153;
  int count = 0, sum = 0;
  
  int temp = num;
  while(temp > 0){
    count++;
    temp = temp ~/ 10;
  }
  
  temp = num;
  while(temp > 0)
  {
    int remainder = temp%10;
    sum += pow(remainder, count).toInt();
    temp ~/= 10;
  }
  
  print('$num is armstrong number: ${sum == num}');
}
