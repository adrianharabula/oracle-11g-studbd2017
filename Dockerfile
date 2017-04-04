FROM wnameless/oracle-xe-11g:latest

MAINTAINER Adrian Harabula <adrian.harabula@gmail.com>

RUN wget http://profs.info.uaic.ro/~vcosmin/pagini/resurse_bd/dump2017/bd.zip \
    && apt-get install unzip \
    && unzip bd.zip

ENV LISTENER_ORA=/u01/app/oracle/product/11.2.0/xe/network/admin/listener.ora
ENV TNSNAMES_ORA=/u01/app/oracle/product/11.2.0/xe/network/admin/tnsnames.ora
ENV ORACLE_HOME=/u01/app/oracle/product/11.2.0/xe
ENV PATH=$ORACLE_HOME/bin:$PATH
ENV ORACLE_SID=XE

RUN service oracle-xe start \
    && echo exit | sqlplus system/oracle @create_user.sql \
    && imp student/STUDENT file=bd.dmp
