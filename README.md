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

Or you can run it also locally with Wasmer:

```shell
$ wasmer run . --net
```

> [!NOTE]
> You will need to have Wasmer installed (check out [the docs to install the Wasmer CLI](https://docs.wasmer.io/install)!). 
> The `--net` flag is required to enable networking support in Wasmer.

You will see the output from the Python application in the console. The above command will run the Python worker locally on port `3000`.


## Deploy on Wasmer Edge

The easiest way to deploy your Flask app is to use the [Wasmer Edge](https://wasmer.io/products/edge).

Live example: https://wasmer-python-flask-server-worker.wasmer.app

Run this commmand to deploy to Wasmer Edge:

```bash
wasmer deploy
```

> [!NOTE]
> You will need to change the namespace in `wasmer.toml` to your own namespace and app name in `app.yaml` to your own app name.
