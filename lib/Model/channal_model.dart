
import 'package:scratch/Model/video_model.dart';

class Channel {
  final String id;
  final String title;
  final String profilePictureUrl;
  final String subscribeCount;
  final String videoCount;
  final String uploadPlayListId;
  List<Video> videos;

  Channel({
   this.id,
   this.title,
   this.profilePictureUrl,
   this.subscribeCount,
   this.uploadPlayListId,
   this.videoCount,
   this.videos,
});

  factory Channel.fromMap(Map<String, dynamic> map){
    return Channel(
      id: map['id'],
      title: map['snippet']['title'],
      profilePictureUrl: map['snippet']['thumbnails']['default']['url'],
      subscribeCount: map['statistics']['subscribeCount'],
      videoCount: map['statistics']['videoCount'],
      uploadPlayListId: map['contentDetails']['relatedPlaylists']['uploads'],
    );
  }
}