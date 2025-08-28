class Book {
  String type;
  String name;
  String publisher;
  DateTime date;
  String imgUrl;
  num Score;
  num ratings;
  String review;
  num height;

  Book(this.type,
      this.name,
      this.publisher,
      this.date,
      this.imgUrl,
      this.Score,
      this.ratings,
      this.review,
      this.height,
      );

  static List<Book> generateBooks() {
    return [
      Book(
          'history',
          'This is the way',
          'istudio',
          DateTime(2019, 3, 23),
          'assets/images/book1.jpeg',
          4.7,
          892,
          'Ifailed the first quartr of a class in school,so I am...',
          220.0
      ),
      Book(
          'Action',
          'This is the way',
          'istudio',
          DateTime(2019, 3, 23),
          'assets/images/book2.jpeg',
          4.7,
          892,
          'Ifailed the first quartr of a class in school,so I am...',
          220.0
      ),
      Book(
          'history',
          'This is the way',
          'istudio',
          DateTime(2019, 3, 23),
          'assets/images/book3.jpeg',
          4.7,
          892,
          'Ifailed the first quartr of a class in school,so I am...',
          220.0
      ),
      Book(
          'history',
          'This is the way',
          'istudio',
          DateTime(2019, 3, 23),
          'assets/images/book4.jpeg',
          4.7,
          892,
          'Ifailed the first quartr of a class in school,so I am...',
          220.0
      ),
      Book(
          'history',
          'This is the way',
          'istudio',
          DateTime(2019, 3, 23),
          'assets/images/book5.jpeg',
          4.7,
          892,
          'Ifailed the first quartr of a class in school,so I am...',
          220.0
      ), Book(
          'history',
          'This is the way',
          'istudio',
          DateTime(2019, 3, 23),
          'assets/images/book6.jpeg',
          4.7,
          892,
          'Ifailed the first quartr of a class in school,so I am...',
          220.0
      ),

    ];
  }

}