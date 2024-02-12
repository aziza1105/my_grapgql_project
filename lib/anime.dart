import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:my_grapgql_project/w_refresher.dart';
import 'package:smartrefresh/smartrefresh.dart';
import 'package:url_launcher/url_launcher.dart';
import 'anime_model.dart';

class AnimeListPage extends StatefulWidget {
  const AnimeListPage({super.key});

  @override
  State<AnimeListPage> createState() => _AnimeListPageState();
}

class _AnimeListPageState extends State<AnimeListPage> {
  var animeList = <Media>[];
  final controller = RefreshController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Cartoon'),
      ),
      body: WRefresher(
        controller: controller,
        onRefresh: () {
          setState(() {});
          controller.refreshCompleted();
        },
        child: Query(
            options: QueryOptions(
              document: gql('''
              query  {
  Page {
    media {
      siteUrl
      title {
        english
        native
      }
      description
    }
  }
  Media {
    id
    idMal
    type
    format
    status
    description
    season
    seasonYear
    episodes
    duration
    chapters
    volumes
    countryOfOrigin
    isLicensed
    source
    hashtag
    trailer {
      thumbnail
      site
      id
    }
    updatedAt
    coverImage {
      large
    }
    bannerImage
    genres
    synonyms
    averageScore
    meanScore
    popularity
    isLocked
    trending
    favourites
    isFavourite
    isFavouriteBlocked
    isAdult
    siteUrl
    autoCreateForumThread
    isRecommendationBlocked
    isReviewBlocked
    modNotes
  }
}
              '''),
            ),
            builder: (result, {refetch, fetchMore}) {
              if (result.hasException) {
                return const Center(
                  child: Text("Nimadir xato ketdi!"),
                );}
              if (result.isLoading) {
                return const Center(
                  child: CircularProgressIndicator(),);
              }
              print(result.data);
              final medias = (result.data?['Page']['media'] as List?)?.map((media) => Media.fromJson(media ?? {})).toList() ?? [];
              return ListView.separated(
                itemBuilder: (_, index) {
                  final media = medias[index];
                  return Card(
                    margin: const EdgeInsets.all(8.0),
                    child: ExpansionTile(
                      title: Text('${media.title?.english ?? "Not Available"} - ${media.title?.native ?? "Not Available"}'),
                      subtitle: Text(media.format ?? "Not Available"),
                      leading: media.coverImage?.large != null ? Image.network(media.coverImage!.large!) : null,
                      children: [ListTile(title: const Text("Description"),
                          subtitle: Text(media.description ?? "No description available."),),
                        ListTile(title: const Text("Details"),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [Text("Type: ${media.type ?? "Not Available"}"),
                              Text("Format: ${media.format ?? "Not Available"}"),
                              Text("Status: ${media.status ?? "Not Available"}"),
                              Text("Season: ${media.season ?? "Not Available"}, ${media.seasonYear ?? "Not Available"}"),
                              Text("Episodes: ${media.episodes ?? "Not Available"}"),
                              Text("Duration: ${media.duration ?? "Not Available"} min"),
                            ],
                          ),
                        ),
                        ListTile(title: const Text("Genres"),
                          subtitle: Text(media.genres?.join(', ') ?? "No genres available."),),
                        if (media.siteUrl != null)
                          ListTile(title: const Text("Website"),
                            subtitle: InkWell(child: Text(media.siteUrl!,
                                  style: const TextStyle(
                                      color: Colors.blue,
                                      decoration: TextDecoration.underline)),
                              onTap: () async {
                                if (await canLaunchUrl(Uri.parse(media.siteUrl!))) {await launchUrl(Uri.parse(media.siteUrl!));
                                } else {ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                          content: Text('Could not launch ${media.siteUrl}')));
                                }},
                            ))],
                    ));},
                separatorBuilder: (_, __) =>
                const SizedBox(height: 12,),
                itemCount: medias.length,
              );
            }),
      ),
    );
  }
}
