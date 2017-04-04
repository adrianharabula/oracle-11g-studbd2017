# Oracle 11g preconfigured for [psgbd](https://profs.info.uaic.ro/~vcosmin/bd) course@infoiasi
Database Imported from http://profs.info.uaic.ro/~vcosmin/pagini/resurse_bd/dump2017/bd.zip

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

# Warning
The image is quite large to download, around 4GB. So in order to make it smaller use this:

```
git clone https://github.com/adrianharabula/oracle-11g-studbd2017.git
cd oracle-11g-studbd2017
docker build . -t adrianharabula/oracle-11g-studbd2017
```

This will run the database import script on your computer and needs just 700MB of Internet. It will spike your CPU on build, and will take about 1-2 minutes.

Happy Oracle-ing!
