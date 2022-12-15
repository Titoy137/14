var f:file of char;
    c:char;
    i,k:integer;
begin
assign(f,'e:\14\texxt.txt');
rewrite(f);
write('Сколько символов записаны в файле : ');
read(k);
for i:=1 to k do
 begin
  read(c);
  write(f,c);
 end;
reset(f);
writeln('Исходный файл:');
k:=-1;
for i:=0 to filesize(f)-1 do
 begin
  read(f,c);
  write(c);
  if c=' ' then k:=i;
 end;
writeln;
if k<>-1 then begin
  seek(f,k);
  truncate(f);
  writeln('конец :');
  seek(f,0);
  while not eof(f) do
   begin
    read(f,c);
    write(c);
   end;
  close(f);
 end;
end.