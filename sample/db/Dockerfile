FROM syscomiddleware/oracle-database-instance:oraclelinux-11.2.0.4

MAINTAINER Jorge Quilcate <jorge.quilcate@sysco.no>

ADD create-schema.sql .

RUN sh startup.sh && \
    while ! grep "bin/dbstart: Database instance \"orcl\" warm started." startup.log; do sleep 10; done && \
    echo exit | bin/sqlplus system/welcome1 @create-schema.sql

CMD sh startup.sh && \
    tail -f startup.log
