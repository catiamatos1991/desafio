"""desafio URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.8/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Add an import:  from blog import urls as blog_urls
    2. Add a URL to urlpatterns:  url(r'^blog/', include(blog_urls))
"""

from django.conf.urls import patterns, include, url

from django.contrib import admin


from restapi import views
admin.autodiscover()


urlpatterns = patterns('',
                       url(r'^admin/', include(admin.site.urls)),
                       url(r'^users/$', views.UserList.as_view()),
                       url(r'^users/(?P<pk>[0-9]+)/$', views.UserDetail.as_view()),
                       url(r'^music/$', views.MusicList.as_view()),
                       url(r'^music/(?P<pk>[0-9]+)/$', views.MusicDetail.as_view()),
                       url(r'^playlist/$', views.PlaylistList.as_view()),
                       url(r'^playlist/(?P<pk>[0-9]+)/$', views.PlaylistDetail.as_view()),
                       )
