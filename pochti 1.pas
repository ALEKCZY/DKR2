begin
var A:array of integer;
var s: integer;
  write('Размер = ');
var n:=readInteger;
SetLength(A, n);
  for var i:=0 to n-1 do
  begin
  A[i]:= readInteger;
  end;
  writeln;
  write('Рандом число: ');
  readln(s);
 var q:=0;
 var k:=0;
  while (k<n) and (q<=s) do
  begin
    inc(k);
    q:=q+A[k];
  end; 
  if q<=s then WriteLn('Сумма всех элементов = ',q,' < ',s)
  else
    WriteLn(k);
end.