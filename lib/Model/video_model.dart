class Video {
  final String id;
  final String title;
  final String thumbnailUrl;
  final String channalTitle;

  Video({
   this.id,
   this.title,
   this.thumbnailUrl,
   this.channalTitle
});

  factory Video.fromMap(Map<String , dynamic>snippet){
    return Video(
      id: snippet['resourceId']['videoId'],
      title: snippet['title'],
      thumbnailUrl: snippet['thumbnails']['high']['url'],
      channalTitle: snippet['channelTitle']
    );
  }
}