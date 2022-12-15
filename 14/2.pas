var f,g:text;
    s,max,s1:string;
    i:byte;
begin
    Assign(f,'e:\14\ttxx.txt');
    Reset(f);
    max:='';
    while not Eof(f) do begin
      readln(f,s);
      if Length(s)>Length(max) then max:=s;
    end;
    close(f);
    reset(f);
    assign(g,'out.txt');
    rewrite(g);
    while not eof(f) do begin
      readln(f,s);
      if Length(s)=Length(max) then begin
        s1:='';
        For i:=1 to Length(s) do
         s1:=s[i]+s1;
        writeln(g,s1);
      end;
    end;
    Close(f);
    Close(g);
    readln;
End.