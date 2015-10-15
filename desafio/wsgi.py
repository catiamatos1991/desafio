"""
WSGI config for desafio project.

It exposes the WSGI callable as a module-level variable named ``application``.

For more information on this file, see
https://docs.djangoproject.com/en/1.8/howto/deployment/wsgi/
"""

from django.core.wsgi import get_wsgi_application

import os

os.environ.setdefault("DJANGO_SETTINGS_MODULE", "desafio.settings")

#Added by me for Heroku
try:
    from dj_static import Cling
    application = Cling(get_wsgi_application())
except:
    application = get_wsgi_application()
