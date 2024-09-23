import 'package:flutter/material.dart';
import 'add_movie_page.dart';
import 'movie_model.dart';

class MovieListPage extends StatefulWidget {
  @override
  _MovieListPageState createState() => _MovieListPageState();
}

class _MovieListPageState extends State<MovieListPage> {
  List<Movie> movies = [];

  void _addMovie(Movie movie) {
    setState(() {
      movies.add(movie);
    });
  }

  void _removeMovie(int index) {
    setState(() {
      movies.removeAt(index);
    });
  }

  void _toggleWatched(int index) {
    setState(() {
      movies[index].watched = !movies[index].watched;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Movie> watchedMovies = movies.where((movie) => movie.watched).toList();
    List<Movie> unwatchedMovies = movies.where((movie) => !movie.watched).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Filmes',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFF651366),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddMoviePage(onAddMovie: _addMovie),
                ),
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Divider(height: 1, color: Color.fromARGB(255, 112, 105, 105)),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF651366),
                    Color(0xFFA71A5B),
                    Color(0xFFE7204E),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: unwatchedMovies.length,
                      itemBuilder: (context, index) {
                        final movie = unwatchedMovies[index];
                        return Card(
                          color: Color(0xFF651366),
                          margin: EdgeInsets.all(8.0),
                          child: ListTile(
                            leading: Checkbox(
                              value: movie.watched,
                              onChanged: (bool? value) {
                                _toggleWatched(movies.indexOf(movie));
                              },
                            ),
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  movie.title,
                                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                                ),
                                SizedBox(height: 4),
                                Text(movie.comments, style: TextStyle(color: Colors.white)),
                              ],
                            ),
                            trailing: IconButton(
                              icon: Icon(Icons.delete, color: Colors.red),
                              onPressed: () {
                                _removeMovie(movies.indexOf(movie));
                              },
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Filmes Assistidos',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 252, 252, 252)),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: watchedMovies.length,
                      itemBuilder: (context, index) {
                        final movie = watchedMovies[index];
                        return Card(
                          color: Color(0xFF651366),
                          margin: EdgeInsets.all(8.0),
                          child: ListTile(
                            leading: Checkbox(
                              value: movie.watched,
                              onChanged: (bool? value) {
                                _toggleWatched(movies.indexOf(movie));
                              },
                            ),
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  movie.title,
                                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                                ),
                                SizedBox(height: 4),
                                Text(movie.comments, style: TextStyle(color: Colors.white)),
                              ],
                            ),
                            trailing: IconButton(
                              icon: Icon(Icons.delete, color: Colors.red),
                              onPressed: () {
                                _removeMovie(movies.indexOf(movie));
                              },
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
