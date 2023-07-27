-- REF: http://www.dba-oracle.com/t_ora_65096_create_user_12c_without_c_prefix.htm
alter session set "_ORACLE_SCRIPT" = true;

begin
    execute immediate 'drop user egibide cascade';
exception
    when others then
        dbms_output.put_line('El usuario no existe.');
end;
/

-- REF: http://oracle-apprentice.blogspot.com/2011/03/oracle-password-restriction-solution.html
create user lgutie identified by MasterHunter;

grant connect, resource to lgutie;
grant unlimited tablespace to lgutie;
grant create synonym, create public synonym to lgutie;
grant create view to lgutie;

commit;