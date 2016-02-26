-- Revert escola:deleta_aluno from pg

BEGIN;

-- XXX Add DDLs here.
   DROP FUNCTION escola.deleta_aluno(bigint); 

COMMIT;
