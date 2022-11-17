begin
var s,ss: string;
var l,ls,i,j: integer;
var f: boolean;
 write('Введите строку: ');
 readln(s);
 write('Введите подстроку: ');
 readln(ss);
 i := 1;
 l := Length(s);
 ls := Length(ss);
 f := false;
 while i <= l - ls + 1 do
 begin
   if s[i] = ss[1] then
   begin
     f := true;
     for j := 1 to ls - 1 do
       if s[i + j] <> ss[j + 1] then
       begin
         i := i + j;
         f := false;
         break
       end;
     if f then
     begin
       print('является');
       exit;
     end;
   end;
   i += 1;
 end;
 print('не является');
end.