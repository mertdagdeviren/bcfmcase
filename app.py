from flask import Flask, jsonify, request

app = Flask(__name__)

@app.route('/')
def home():
    return jsonify({"msg": "BC4M"})

@app.route('/health')
def health():
    return jsonify({"status": "healthy"})

@app.route('/post', methods=['POST'])
def post_handler():
    key = request.args.get('key')
    value = request.args.get('value')
    return jsonify({"key": key, "value": value})

if __name__ == '__main__':
    app.run(port=8081)
