import os
from bottle import route, run, response, static_file, view
from horoscope import generate_prophecies
from datetime import datetime as dt


@route("/")
@view("predictions")
def index():
	date_now = 25
	return {"date": dt.now().date(),
	       "predictions": generate_prophecies(total_num=6, num_sentences=2)}

@route('/static/js/<filename>')
def send_static(filename):
    return static_file(filename, root='static/js/')


@route("/api/forecasts")
def forecast():
    response.headers['Access-Control-Allow-Origin'] = '*'
    return {"prophecies": generate_prophecies(total_num=6, num_sentences=2)}

if os.environ.get('APP_LOCATION') == 'heroku':
    run(host="0.0.0.0", port=int(os.environ.get("PORT", 5000)))
else:
    run(host='localhost', port=8080, debug=True)