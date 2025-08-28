import 'package:flutter/cupertino.dart';

import '../../../models/book.dart';

class BookItem extends StatelessWidget {
  final Book book;
  const BookItem({required this.book,super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: book.height as double,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(book.imgUrl),
        fit: BoxFit.fitWidth,
        ),
            borderRadius: BorderRadius.circular(16),
      ),
    );
  }
}
