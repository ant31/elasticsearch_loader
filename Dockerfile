from python:3-alpine
RUN apk add --no-cache gcc musl-dev
COPY . /app
RUN cd /app && \
        pip install -e .[tests] -U && \
        cd inputs/redis/ && \
        pip install -e . -U && \
        cd ../s3/ && \
        pip install -e . -U
