var desafioControllers = angular.module('desafio.controllers', []);

desafioControllers.controller('MusicCtrl', function MusicCtrl($scope, Music) {
  $scope.tweets = {};
   
  Music.query(function(response) {
    $scope.musics = response;
  });


});

desafioControllers.controller('UserCtrl', function UserCtrl($scope, Playlist, User, AuthUser) {
  $scope.tweets = {};
  id = AuthUser.id;
  User.get({id:id}, function(response) {
    $scope.user = response;
    $scope.playlist = response.playlist;
  });
});

desafioControllers.controller('Playlist', function UserCtrl($scope, Playlist, User, AuthUser) {
    $scope.playlist = {};
    email = AuthUser.email;
    User.get({email:email}, function(response) {
        $scope.user = response;

    });

    $scope.addMusic = function(track_title, email) {
        var music = new Playlist({text: email, text: track_title});
        music.$save(function(){
            $scope.playlist.unshift(music);
        })
    }
    //Playlist.get({email:User.get{email:email},Music:get(text:track_title)})
});

