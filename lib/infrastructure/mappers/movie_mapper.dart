import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/infrastructure/models/moviedb/movie_moviedb.dart';

class MovieMapper {
  static Movie movieDBToEntity(MovieMovieDB movidedb) => Movie(
      adult: movidedb.adult,
      backdropPath: movidedb.backdropPath != ''
          ? 'https://image.tmdb.org/t/p/w500/${movidedb.backdropPath}.jpg'
          : 'https://sd.keepcalms.com/i/keep-calm-poster-not-found.png',
      genreIds: movidedb.genreIds.map((e) => e.toString()).toList(),
      id: movidedb.id,
      originalLanguage: movidedb.originalLanguage,
      originalTitle: movidedb.originalTitle,
      overview: movidedb.overview,
      popularity: movidedb.popularity,
      posterPath: movidedb.posterPath != ''
          ? 'https://image.tmdb.org/t/p/w500/${movidedb.posterPath}.jpg'
          : 'no-poster',
      releaseDate: movidedb.releaseDate,
      title: movidedb.title,
      video: movidedb.video,
      voteAverage: movidedb.voteAverage,
      voteCount: movidedb.voteCount);
}
