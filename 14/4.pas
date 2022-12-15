var
 S:String;
 F_in: File of Real;
 s2,s1,s,max:Real;
 i:integer;
 a:real;
begin
  Assign(F_in,'e:\14\text.txt');
  rewrite(F_in);
  writeln ('Введите вещественные числа');
  for i:=1 to 5 do begin
      read(a);
      write(F_in,a);
  end;
  close(F_in);
  Reset(F_in); 
  Read(F_in,s1);
  Read(F_in,s);
  s2:=s1;
  if (s1>s) then max:=El1;
  while (not eof(F_in)) do begin
    s2:=s1;
    s1:=sl;
    Read(F_in,El);
    if (sl<s1) and (s1>s2) then max:=s1;
   end;
  if s1<s then max:=s;
  Writeln(max);
  Close(F_in);
end.