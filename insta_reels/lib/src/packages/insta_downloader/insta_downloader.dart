library flutter_instagram_downloader;

import 'package:http/http.dart' as http;
import 'dart:convert';

import './models/post.dart';
import './models/reels.dart';
import './models/profile.dart';

/// A Calculator.
class FlutterInsta {
  String url = "https://www.instagram.com/d__jordan_/?__a=1";
  String _username, _fullname, _profilepicurl, _bio, _followers;
  String _category_name;
  String _videourl,
      _imgurl,
      _caption,
      _songName,
      _artistName,
      _videoDuration,
      _videoViewCount;
  bool isVerified;
  Future<void> downloadReelsVideos(String link) async {
    var finallink = link.replaceAll(" ", "").split("/");
    try {
      final response = await http.get(Uri.parse(
          '${finallink[0]}//${finallink[2]}/${finallink[3]}/${finallink[4]}' +
              "/?__a=1"));
      final Reels reels = reelsFromJson(response.body);
      var shortcodemedia = reels.graphql.shortcodeMedia;
      var owner = reels.graphql.shortcodeMedia.owner;

      _username = owner.username;
      _fullname = owner.fullName;
      _profilepicurl = owner.profilePicUrl;
      _followers = owner.edgeFollowedBy.count.toString();
      isVerified = owner.isVerified;
      _videourl = shortcodemedia.videoUrl;
      _imgurl = shortcodemedia.displayUrl;
      _caption = shortcodemedia.edgeMediaToCaption.edges[0].node.text;
      _songName = shortcodemedia.clipsMusicAttributionInfo.songName;
      _artistName = shortcodemedia.clipsMusicAttributionInfo.artistName;
      _videoDuration = shortcodemedia.videoDuration.toString();
      _videoViewCount = shortcodemedia.videoViewCount.toString();
    } catch (e) {
      print("error" + e.toString());
    }
  }

  final uri = Uri.parse('https://www.instagram.com/d__jordan_/?__a=1');

  //get profile details
  Future<void> getProfileInfo(String username) async {
    var response = await http.get(uri);
    print('response body: ${response.body}');
    final Profile profiles = profileFromJson(response.body);

    var user = profiles.graphql.user;
    _username = user.username;
    _fullname = user.fullName;
    _profilepicurl = user.profilePicUrl;
    _followers = user.edgeFollowedBy.count.toString();
    isVerified = user.isVerified;
    _bio = user.biography;
    _category_name = user.categoryName;
  }

  Future<void> downloadImage(String link) async {
    var finallink = link.replaceAll(" ", "").split("/");
    try {
      final response = await http.get(Uri.parse(
          '${finallink[0]}//${finallink[2]}/${finallink[3]}/${finallink[4]}' +
              "/?__a=1"));
      final Post posts = postFromJson(response.body);
      var shortcodemedia = posts.graphql.shortcodeMedia;
      var owner = posts.graphql.shortcodeMedia.owner;

      _username = owner.username;
      _fullname = owner.fullName;
      _profilepicurl = owner.profilePicUrl;
      _followers = owner.edgeFollowedBy.count.toString();
      isVerified = owner.isVerified;
      _caption = owner.profilePicUrl;
      _imgurl = shortcodemedia.displayUrl;
      _caption = shortcodemedia.edgeMediaToCaption.edges[0].node.text;
    } catch (e) {
      print("...." + e.toString());
    }
  }
}
