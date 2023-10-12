import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/infrastructure/models/moviedb/movie_details.dart';
import 'package:cinemapedia/infrastructure/models/moviedb/movie_moviedb.dart';

class MovieMapper {
  static Movie movieDBToEntity(MovieMovieDB movidedb) => Movie(
      adult: movidedb.adult,
      backdropPath: movidedb.backdropPath != ''
          ? 'https://image.tmdb.org/t/p/w500/${movidedb.backdropPath}'
          : 'https://sd.keepcalms.com/i/keep-calm-poster-not-found.png',
      genreIds: movidedb.genreIds.map((e) => e.toString()).toList(),
      id: movidedb.id,
      originalLanguage: movidedb.originalLanguage,
      originalTitle: movidedb.originalTitle,
      overview: movidedb.overview,
      popularity: movidedb.popularity,
      posterPath: movidedb.posterPath != ''
          ? 'https://image.tmdb.org/t/p/w500/${movidedb.posterPath}'
          : 'no-poster',
      releaseDate: movidedb.releaseDate,
      title: movidedb.title,
      video: movidedb.video,
      voteAverage: movidedb.voteAverage,
      voteCount: movidedb.voteCount);

  static Movie movieDetailsToEntity(MovieDetails movie) => Movie(
      adult: movie.adult,
      backdropPath: movie.backdropPath != ''
          ? 'https://image.tmdb.org/t/p/w500/${movie.backdropPath}'
          : 'https://sd.keepcalms.com/i/keep-calm-poster-not-found.png',
      genreIds: movie.genres.map((e) => e.name).toList(),
      id: movie.id,
      originalLanguage: movie.originalLanguage,
      originalTitle: movie.originalTitle,
      overview: movie.overview,
      popularity: movie.popularity,
      posterPath: movie.posterPath != ''
          ? 'https://image.tmdb.org/t/p/w500/${movie.posterPath}'
          : 'https://sd.keepcalms.com/i/keep-calm-poster-not-found.png',
      releaseDate: movie.releaseDate,
      title: movie.title,
      video: movie.video,
      voteAverage: movie.voteAverage,
      voteCount: movie.voteCount);
}
