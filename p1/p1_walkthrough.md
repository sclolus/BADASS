# DO NOT UNCOMMENT OR EXECUTE THIS FILE AS A SCRIPT.
# THIS FILE IS A WALKTHROUGH RESOLUTION OF P1.
# IT IS NOT MEANT TO BE EXECUTED DIRECTLY.

docker ps
# No docker container launched

# Creation of alpine image :
docker run -it alpine

# Split term in two
# Run uname -a in alpine
# Run docker ps in the ubuntu shell
# Check if the container ID matches

# Install busybox in alpine
apk add busybox

# Commit alpine based container in a new image :
docker commit [container_name] alpine_image
docker stop [container_name]
docker images

# We should see our newly created image

# Creation of frrouting image :

# Run frr image :
docker run -d frrouting/frr

# Get container name
docker ps

# Connect to it via terminal
docker exec -it [container_name] sh

apk add busybox
