 declare
 i number;
 n number;
 s number;
 begin
 i:=1;
 n:=&n;
 s:=0;
 for i in 1..n loop
 if i MOD 2=0 then
 s:=s+i;
 end if;
 end loop;
 dbms_output.put_line('sum of even numbers in range of '||n||'= '||s);
 end;
 /
--Enter value for n: 5
--old   7: n:=&n;
--new   7: n:=5;
--sum of even numbers in range of 5= 6
