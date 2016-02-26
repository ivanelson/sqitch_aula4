-- Deploy escola:deleta_aluno to pg
-- requires: aluno

BEGIN;

-- XXX Add DDLs here.
   CREATE OR REPLACE FUNCTION escola.deleta_aluno(
   id_aluno bigint) returns boolean language plpgsql 
   security definer as
   $$
    BEGIN
        delete from escola.aluno where id = id_aluno;
        return FOUND;
    END;
   $$;

COMMIT;
