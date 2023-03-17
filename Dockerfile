FROM python:3.9
COPY --chown=student:student setup.py /home/
COPY --chown=student:student app/* /home/
WORKDIR /home
RUN pip3 install -e .
ENTRYPOINT FLASK_APP=app.py flask run --host=0.0.0.0
