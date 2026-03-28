from flask import Flask, jsonify

# Create an instance of the Flask class
app = Flask(__name__)

# Define the 'Home' route
@app.route('/')
def home():
    return "<h1>Welcome to my Demo App!</h1><p>Go to /api/hello to see a JSON response.</p>"

# Define a route that returns JSON data
@app.route('/api/hello')
def hello_api():
    data = {
        "message": "THIS THE PROJECT",
        "status": "success",
        "version": "1.0.0"
    }
    return jsonify(data)

# Run the app
if __name__ == '__main__':
    # Setting debug=True allows for automatic reloading when code changes
    app.run(host="0.0.0.0", debug=True, port=80)
