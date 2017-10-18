FROM tensorflow/tensorflow:nightly-gpu

RUN apt-get update && apt-get install -y \
	python-tk \
	libsm6 \
	libxrender1 \
	libfontconfig1 \
	wget 

COPY requirements.txt /tmp/
RUN pip install --requirement /tmp/requirements.txt
COPY . /tmp/
