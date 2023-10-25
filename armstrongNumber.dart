import 'dart:math';

void main() {
  int num = 153;
  int sum = 0;
  int length = findLength(num);

  int temp = num;
  while (temp > 0) {
    int remainder = temp % 10;
    sum += pow(remainder, length).toInt();
    temp ~/= 10;
  }

  print('$num is armstrong number: ${sum == num}');
}

int findLength(int num) {
  int length = 0;
  while (num > 0) {
    length++;
    num ~/= 10;
  }
  return length;
}
