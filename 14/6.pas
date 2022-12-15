var
 f: file of char;
 i: integer;
begin
 assign(f, 'D:\text.txt ');
 reset(f);
 i := 1;
  while not eof(f) do begin
 seek(f, i);
 write(f, '!');
 i += 2;
  end;
 close(f);
end.