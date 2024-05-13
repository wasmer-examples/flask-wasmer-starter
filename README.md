This is a simple [Flask](https://flask.palletsprojects.com/en/3.0.x/) Web Server template


## Usage

First, create a local virtual environment:

```bash
python3 -m venv .env
source .env/bin/activate
```

Install the dependencies with:

```bash
pip install Flask
```

Then, you can run the Flask app (`src/main.py`) with Python:

```bash
$ python src/main.py
 * Serving Flask app '/src/main'
 * Debug mode: on
WARNING: This is a development server. Do not use it in a production deployment. Use a production WSGI server instead.
 * Running on http://127.0.0.1:5000
Press CTRL+C to quit
```


You can run the Flask example using Wasmer (check out the [install guide](https://docs.wasmer.io/install)):

```bash
wasmer run . --net
```

**Note: you may need to update `wasmer.toml` filesystem, to point ot the right path for the environment depending on your Python version (currently using `./.env/lib/python3.9`)**.

Open [http://localhost:3000](http://localhost:3000) with your browser to see the Flask application.


## Deploy on Wasmer Edge

The easiest way to deploy your Flask app is to use the [Wasmer Edge](https://wasmer.io/products/edge).

Live example: https://wasmer-python-flask-server-worker.wasmer.app

Run this commmand to deploy to Wasmer Edge:

```bash
wasmer deploy
```
