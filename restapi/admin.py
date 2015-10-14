from django.contrib import admin

from restapi.models import Music, Playlist

# Register your models here.
class MusicAdmin(admin.ModelAdmin):
    pass

class PlaylistAdmin(admin.ModelAdmin):
    pass

admin.site.register(Music, MusicAdmin)
admin.site.register(Playlist, PlaylistAdmin)

