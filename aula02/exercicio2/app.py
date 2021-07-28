from flask import Flask, json

pessoas = [{"id": 5, "name": "Eduardo"}, {"id": 6, "name": "Felipe"}]

api = Flask(__name__)

@api.route('/pessoas', methods=['GET'])
def get_pessoas():
  return json.dumps(pessoas)


if __name__ == '__main__':
    api.run()