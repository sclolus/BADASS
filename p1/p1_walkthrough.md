# DO NOT UNCOMMENT OR EXECUTE THIS FILE AS A SCRIPT.
# THIS FILE IS A WALKTHROUGH RESOLUTION OF P1.
# IT IS NOT MEANT TO BE EXECUTED DIRECTLY.

# The first part of the subject will require the creation of two virtual
# machines, implemented as docker images. The first machine must be based on
# an alpine image and have at least busybox installed. We already have pulled
# the alpine image during the Vagrant vm installation, and uploaded a DockerFile
# written to build our new alpine based image :

docker build -f /vagrant/p1/firstMachineDockerfile -t first_machine .

# The second machine must have a packet routing manager (quagga or zebra), have
# BGPD and OSPFD services active and configured, an IS-IS routing engine service
# installed, and busybox or equivalent. We also uploaded a DockerFile for this
# image, which will base on frrouting/frr image, because it already has BGPD,
# OSPFD, and IS-IS routing engine built-in.

# Creation of alpine image :
docker build -f /vagrant/p1/secondMachineDockerfile -t second_machine .

# We should see our newly created image
docker images

# We can now launch gns3 on our machine to realize the diagram asked in the subject :
gns3
