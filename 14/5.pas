var
  f:text;
  a:array[1..10]of real;
  m,mmin,mmax,n1,n2:integer;
  maxx,minn:real;
  begin
    assign(f,'e:\14\ttext.txt');
    rewrite(f);
    writeln('введите 10 чиел : ');
    for var ii:=1 to 10 do begin
      read(m);
      writeln(f,m);
    end;
    close(f);
    rewrite(f);
    var ii:= 1;
    while not eof(f) do begin
      read(f,a[ii]);
      ii+=1;
    end;
    for var i:=1 to 10 do begin
      if a[i]> mmax then
      mmax:=a[i];
      n1:=i;
    end;
    maxx:=a[mmax];
    mmin:=1233;
    for var i:=1 to 10 do begin
      if a[i]<mmin then
        mmin:=a[i];
      n2:=i;
    end;
    minn:=a[mmin];
    close(f);
    rewrite(f);
    for var i:=1 to 10  do begin
      if i= mmax then write(f,minn)
    else begin
      if i = min then
        write(f,maxx)
   else
    write(f,a[i]);
    end;
    end;
    close(f);
  end.