-- Verify escola:deleta_aluno on pg

BEGIN;

-- XXX Add verifications here.
    SELECT 
    pg_catalog.has_function_privilege('escola.deleta_aluno(bigint)','execute');

ROLLBACK;
