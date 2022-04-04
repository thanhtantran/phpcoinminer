# phpcoinminer
## phpcoinminer docker

clone this repo and edit the Dockerfile with your fav editor (nano for example)

edit this line to change to your PHPCoin wallet, edit the last numer "80" to change the CPU intension

_ENTRYPOINT exec php utils/miner.php http://45.15.160.190/ your_wallet 80_

then build the docker image with command

> docker build -t yourtag:tag .

after the built process complete, you will see the image in your machine, run it with docker run command

> docker run -d --restart always --name phpcoinminer yourtag:tag

you can push to your docker hub, like mine

https://hub.docker.com/repository/docker/thanhtantran/phpcoinminer

then clone into another machine

This Dockerfile proven runs well on AMD/ARM v7/ARM64 (see my docker hub for image for each arch/os)

IF you have a cluster (swarm) of Pi (OrangePi/RaspPi/ ..)

You can run it as a Global service for all nodes in the swamp

[My opi3lts swamp](https://github.com/thanhtantran/phpcoinminer/blob/main/opi3lts-swamp.png)

[My op pcplus swamp](https://github.com/thanhtantran/phpcoinminer/blob/main/pcplus-swamp.png)
