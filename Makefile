.PHONY: all clean build image

all: id_rsa build

clean:
	@rm sshtron || true

id_rsa:
	@ssh-keygen -t rsa -N '' -f id_rsa

build:
	@go build

image:
	@docker build --rm -f Dockerfile -t sshtron .

# image-rpi will only create an image on a raspberrypi
image-rpi:
	@docker build --rm -f Dockerfile.raspberrypi -t sshtron:rpi .
