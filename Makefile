
TAG=tf-gpu:base
PORT=8888
MOUNT=-v $(PWD):/home
GPUS=--gpus all

build:
	docker build . -t $(TAG)

shell:
	docker run -it --rm -p $(PORT):8888 $(GPUS) $(MOUNT) $(TAG) bash 

jupyter:
	docker run -it --rm -p $(PORT):8888 $(GPUS) $(MOUNT) $(TAG) jupyter-lab --ip 0.0.0.0 --allow-root