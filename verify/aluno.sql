-- Verify escola:aluno on pg

BEGIN;

-- XXX Add verifications here.
--- USANDO SELECT forcando FALSE
   select 
    ID , 
    NOME , 
    CPF  , 
    DT_INCLUSAO , 
    FL_ATIVO 
   from escola.aluno   
   where
   FALSE;

--- USANDO inquiry functions
   SELECT PG_CATALOG.HAS_TABLE_PRIVILEGE('ESCOLA.ALUNO','SELECT');


ROLLBACK;
