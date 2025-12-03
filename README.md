# Flask Hello World + Wasmer

This example shows how to deploy a minimal **Flask** application to **Wasmer Edge**.

## Demo

https://wasmer-python-flask-server-worker.wasmer.app/

## How it Works

`src/main.py` defines the application:

* `app = Flask(__name__)` creates the WSGI app Wasmer will import (`src.main:app`).
* `@app.route("/")` responds with a simple string (“Hello, from Flask in Wasmer Edge 🚀”).
* The `__main__` block runs the built-in server on host `0.0.0.0` and port `8000` for local testing.

Because the project has no external dependencies beyond Flask itself, it is ideal for learning the deployment flow.

## Running Locally

```bash
python -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
python src/main.py
```

Visit `http://127.0.0.1:8000/` to view the greeting.

## Deploying to Wasmer (Overview)

1. Install dependencies during your build (`pip install -r requirements.txt`).
2. Expose the app as `src.main:app` in your Wasmer configuration (e.g., via `wasmer.toml`) and run `gunicorn` or the Flask dev server (`python -m flask --app src.main run --host 0.0.0.0 --port $PORT`).
3. Deploy and access `https://<your-subdomain>.wasmer.app/`.
