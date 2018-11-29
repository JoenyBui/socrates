import os

from flask import Flask
from redis import Redis

from flask_sqlalchemy import SQLAlchemy

user = os.environ.get('USER')

app = Flask(__name__)
app.secret_key = os.environ.get('APP_SECRET_KEY', 'NO_KEY')

redis = Redis(host=os.environ['REDIS_HOST'], port=os.environ['REDIS_PORT'])
bind_port = int(os.environ['BIND_PORT'])


@app.route('/')
def hello():
    redis.incr('hits')
    total_hits = redis.get('hits').decode()
    return f'Please, let\'s start. Hello from Redis! I have been seen {total_hits} times.'


if __name__ == "__main__":
    app.run(host="0.0.0.0", debug=True, port=bind_port)
