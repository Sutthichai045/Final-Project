import 'user_model.dart';

enum PostType { image, video, audio }

class Post {
  final String id;
  final User user;
  final PostType type;
  final String caption;
  final String assetPath;

  Post(
      {required this.id,
      required this.user,
      required this.type,
      required this.caption,
      required this.assetPath});

  static List<Post> posts = [
    Post(
        id: '1',
        user: User.users[0],
        type: PostType.video,
        caption: 'textvideos',
        assetPath: 'assets/videos/mp4-1.mp4'),
    Post(
        id: '2',
        user: User.users[1],
        type: PostType.video,
        caption: 'textvideos',
        assetPath: 'assets/videos/mp4-2.mp4'),
    Post(
        id: '3',
        user: User.users[2],
        type: PostType.video,
        caption: 'textvideos',
        assetPath: 'assets/videos/mp4-3.mp4'),
    Post(
        id: '4',
        user: User.users[3],
        type: PostType.video,
        caption: 'textvideos',
        assetPath: 'assets/videos/mp4-4.mp4'),
    Post(
        id: '5',
        user: User.users[0],
        type: PostType.video,
        caption: 'textvideos',
        assetPath: 'assets/videos/mp4-5.mp4'),
    Post(
        id: '6',
        user: User.users[1],
        type: PostType.video,
        caption: 'textvideos',
        assetPath: 'assets/videos/mp4-6.mp4'),
    Post(
        id: '7',
        user: User.users[2],
        type: PostType.video,
        caption: 'textvideos',
        assetPath: 'assets/videos/mp4-7.mp4'),
    Post(
        id: '8',
        user: User.users[3],
        type: PostType.video,
        caption: 'textvideos',
        assetPath: 'assets/videos/mp4-8.mp4'),
    Post(
        id: '9',
        user: User.users[0],
        type: PostType.video,
        caption: 'textvideos',
        assetPath: 'assets/videos/mp4-9.mp4'),
    Post(
        id: '10',
        user: User.users[1],
        type: PostType.video,
        caption: 'textvideos',
        assetPath: 'assets/videos/mp4-10.mp4'),
  ];
}
