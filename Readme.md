# Docker avahi
 


# build 
docker build -t weratyr/avahi .

# Create volume
docker volume create avahi


# run container 
docker run --net=host -v avahi:/etc/avahi --restart always --name avahi -d weratyr/avahi:latest

