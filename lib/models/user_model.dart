class User {
  final String id;
  final String username;
  final String imagePath;
  final int followers;
  final int followings;
  final int likes;

  User({
    required this.id,
    required this.username,
    required this.imagePath,
    this.followers = 0,
    this.followings = 0,
    this.likes = 0,
  });
  static List<User> users = [
    User(
      id: '1',
      username: 'S1',
      imagePath: 'assets/images/users1.jpg',
      followers: 1000,
      followings: 1100,
      likes: 500,
    ),
    User(
      id: '2',
      username: 'S2',
      imagePath: 'assets/images/users2.JPG',
      followers: 1000,
      followings: 1100,
      likes: 500,
    ),
    User(
      id: '3',
      username: 'S3',
      imagePath: 'assets/images/users3.jpg',
      followers: 1000,
      followings: 1100,
      likes: 500,
    ),
    User(
      id: '4',
      username: 'S4',
      imagePath: 'assets/images/users4.jpg',
      followers: 1000,
      followings: 1100,
      likes: 500,
    ),
    User(
      id: '5',
      username: 'S5',
      imagePath: 'assets/images/users1.jpg',
      followers: 1000,
      followings: 1100,
      likes: 500,
    ),
    User(
      id: '6',
      username: 'S6',
      imagePath: 'assets/images/users2.JPG',
      followers: 1000,
      followings: 1100,
      likes: 500,
    ),
    User(
      id: '7',
      username: 'S7',
      imagePath: 'assets/images/users3.jpg',
      followers: 1000,
      followings: 1100,
      likes: 500,
    ),
    User(
      id: '8',
      username: 'S8',
      imagePath: 'assets/images/users4.jpg',
      followers: 1000,
      followings: 1100,
      likes: 500,
    ),
    User(
      id: '9',
      username: 'S9',
      imagePath: 'assets/images/users1.jpg',
      followers: 1000,
      followings: 1100,
      likes: 500,
    ),
    User(
      id: '10',
      username: 'S10',
      imagePath: 'assets/images/users2.JPG',
      followers: 1000,
      followings: 1100,
      likes: 500,
    ),
  ];
}
