# Oracle 11g preconfigured for [psgbd](https://profs.info.uaic.ro/~vcosmin/bd) course@infoiasi
Database Imported from http://profs.info.uaic.ro/~vcosmin/pagini/resurse_bd/dump2017/bd.zip

# To install Docker (needed only first time)
I offer free support for installation problems. Write at adrian.harabula@gmail.com, describe your problem and I'll help you fix it.

Follow these links for installation instructions:

 * for [Windows](https://www.youtube.com/watch?v=S7NVloq0EBc)
 * for [Mac](https://www.youtube.com/watch?v=lNkVxDSRo7M)
 * for [Ubuntu](https://www.youtube.com/watch?v=V9AKvZZCWLc)

## Additional links for installation
 * link to Docker [official install guides](https://docs.docker.com/engine/installation/)
 * [written tutorial](https://www.docker.com/products/docker-toolbox) for Windows & Mac
 

# How to run
In a terminal run
`docker run --name oracle-studbd -d -p 49161:1521 adrianharabula/oracle-11g-studbd2017`

Then, open Oracle SQL Developer and connect with the following credentials:

```
username: student
password: STUDENT
hostname: localhost
port: 49161
```

# More info
This image is built from [wnameless/oracle-xe-11g](https://hub.docker.com/r/wnameless/oracle-xe-11g/), please review that page for more info about the oracle image itself.

This script creates user student and populates database according to instructions in [lab1](http://profs.info.uaic.ro/~vcosmin/pagini/resurse_bd/laborator_psgbd_2017/laborator1.pdf).

Happy Oracle-ing!
