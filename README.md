# Oracle 11g preconfigured for [psgbd](https://profs.info.uaic.ro/~vcosmin/bd) course@infoiasi
Database Imported from http://profs.info.uaic.ro/~vcosmin/pagini/resurse_bd/dump2017/bd.zip

# To install Docker (needed only first time)
I offer free support for installation problems. Write at adrian.harabula@gmail.com, describe your problem and I'll help you fix it. Also you can ask me on [FB](https://fb.com/adrian.harabula.32) or Skype _adrian.harabula_.

Follow these links for installation instructions:

 * for [Windows](https://www.youtube.com/watch?v=S7NVloq0EBc)
 * for [Mac](https://www.youtube.com/watch?v=lNkVxDSRo7M)
 * for [Ubuntu](https://www.youtube.com/watch?v=V9AKvZZCWLc)
 * for any linux distro run `curl -sSL get.docker.com | sudo sh`
 * for other platforms, follow [official Docker install guides](https://docs.docker.com/engine/installation/)
 

# How to run
In a terminal run:  
```
docker run --name oracle-studbd -d -p 49160:22 -p 49161:1521 adrianharabula/oracle-11g-studbd2017
```
This creates a local container on your pc from the Docker image.

Run the container with:
```
docker run oracle-studbd
```

To remove container, discard database changes and start with a freshly imported dump run:
```
docker stop oracle-studbd
docker rm oracle-studbd
docker run --name oracle-studbd -d p- 49160:22 -p 49161:1521 adrianharabula/oracle-11g-studbd2017
```

# Using sqlplus
Connect to ssh with `ssh root@localhost -p 49160`, use admin as password. From this shell you have access to sqlplus client.

# Using with Oracle SQL Developer
Open Oracle SQL Developer and connect with the following credentials:

```
username: student
password: STUDENT
hostname: localhost # or Docker machine ip (default is 192.168.99.100) if running on Windows or Mac
port: 49161
```

# More info
This image is built from [wnameless/oracle-xe-11g](https://hub.docker.com/r/wnameless/oracle-xe-11g/), please review that page for more info about the oracle image itself.

This script creates user student and populates database according to instructions in [lab1](http://profs.info.uaic.ro/~vcosmin/pagini/resurse_bd/laborator_psgbd_2017/laborator1.pdf).

Happy Oracle-ing!
