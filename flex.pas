Type
Vector = array[1..6] of real;
Matrix = array[1..6] of vector;
var list_a, list_b, list_c : matrix; i, j, k: integer; buf: real;
begin
   for i:=1 to 6 do
   	begin
   		for j:=1 to 6 do
   			list_a[i,j]:=(i+j)*sin(i)/cos(j)
   	end;

   list_b:=list_a;

   for i:=1 to 6 do
   	begin
   		for k:=5 downto 1 do
   			for j:=1 to k do
   				begin
   					if list_b[i, j]<list_b[i, j+1] then
   						begin
   							buf:=list_b[i, j];
   							list_b[i, j+1]:=list_b[i, j];
   							list_b[i, j]:=buf;
						end;
				end;
	end;

   for i:=1 to 6 do
   	begin
   		for j:=1 to 6 do
   			list_c[i,j]:=j
   	end;

   for i:=1 to 6 do
   	begin
   		for j:=1 to 6 do
   			write(list_c[i,j]:4:4, ' ');
   		writeln();
   	end;
end.
