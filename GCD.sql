 declare
 a number;
 b number;
 t number;
 r number;
 begin
 a:=&a;
 b:=&b;
 r:=b;
 while b!=0 loop
 if b<a then
 t:=a;
 a:=b;
 b:=t;
 end if;
 b:=b mod a;
 end loop;
 dbms_output.put_line('LCM OF '|| a||', '||r||'= '||a);
 end;
 /
--Enter value for a: 4
--old   7: a:=&a;
--new   7: a:=4;
--Enter value for b: 8
--old   8: b:=&b;
--new   8: b:=8;
--LCM OF 4, 8= 4
