from flask import Flask, request
import time
import logging

app = Flask(__name__)

# Setup simple logging
logging.basicConfig(level=logging.INFO)

@app.route("/")
def home():
    app.logger.info("Root endpoint hit")
    return "Hello, Observability World!"

@app.route("/sleep")
def sleep():
    app.logger.info("/sleep endpoint hit")
    time.sleep(2)
    return "Slept for 2 seconds!"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
