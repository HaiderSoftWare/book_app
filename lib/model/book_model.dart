class Book {
  String? name;
  String? image;
  String? price;
  String? descrption;
  String? author;
  String? rate;

  Book(
      {this.name,
      this.image,
      this.price,
      this.author,
      this.descrption,
      this.rate});

  @override
  String toString() {
    return ' $name $image $price $author $descrption $rate';
  }
}
