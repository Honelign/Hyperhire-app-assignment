import 'package:intl/intl.dart';

String toRelativeTime(int timestamp) {
  final now = DateTime.now();
  final difference =
      now.difference(DateTime.fromMillisecondsSinceEpoch(timestamp));

  if (difference.inSeconds < 60) {
    return '${difference.inSeconds} sec';
  } else if (difference.inMinutes < 60) {
    return '${difference.inMinutes} min${difference.inMinutes > 1 ? 's' : ''}';
  } else if (difference.inHours < 24) {
    return '${difference.inHours} hr${difference.inHours > 1 ? 's' : ''}';
  } else if (difference.inDays < 7) {
    return '${difference.inDays} day${difference.inDays > 1 ? 's' : ''}';
  } else {
    return DateFormat('MMM dd')
        .format(DateTime.fromMillisecondsSinceEpoch(timestamp));
  }
}
