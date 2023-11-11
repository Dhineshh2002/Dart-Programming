Future<String> getName() async {
  return Future.delayed(const Duration(seconds: 2),
      () => throw 'Error occurred while getting name');
}

void printName() async {
  try {
    String name = await getName();
    print(name);
  } catch (err) {
    print('Uncaught Error: $err');
  }
}

void main() {
  printName();
}
