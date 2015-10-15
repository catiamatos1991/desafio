# Desafio
  Installation Instructions

    1. Install the Requirements
      pip install -r requirements.txt
    
    2. Sync the DB
      In future no need to create an auth user, but for now:
    
        create schema "database"in mySQL
        run commands: ./manage.py migrate syncdb
    
    3. Run the server
        ./manage.py runserver
