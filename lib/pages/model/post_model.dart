
import 'package:banthoeng/pages/model/model.dart';

class Post {
  final User user;
  final String detail;
  final String time;
  final String imageUrl;
  final int likes;
  final int comments;
  final int shares;

  const Post({
    required this.user,
    required this.detail,
    required this.time,
    required this.imageUrl,
    required this.likes,
    required this.comments,
    required this.shares,
  });
}