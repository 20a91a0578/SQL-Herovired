declare
i number;
n number;
s number;
begin
i:=1;
n:=&n;
s:=0;
while i<=n
loop
s:=s+i;
i:=i+1;
end loop;
dbms_output.put_line('sum of first '||n||' numbers = '||s);
end;
/
--Enter value for n: 10
--sum of first 10 numbers = 55
