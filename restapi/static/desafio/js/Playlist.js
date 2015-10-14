$.ajax({
  type: "GET",
  url:"/ajax",
  success: function(data) {
    for (var i = 0; i < data.music.length; i++) {
      appendNewTMusic(data.music[i]);
    }
  }
});

function appendNewMusic(music) {
  var newMusic =  "<div class='tweet-container'>" +
    "<div class='tweet-time'>" + new Date(tweet.time).toLocaleString() + "</div>" +
    "<div class='tweet-body'>" + music.track_title + "</div>" +
    "</div>";

  $('#tweets-target').prepend(newMusic);
}

$('#music').click(function() {
  $.ajax({
    type: "POST",
    url: "/ajax",
    contentType: 'application/json',
    data: JSON.stringify({tweet: $('#new-music').val()}),
    success: function(data) {
      appendNewTweet(data);
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
            appendNewTweet(data);
            $('#music').val('');
        }
    })
});