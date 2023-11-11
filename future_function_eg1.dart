Future<void> printName() async {
  String name = await getName();
  print(name);
}

Future<String> getName() async {
  return Future.delayed(const Duration(seconds: 3), () => 'Dhinesh');
}

void main() {
  printName();
}
