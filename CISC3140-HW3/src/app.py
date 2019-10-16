import urllib.request
import json
from flask import Flask, render_template

url= 'https://api.nasa.gov/planetary/apod?api_key=DEMO_KEY'
urlobj = urllib.request.urlopen(url)
apiread=urlobj.read()
data=json.loads(apiread.decode('utf-8'))

date=data["date"]
title=data["title"]
description=data["explanation"]
imageurl=data["url"]
copyright=data["copyright"]

app=Flask(__name__)

@app.route('/')
def main():
    return render_template('index.html ', title=title, date=date,imageurl=imageurl,copyright=copyright,description=description)

if __name__ == "__main__":
    app.run()




