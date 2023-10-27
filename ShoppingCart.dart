abstract class CartItem {
  String? name;
  double price = 0.0;
  int quantity = 0;

  CartItem(this.name, this.price, this.quantity);
}

class Product extends CartItem {
  Product(String name, double price, int quan) : 
    super(name, price, quan);
}

class ShoppingCart {
  List<CartItem> items = [];

  void addToCart(CartItem item) {
    items.add(item);
  }

  void removeFromCart(CartItem item) {
    items.remove(item);
  }

  void viewCart() {
    for(var x in items){
      print('${x.name}, ${x.price}, ${x.quantity}');
    }
    print('');
  }

  double calculateTotalPrice() {
    double total = 0.0;
    for(var x in items){
      total += x.price * x.quantity;
    }
    return total;
  }
}

void main() {
  final Product cart1 = Product('IceCream', 40.0, 3);
  final Product cart2 = Product('Milky Bikis', 10.0, 1);
  final Product cart3 = Product('50"50', 20.0, 2);
  
  ShoppingCart sCart = ShoppingCart();
  sCart.addToCart(cart1);
  sCart.addToCart(cart2);
  sCart.addToCart(cart3);
  
  sCart.viewCart();
  
  print('Total price: ${sCart.calculateTotalPrice()}\n');
  
  sCart.removeFromCart(cart2);
  
  sCart.viewCart();
  
  print('Total price: ${sCart.calculateTotalPrice()}\n');
}
