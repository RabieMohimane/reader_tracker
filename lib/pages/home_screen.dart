import 'package:flutter/material.dart';
import 'package:reader_tracker/models/book.dart';
import 'package:reader_tracker/network/network.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Book> _books = [];
  Network network = Network();
  Future<void> _searchBooks(String query) async {
    try {
      List<Book> books = await network.searchBooks(query);
      print(books.toString());
      setState(() {
        _books = books;
      });
    } on Exception catch (e) {
      print('Error fetching books: $e');
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Search Books',
                  suffixIcon: Icon(Icons.search),
                ),
                onSubmitted: _searchBooks,
              ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8.0,
                    mainAxisSpacing: 8.0,
                    childAspectRatio: 0.7,
                  ),
                  itemCount: _books.length,
                  itemBuilder: (context, index) {
                    final book = _books[index];
                    return Container(
                     
                      margin: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.surfaceContainerHighest,
                     
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                      
                        
                        children: [
                          if (book.volumeInfo?.imageLinks?.thumbnail != null)
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.network(
                                book.volumeInfo!.imageLinks!.thumbnail!,
                                fit: BoxFit.cover,
                              ),
                            ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0, right: 8.0,bottom: 8.0),
                            child: Text(
                              book.volumeInfo?.title ?? 'No Title',
                              style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.bold, fontSize: 12.0),
                           textAlign: TextAlign.center,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0, right: 8.0,bottom: 8.0),
                            child: Text(

                              book.volumeInfo?.authors.join(', ') ?? 'Unknown Author',
                               style: Theme.of(context).textTheme.bodySmall,
                               overflow: TextOverflow.ellipsis,
                               textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
                // child: ListView.builder(
                //   itemCount: _books.length,
                //   itemBuilder: (context, index) {
                //     return ListTile(
                //       title: Text(_books[index].volumeInfo!.title!),
                //       subtitle: Text(_books[index].volumeInfo!.authors.join(', ')),
                //     );
                //   },
                // ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
