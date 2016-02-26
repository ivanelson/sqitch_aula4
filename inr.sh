#!/bin/bash

sqitch --engine pg init escola --uri https://github.com/ivanelson/sqitch_aula4.git 
sqitch config --user engine.pg.client /opt/PostgreSQL/9.4/bin/psql
sqitch config --user user.name 'Ivan Nunes'
sqitch config --user user.email 'ivan.nunes@iv4n.com'

sqitch target add testes db:pg://$USER:postgres@127.0.0.1:5432/db_escola
sqitch engine add pg testes

sqitch config --bool deploy.verify true
sqitch config --bool rebase.verify true
