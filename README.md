#How do you use this image ?
Add an alias to your boot2docker VM : 

    alias run='docker run -v $(pwd):/app -v /var/run/docker.sock:/var/run/docker.sock -ti --rm matthieume/boot2docker-tools'

Then you can run commands inside the container:

    run fig --help
    run make
	run git
	run hg
	run ab
	run curl
	run wget

	
	
	

#Build
docker build -t matthieume/boot2docker-tools ./

#Run
docker run -v $(pwd):/app -v /var/run/docker.sock:/var/run/docker.sock -ti --rm matthieume/boot2docker-tools pwd
