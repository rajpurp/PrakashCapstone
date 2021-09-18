setup:
	python3 -m venv devops
	source devops/bin/activate

install:
	wget -O ./hadolint https://github.com/hadolint/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64 && chmod +x ./hadolint
	pip install --upgrade pip &&\
		pip install -r requirements.txt
   
test:

lint:
	./hadolint Dockerfile
	pylint --disable=R,C,W1203 app1.py

all: install lint test
