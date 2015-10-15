$.ajax({
  type: "GET",
  url:"/ajax",
  success: function(data) {
    for (var i = 0; i < data.music.length; i++) {
      appendNewMusic(data.music[i]);
    }
  }
});

function appendNewMusic(music) {
  var newMusic =  "<div class='tweet-container'>" +
    "<div class='tweet-name'>" + music.track_title + "</div>" +
    "<div class='tweet-body'>" + music.artist_name + "</div>" +
    "</div>";

  $('#tweets-target').prepend(newMusic);
}

$('#music').click(function() {
  $.ajax({
    type: "POST",
    url: "/ajax",
    contentType: 'application/json',
    data: JSON.stringify({music: $('#new-music').val()}),
    success: function(data) {
      appendNewMusic(data);
      $('#new-music').val('');
    }
  })
});

$('#music').click(function() {
    $.ajax({
        type: "POST",
        url: "/DELETE",
        contentType: 'application/json',
        data: JSON.stringify({tweet: $('#music').val()}),
        success: function(data) {
            appendNewMusic(data);
            $('#music').val('');
        }
    })
});