import 'package:book_app/pages/home/widgets/book_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../models/book.dart';

class BookStaggeredGridView extends StatelessWidget {
  final int selected;
  final PageController pageController;
  final Function callback;

  BookStaggeredGridView(
    this.selected,
    this.callback,
    this.pageController, {
    Key? key,
  }) : super(key: key);
  final bookList = Book.generateBooks();

  @override
  Widget build(BuildContext context) {
    return Container(

      padding: EdgeInsets.symmetric(horizontal: 20),
      child: PageView(
        controller: pageController,
        onPageChanged: (index)=>callback(index),
        children: [
          MasonryGridView.count(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            crossAxisCount: 2,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            itemCount: bookList.length,
            itemBuilder: (context, index) =>
                BookItem(book: bookList[index]),
          ),

        ],
      ),

    );
  }
}
