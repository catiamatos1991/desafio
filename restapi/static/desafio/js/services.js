// Resources have the following methods by default:
// get(), query(), save(), remove(), delete()

angular.module('restapi.services', ['ngResource'])
  .factory('Music', function($resource) {
    return $resource('/restapi/music/');
  })
  .factory('User', function($resource) {
    return $resource('/restapi/users/:id/');
  })
  .factory('Playlist', function($resource) {
    return $resource('/restapi/playlist/');
  });

