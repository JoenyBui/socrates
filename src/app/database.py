import os

from flask_sqlalchemy import SQLAlchemy

from sqlalchemy import create_engine
from sqlalchemy.orm import scoped_session, sessionmaker
from sqlalchemy.ext.declarative import declarative_base

# These env variables are the same ones used for the DB container
user = os.environ.get('POSTGRES_USER', 'postgres')
pwd = os.environ.get('POSTGRES_PASSWORD', 'postgres')
db = os.environ.get('POSTGRES_DB', 'my_database')
host = os.environ.get('POSTGRES_HOST', 'localhost') # docker-compose creates a hostname alias with the service name
port = os.environ.get('POSTGRES_PORT', 9432) # default postgres port 
engine = create_engine('postgres://%s:%s@%s:%s/%s' % (user, pwd, host, port, db)) 

Base = declarative_base()

def init_db():
    # import all modules here that might define models so that
    # they will be registered properly on the metadata.  Otherwise
    # you will have to import them first before calling init_db()
    # import models
    Base.metadata.create_all(bind=engine)
