import '../api.dart';

class Widgets {
  final API _api;

  Widgets(this._api);

  /// Gets a list of comments for the page added through the [Comments widget](https://vk.com/dev/Comments).
  ///
  /// Params:
  ///
  /// `widget_api_id` *(integer)*
  ///
  /// `url` *(string)*
  ///
  /// `page_id` *(string)*
  ///
  /// `order` *(string)*, default: date
  ///
  /// `fields` *(array)*
  ///
  /// `offset` *(integer)*
  ///
  /// `count` *(integer)*, default: 10, min: 10, max: 200
  Future<dynamic> getComments([Map<String, dynamic>? params]) async {
    return _api.request('widgets.getComments', {
      ...?params,
    });
  }

  /// Gets a list of application/site pages where the [Comments widget](https://vk.com/dev/Comments) or [Like Widget](https://vk.com/dev/Like) is installed.
  ///
  /// Params:
  ///
  /// `widget_api_id` *(integer)*
  ///
  /// `order` *(string)*, default: friend_likes
  ///
  /// `period` *(string)*, default: week
  ///
  /// `offset` *(integer)*
  ///
  /// `count` *(integer)*, default: 10, min: 10, max: 200
  Future<dynamic> getPages([Map<String, dynamic>? params]) async {
    return _api.request('widgets.getPages', {
      ...?params,
    });
  }
}
