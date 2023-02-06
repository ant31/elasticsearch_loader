from python:3.10
COPY . /app
RUN cd /app && \
        pip install -e .[tests] -U && \
        cd inputs/redis/ && \
        pip install -e . -U && \
        cd ../s3/ && \
        pip install -e . -U
