import os

from flask import Flask
from redis import Redis

from database import init_db

user = os.environ.get('USER')

app = Flask(__name__)
app.config['DEBUG'] = True
app.secret_key = os.environ.get('APP_SECRET_KEY', 'NO_KEY')

redis = Redis(host=os.environ.get('REDIS_HOST', 'localhost'), port=os.environ.get('REDIS_PORT', 9379))
bind_port = int(os.environ.get('BIND_PORT', 5000))

init_db()

@app.route('/')
def hello():
    redis.incr('hits')
    total_hits = redis.get('hits').decode()
    return f'Please, let\'s start. Hello from Redis! I have been seen {total_hits} times.'


if __name__ == "__main__":
    app.run(host="0.0.0.0", debug=True, port=bind_port)
