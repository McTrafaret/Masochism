program ilya_pokupaet_domashnyuu_rabotu_na_saite_ovsyanka_ser.com
var expression: string; i, code, temp, res: integer;
begin
	res:=0;
	writeln('Input expression: ');
	readln(expression);
	i:=Length(expression)-2;
	while i>0 do
		begin
			Val(copy(expression, i, 2), temp, code);
			res+=temp;
			Delete(expression, i, 3);
			i-=2;
		end;
	Val(expression, temp, code);
	res+=temp;
	writeln(res);
end.
