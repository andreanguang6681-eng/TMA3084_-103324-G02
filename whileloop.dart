import 'dart:io';

void main() {
  while (true) {
    print('Pizza Price: "Small: 5 USD, Medium: 7 USD, Large: 10 USD"');
    print('Please enter your pizza size (small, medium, or large):');
    String? sizeInput = stdin.readLineSync();
    String pizzaSize = (sizeInput ?? '').trim().toLowerCase();

    int pricePerPizza = 0;
    switch (pizzaSize) {
      case 'small':
        pricePerPizza = 5;
        break;
      case 'medium':
        pricePerPizza = 7;
        break;
      case 'large':
        pricePerPizza = 10;
        break;
      default:
        print('Invalid pizza size. Please try again.\n');
        continue;
    }

    print('How many pizzas do you want of $pizzaSize?');
    int quantity = int.parse(stdin.readLineSync()!);

    int totalPayment = pricePerPizza * quantity;
    print('Your Total Payment is: \$$totalPayment\n');

    print('Do you want to order again? (yes/no):');
    String? orderAgain = stdin.readLineSync();
    if ((orderAgain ?? '').trim().toLowerCase() != 'yes') {
      print('Thank you for your order!');
      break;
    }
    print('');
  }
}