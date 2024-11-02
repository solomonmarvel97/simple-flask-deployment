from flask import Flask

app = Flask(__name__)

@app.route('/<name>')
def hello_world(name):
  """Greets the user by name."""
  return f'Hello World, {name}!'

if __name__ == '__main__':
  app.run(host='0.0.0.0', debug=True, port=8080)