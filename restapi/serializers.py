__author__ = 'P057668'

from .models import Music
from .models import Playlist

from django.contrib.auth.models import User

from rest_framework import serializers

class UserSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = ('id', 'username', 'first_name', 'last_name', 'email')

class MusicSerializer(serializers.ModelSerializer):
    class Meta:
        model = Music
        fields = ('track_id', 'artist_name', 'album_title')

class PlaylistSerializer(serializers.ModelSerializer):
    class Meta:
        model = Playlist
        fields = ('id', 'music', 'user')


