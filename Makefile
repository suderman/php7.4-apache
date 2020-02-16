IMAGE=suderman/php7.4-apache

all:
	@echo "image shell push"

image:
	docker build --tag $(IMAGE) .

shell: 
	docker run --rm -it $(IMAGE) /bin/bash

push: 
	docker push $(IMAGE)
