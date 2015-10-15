// Resources have the following methods by default:
// get(), query(), save(), remove(), delete()

angular.module('desafioApp.services', ['ngResource'])
  .factory('Music', function($resource) {
    return $resource('/api/music/');
  })
  .factory('User', function($resource) {
    return $resource('/api/users/:id/');
  })
  .factory('Playlist', function($resource) {
    return $resource('/api/playlist/');
  });

