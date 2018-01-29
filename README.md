# parshall-docker-hello-world

I was able to complete the dockerfile to act as requested when going to localhost:8088

I had to run the following two commands in docker:

docker image build -t web1 .

docker container run -it -p 8088:8088 -e FLASK_APP=app.py --rm --name web1 -e FLASK_DEBUG=1 -v $PWD:/app web1 >>log.txt

I was not able to get this to work with vagrant however.I got SSH errors or the VM would timeoute when trying to create.
