void main() {
  print('Fibonacci:');
  fibonacci(10);
  
  print('\nPalindrome:');
  String str = 'madam';
  print('$str is ${palindrome(str)}');
  print('random is ${palindrome('ramdom')}');
}

String palindrome(String s){
  int i, n = s.length;
  for(i=0; i<n; i++){
    if(s[i] != s[n-i-1]){
      break;
    }
  }
  if(i == n){
    return 'palindrome';
  }
  return 'not a palindrome';
}

void fibonacci(int n)
{
  int a = 0, b = 1, sum = 0;
  print('$a \n$b');
  for (int i = 2; i < 10; i++) {
    sum = a+b;
    a = b;
    b = sum;
    print(sum);
  }
}
