FROM python
RUN pip install Flask
ADD src/ .
CMD python -m flask --app /src/main run --debug --no-reload --host 0.0.0.0