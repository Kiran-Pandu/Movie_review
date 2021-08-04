import 'dart:convert';
import 'package:http/http.dart';

class MoviesModel {
  late bool adult;
  late String backdropPath;
  late Null belongsToCollection;
  late int budget;
  late List<Genres> genres;
  late String homepage;
  late int id;
  late String imdbId;
  late String originalLanguage;
  late String originalTitle;
 late  String overview;
  late double popularity;
  late String posterPath;
  late List<ProductionCompanies> productionCompanies;
  late List<ProductionCountries> productionCountries;
 late  String releaseDate;
  late int revenue;
  late int runtime;
  late List<SpokenLanguages> spokenLanguages;
  late String status;
  late String tagline;
  late String title;
  late bool video;
  late double voteAverage;
  late int voteCount;

  MoviesModel({
      // required this.adult,
      // this.backdropPath,
      // this.belongsToCollection,
      // this.budget,
      required  this.genres,
      required  this.homepage,
      required  this.id,
      required  this.imdbId,
      required  this.originalLanguage,
      required  this.originalTitle,
      required  this.overview,
      required  this.popularity,
      required  this.posterPath,
      // this.productionCompanies,
      // this.productionCountries,
      required  this.releaseDate,
      required  this.revenue,
      required  this.runtime,
      required  this.spokenLanguages,
      required  this.status,
      required  this.tagline,
      required  this.title,
      required  this.video,
      required  this.voteAverage,
     required  this.voteCount});

  MoviesModel.fromJson(Map<String, dynamic> json) {
    adult = json['adult'];
    backdropPath = json['backdrop_path'];
    belongsToCollection = json['belongs_to_collection'];
    budget = json['budget'];
    if (json['genres'] != null) {
      genres = [];
      json['genres'].forEach((v) {
        genres.add(new Genres.fromJson(v));
      });
    }
    homepage = json['homepage'];
    id = json['id'];
    imdbId = json['imdb_id'];
    originalLanguage = json['original_language'];
    originalTitle = json['original_title'];
    overview = json['overview'];
    popularity = json['popularity'];
    posterPath = json['poster_path'];
    if (json['production_companies'] != null) {
      productionCompanies = [];
      json['production_companies'].forEach((v) {
        productionCompanies.add(new ProductionCompanies.fromJson(v));
      });
    }
    if (json['production_countries'] != null) {
      productionCountries = [];
      json['production_countries'].forEach((v) {
        productionCountries.add(new ProductionCountries.fromJson(v));
      });
    }
    releaseDate = json['release_date'];
    revenue = json['revenue'];
    runtime = json['runtime'];
    if (json['spoken_languages'] != null) {
      spokenLanguages = [];
      json['spoken_languages'].forEach((v) {
        spokenLanguages.add(new SpokenLanguages.fromJson(v));
      });
    }
    status = json['status'];
    tagline = json['tagline'];
    title = json['title'];
    video = json['video'];
    voteAverage = json['vote_average'];
    voteCount = json['vote_count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['adult'] = this.adult;
    data['backdrop_path'] = this.backdropPath;
    data['belongs_to_collection'] = this.belongsToCollection;
    data['budget'] = this.budget;
    data['genres'] = this.genres.map((v) => v.toJson()).toList();
    
    data['homepage'] = this.homepage;
    data['id'] = this.id;
    data['imdb_id'] = this.imdbId;
    data['original_language'] = this.originalLanguage;
    data['original_title'] = this.originalTitle;
    data['overview'] = this.overview;
    data['popularity'] = this.popularity;
    data['poster_path'] = this.posterPath;
    data['production_companies'] =this.productionCompanies.map((v) => v.toJson()).toList();
    data['production_countries'] =this.productionCountries.map((v) => v.toJson()).toList();
  
    data['release_date'] = this.releaseDate;
    data['revenue'] = this.revenue;
    data['runtime'] = this.runtime;
    data['spoken_languages'] =this.spokenLanguages.map((v) => v.toJson()).toList();
    
    data['status'] = this.status;
    data['tagline'] = this.tagline;
    data['title'] = this.title;
    data['video'] = this.video;
    data['vote_average'] = this.voteAverage;
    data['vote_count'] = this.voteCount;
    return data;
  }
}

class Genres {
  late int id;
  late String name;

  Genres({required this.id, required this.name});

  Genres.fromJson(Map json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    return data;
  }
}

class ProductionCompanies {
  late int id;
  late String logoPath;
  late String name;
  late String originCountry;

  ProductionCompanies({required this.id, required this.logoPath, required this.name, required this.originCountry});

  ProductionCompanies.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    logoPath = json['logo_path'];
    name = json['name'];
    originCountry = json['origin_country'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['logo_path'] = this.logoPath;
    data['name'] = this.name;
    data['origin_country'] = this.originCountry;
    return data;
  }
}

class ProductionCountries {
  late String iso31661;
  late String name;

  ProductionCountries({required this.iso31661, required this.name});

  ProductionCountries.fromJson(Map<String, dynamic> json) {
    iso31661 = json['iso_3166_1'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['iso_3166_1'] = this.iso31661;
    data['name'] = this.name;
    return data;
  }
}

class SpokenLanguages {
  late String englishName;
  late String iso6391;
  late String name;

  SpokenLanguages({required this.englishName, required this.iso6391, required this.name});

  SpokenLanguages.fromJson(Map<String, dynamic> json) {
    englishName = json['english_name'];
    iso6391 = json['iso_639_1'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['english_name'] = this.englishName;
    data['iso_639_1'] = this.iso6391;
    data['name'] = this.name;
    return data;
  }
}


class Network{
  static String appId = "4f806b3c32c09329094ad84fd217f22a";
  Future moviesModel ({required String movieName}) async {
    var finalUrl = "https://api.themoviedb.org/3/movie/550?api_key=4f806b3c32c09329094ad84fd217f22a";
    final response = await get(Uri.parse(finalUrl));
    if(response.statusCode == 200){
      print("movie data: ${response.body}");
      return jsonDecode(response.body);
    }else{
      throw Exception("error getting movie details");
    }
  }
}