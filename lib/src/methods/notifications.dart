import '../api.dart';

class Notifications {
  final API _api;

  Notifications(this._api);

  /// Returns a list of notifications about other users' feedback to the current user's wall posts.
  ///
  /// Params:
  ///
  /// `count` *(integer)* Number of notifications to return., default: 30, min: 1, max: 100
  ///
  /// `start_from` *(string)*
  ///
  /// `filters` *(array)* Type of notifications to return: 'wall' — wall posts, 'mentions' — mentions in wall posts, comments, or topics, 'comments' — comments to wall posts, photos, and videos, 'likes' — likes, 'reposted' — wall posts that are copied from the current user's wall, 'followers' — new followers, 'friends' — accepted friend requests
  ///
  /// `start_time` *(integer)* Earliest timestamp (in Unix time) of a notification to return. By default, 24 hours ago.
  ///
  /// `end_time` *(integer)* Latest timestamp (in Unix time) of a notification to return. By default, the current time.
  Future<dynamic> get([Map<String, dynamic>? params]) async {
    return _api.request('notifications.get', {
      ...?params,
    });
  }

  /// Resets the counter of new notifications about other users' feedback to the current user's wall posts.
  ///
  /// Params:
  Future<dynamic> markAsViewed([Map<String, dynamic>? params]) async {
    return _api.request('notifications.markAsViewed', {
      ...?params,
    });
  }
}
