void main(){
  //var p = Person('Khanita', 'Khongsanthia', 20);

  //fetch from database
  var n = 'ABC';
  var p = 100;
  var product = Product(n, p);
   print(product.name);
   print(product.price.toString());

}
class Person {
  final String firstName ;
  final String lastName;
  final int age;

  Person(this.firstName,this.lastName,this.age);
}

class Product{
  final String name;
  final int price;

  Product(this.name,this.price);
}