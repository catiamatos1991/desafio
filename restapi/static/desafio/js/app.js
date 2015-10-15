angular.module('desafioApp', [
  'ui.router',
  'ngResource',
  'desafio.services',
  'desafio.controllers',
])
  .config(function ($interpolateProvider, $httpProvider, $resourceProvider, $stateProvider, $urlRouterProvider) {
    // Force angular to use square brackets for template tag
    // The alternative is using {% verbatim %}
    $interpolateProvider.startSymbol('[[').endSymbol(']]');

    // CSRF Support
    $httpProvider.defaults.xsrfCookieName = 'csrftoken';
    $httpProvider.defaults.xsrfHeaderName = 'X-CSRFToken';

    // This only works in angular 3!
    // It makes dealing with Django slashes at the end of everything easier.
    $resourceProvider.defaults.stripTrailingSlashes = false;

    // Django expects jQuery like headers
    // $httpProvider.defaults.headers.post['Content-Type'] = 'application/x-www-form-urlencoded;charset=utf-8';

    // Routing

    $urlRouterProvider.otherwise('/');
    $stateProvider
      .state('musics', {
        url: '/',
        templateUrl: 'static/desafio/partials/music-list.html',
        controller: 'MusicCtrl'
      })
      .state('playlist', {
        url: '/:userId',
        templateUrl: 'static/desafio/partials/playlist.html',
        controller: 'PlaylistCtrl'
      })
      .state('profile', {
        url: '/profile/:userId',
        templateUrl: 'static/desafio/partials/profile.html',
        controller: 'UserCtrl'
      })
  });