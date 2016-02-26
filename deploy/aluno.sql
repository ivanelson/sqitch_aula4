-- Deploy escola:aluno to pg
-- requires: schema_escola

BEGIN;

-- XXX Add DDLs here.
   CREATE TABLE ESCOLA.ALUNO (  
    ID BIGSERIAL PRIMARY KEY,
    NOME VARCHAR(40) NOT NULL,   
    CPF  CHAR (11),   
    DT_INCLUSAO DATE DEFAULT NOW() ,
    FL_ATIVO CHAR(1)
   );

COMMIT;
