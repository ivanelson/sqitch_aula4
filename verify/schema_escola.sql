-- Verify escola:schema_escola on pg

BEGIN;

-- XXX Add verifications here.
   select pg_catalog.has_schema_privilege('escola','usage');
ROLLBACK;
