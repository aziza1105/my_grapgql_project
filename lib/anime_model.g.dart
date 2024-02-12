// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnimeModel _$AnimeModelFromJson(Map<String, dynamic> json) => AnimeModel(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AnimeModelToJson(AnimeModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      page: json['Page'] == null
          ? null
          : Page.fromJson(json['Page'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'Page': instance.page,
    };

Page _$PageFromJson(Map<String, dynamic> json) => Page(
      media: (json['media'] as List<dynamic>?)
          ?.map((e) => Media.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PageToJson(Page instance) => <String, dynamic>{
      'media': instance.media,
    };

Media _$MediaFromJson(Map<String, dynamic> json) => Media(
      title: json['title'] == null
          ? null
          : Title.fromJson(json['title'] as Map<String, dynamic>),
      id: json['id'] as int?,
      idMal: json['idMal'] as int?,
      type: json['type'] as String?,
      format: json['format'] as String?,
      status: json['status'] as String?,
      description: json['description'] as String?,
      season: json['season'] as String?,
      seasonYear: json['seasonYear'] as int?,
      episodes: json['episodes'] as int?,
      duration: json['duration'] as int?,
      chapters: json['chapters'] as int?,
      volumes: json['volumes'] as int?,
      countryOfOrigin: json['countryOfOrigin'] as String?,
      isLicensed: json['isLicensed'] as bool?,
      source: json['source'] as String?,
      hashtag: json['hashtag'] as String?,
      trailer: json['trailer'] == null
          ? null
          : Trailer.fromJson(json['trailer'] as Map<String, dynamic>),
      updatedAt: json['updatedAt'] as int?,
      coverImage: json['coverImage'] == null
          ? null
          : CoverImage.fromJson(json['coverImage'] as Map<String, dynamic>),
      bannerImage: json['bannerImage'] as String?,
      genres:
          (json['genres'] as List<dynamic>?)?.map((e) => e as String).toList(),
      synonyms: (json['synonyms'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      averageScore: json['averageScore'] as int?,
      meanScore: json['meanScore'] as int?,
      popularity: json['popularity'] as int?,
      isLocked: json['isLocked'] as bool?,
      siteUrl: json['siteUrl'] as String?,
      trending: json['trending'] as int?,
      favourites: json['favourites'] as int?,
      isFavourite: json['isFavourite'] as bool?,
      isFavouriteBlocked: json['isFavouriteBlocked'] as bool?,
      isAdult: json['isAdult'] as bool?,
      autoCreateForumThread: json['autoCreateForumThread'] as bool?,
      isRecommendationBlocked: json['isRecommendationBlocked'] as bool?,
      isReviewBlocked: json['isReviewBlocked'] as bool?,
      modNotes: json['modNotes'] as String?,
    );

Map<String, dynamic> _$MediaToJson(Media instance) => <String, dynamic>{
      'siteUrl': instance.siteUrl,
      'title': instance.title,
      'description': instance.description,
      'id': instance.id,
      'idMal': instance.idMal,
      'type': instance.type,
      'format': instance.format,
      'status': instance.status,
      'season': instance.season,
      'seasonYear': instance.seasonYear,
      'episodes': instance.episodes,
      'duration': instance.duration,
      'chapters': instance.chapters,
      'volumes': instance.volumes,
      'countryOfOrigin': instance.countryOfOrigin,
      'isLicensed': instance.isLicensed,
      'source': instance.source,
      'hashtag': instance.hashtag,
      'trailer': instance.trailer,
      'updatedAt': instance.updatedAt,
      'coverImage': instance.coverImage,
      'bannerImage': instance.bannerImage,
      'genres': instance.genres,
      'synonyms': instance.synonyms,
      'averageScore': instance.averageScore,
      'meanScore': instance.meanScore,
      'popularity': instance.popularity,
      'isLocked': instance.isLocked,
      'trending': instance.trending,
      'favourites': instance.favourites,
      'isFavourite': instance.isFavourite,
      'isFavouriteBlocked': instance.isFavouriteBlocked,
      'isAdult': instance.isAdult,
      'autoCreateForumThread': instance.autoCreateForumThread,
      'isRecommendationBlocked': instance.isRecommendationBlocked,
      'isReviewBlocked': instance.isReviewBlocked,
      'modNotes': instance.modNotes,
    };

Title _$TitleFromJson(Map<String, dynamic> json) => Title(
      english: json['english'] as String?,
      native: json['native'] as String?,
    );

Map<String, dynamic> _$TitleToJson(Title instance) => <String, dynamic>{
      'english': instance.english,
      'native': instance.native,
    };

Trailer _$TrailerFromJson(Map<String, dynamic> json) => Trailer(
      thumbnail: json['thumbnail'] as String?,
      site: json['site'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$TrailerToJson(Trailer instance) => <String, dynamic>{
      'thumbnail': instance.thumbnail,
      'site': instance.site,
      'id': instance.id,
    };

CoverImage _$CoverImageFromJson(Map<String, dynamic> json) => CoverImage(
      large: json['large'] as String?,
    );

Map<String, dynamic> _$CoverImageToJson(CoverImage instance) =>
    <String, dynamic>{
      'large': instance.large,
    };
