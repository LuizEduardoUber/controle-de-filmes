class Movie {
  String title;
  bool watched;
  String comments;
  String imageUrl;
  Movie({
    required this.title,
    this.watched = false,
    this.comments = '',
    this.imageUrl = '',
  });
}
