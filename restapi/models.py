from django.db import models

# Create your models here.

from django.contrib.auth.models import User
from django.contrib.auth import get_user_model
from django.db.models.signals import post_save

class UserProfile(models.Model):
    user = models.OneToOneField(User)
    cc = models.CharField(max_length=20)

    def __str__(self):
        return "%s's profile" % self.user

def create_user_profile(sender, instance, created, **kwargs):
    if created:
        profile, created = UserProfile.objects.get_or_create(user=instance)

post_save.connect(create_user_profile, sender=User)

##User = get_user_model()




class Music(models.Model):
    artist_name = models.CharField(max_length=20)
    track_title = models.CharField(max_length=140)
    track_publisher = models.CharField(max_length=140)
    album_title = models.CharField(max_length=140)

    db_table =  '"music"'

    def __unicode__(self):
        return self.music

class Playlist(models.Model):
    email = models.CharField(max_length=20)
    titulo = models.CharField(max_length=140)

    db_table =  '"playlist"'


    def __unicode__(self):
        return self.playlist