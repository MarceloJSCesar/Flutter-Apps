import '../models/user.dart';
import '../packages/insta_downloader/insta_downloader.dart';

class HomeServices {
  getProfileData(String username) async {
    FlutterInsta _flutterInsta = FlutterInsta();
    await _flutterInsta.getProfileInfo(username);
    print(
        'getProfileInfo ' + _flutterInsta.getProfileInfo(username).toString());
  }
}
