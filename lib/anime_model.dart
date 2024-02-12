
import 'package:json_annotation/json_annotation.dart';


part 'anime_model.g.dart';


@JsonSerializable()
class AnimeModel {
  @JsonKey(name: "data")
  Data? data;

  AnimeModel({
    this.data,
  });

  factory AnimeModel.fromJson(Map<String, dynamic> json) => _$AnimeModelFromJson(json);
  Map<String, dynamic> toJson() => _$AnimeModelToJson(this);
}



@JsonSerializable()
class Data {
  @JsonKey(name: "Page")
  Page? page;

  Data({
    this.page
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
  Map<String, dynamic> toJson() => _$DataToJson(this);
}


@JsonSerializable()
class Page {
  @JsonKey(name: "media")
  List<Media>? media;

  Page({
    this.media
  });

  factory Page.fromJson(Map<String, dynamic> json) => _$PageFromJson(json);
  Map<String, dynamic> toJson() => _$PageToJson(this);
}



@JsonSerializable()
class Media {

  @JsonKey(name: "siteUrl")
  String? siteUrl;
  @JsonKey(name: "title")
  Title? title;
  @JsonKey(name: "description")
  String? description;
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'idMal')
  int? idMal;
  @JsonKey(name: 'type')
  String? type;
  @JsonKey(name: 'format')
  String? format;
  @JsonKey(name: 'status')
  String? status;
  @JsonKey(name: 'season')
  String? season;
  @JsonKey(name: 'seasonYear')
  int? seasonYear;
  @JsonKey(name: 'episodes')
  int? episodes;
  @JsonKey(name: 'duration')
  int? duration;
  @JsonKey(name: 'chapters')
  int? chapters;
  @JsonKey(name: 'volumes')
  int? volumes;
  @JsonKey(name: 'countryOfOrigin')
  String? countryOfOrigin;
  @JsonKey(name: 'isLicensed')
  bool? isLicensed;
  @JsonKey(name: 'source')
  String? source;
  @JsonKey(name: 'hashtag')
  String? hashtag;
  @JsonKey(name: 'trailer')
  Trailer? trailer;
  @JsonKey(name: 'updatedAt')
  int? updatedAt;
  @JsonKey(name: 'coverImage')
  CoverImage? coverImage;
  @JsonKey(name: 'bannerImage')
  String? bannerImage;
  @JsonKey(name: 'genres')
  List<String>? genres;
  @JsonKey(name: 'synonyms')
  List<String>? synonyms;
  @JsonKey(name: 'averageScore')
  int? averageScore;
  @JsonKey(name: 'meanScore')
  int? meanScore;
  @JsonKey(name: 'popularity')
  int? popularity;
  @JsonKey(name: 'isLocked')
  bool? isLocked;
  @JsonKey(name: 'trending')
  int? trending;
  @JsonKey(name: 'favourites')
  int? favourites;
  @JsonKey(name: 'isFavourite')
  bool? isFavourite;
  @JsonKey(name: 'isFavouriteBlocked')
  bool? isFavouriteBlocked;
  @JsonKey(name: 'isAdult')
  bool? isAdult;
  @JsonKey(name: 'autoCreateForumThread')
  bool? autoCreateForumThread;
  @JsonKey(name: 'isRecommendationBlocked')
  bool? isRecommendationBlocked;
  @JsonKey(name: 'isReviewBlocked')
  bool? isReviewBlocked;
  @JsonKey(name: 'modNotes')
  String? modNotes;



  Media({
    this.title,
    this.id,
    this.idMal,
    this.type,
    this.format,
    this.status,
    this.description,
    this.season,
    this.seasonYear,
    this.episodes,
    this.duration,
    this.chapters,
    this.volumes,
    this.countryOfOrigin,
    this.isLicensed,
    this.source,
    this.hashtag,
    this.trailer,
    this.updatedAt,
    this.coverImage,
    this.bannerImage,
    this.genres,
    this.synonyms,
    this.averageScore,
    this.meanScore,
    this.popularity,
    this.isLocked,
    this.siteUrl,
    this.trending,
    this.favourites,
    this.isFavourite,
    this.isFavouriteBlocked,
    this.isAdult,
    this.autoCreateForumThread,
    this.isRecommendationBlocked,
    this.isReviewBlocked,
    this.modNotes,
  });

  factory Media.fromJson(Map<String, dynamic> json) => _$MediaFromJson(json);
  Map<String, dynamic> toJson() => _$MediaToJson(this);
}

@JsonSerializable()
class Title {
  @JsonKey(name: "english")
  String? english;
  @JsonKey(name: 'native')
  String? native;

  Title({
    this.english,
    this.native
  });
  get nativeLanguage => null;
  factory Title.fromJson(Map<String, dynamic> json) => _$TitleFromJson(json);
  Map<String, dynamic> toJson() => _$TitleToJson(this);
}


@JsonSerializable()
class Trailer {
  @JsonKey(name: "thumbnail")
  String? thumbnail;
  @JsonKey(name: "site")
  String? site;
  @JsonKey(name: "id")
  String? id;

  Trailer({
    this.thumbnail,
    this.site,
    this.id
  });

  factory Trailer.fromJson(Map<String, dynamic> json) => _$TrailerFromJson(json);
  Map<String, dynamic> toJson() => _$TrailerToJson(this);
}

@JsonSerializable()
class CoverImage {
  @JsonKey(name: "large")
  String? large;

  CoverImage({
    this.large
  });

  factory CoverImage.fromJson(Map<String, dynamic> json) => _$CoverImageFromJson(json);
  Map<String, dynamic> toJson() => _$CoverImageToJson(this);
}

