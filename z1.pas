program Z1;

const MAX_DUZ = 100;

type niz = array[1..MAX_DUZ] of integer;

var
 ulazniNiz, izlazniNiz : niz;
 duzina : integer;
 
function citaj(var ulazniNiz:niz;var duzina:integer):boolean;
var i : integer;
begin
 writeln('duzina?'); readln(duzina);
 if ((duzina > 0) and (duzina < MAX_DUZ)) then begin
 for i := 1 to duzina do readln(ulazniNiz[i]);
 citaj := true;
 end else citaj := false;
end;

procedure obrada(ulazniNiz:niz;var izlazniNiz:niz;duzina:integer);
var i, j, max : integer;
begin
 for i := 1 to duzina do begin
 max := -1; izlazniNiz[i] := 0;
 for j := i - 1 downto 1 do begin
 if (ulazniNiz[j] > max) then begin
 izlazniNiz[i] := izlazniNiz[i] + 1;
 max := ulazniNiz[j];
 end;
 end;
 end;
end;

procedure pisi(izlazniNiz : niz; duzina : integer);
var i : integer;
begin
 writeln('izlazni niz:');
 for i := 1 to duzina do write(izlazniNiz[i], ' ');
end;

begin
 if (citaj(ulazniNiz, duzina)) then begin
 obrada(ulazniNiz, izlazniNiz, duzina);
 pisi(izlazniNiz, duzina);
 end else writeln('nekorektna duzina');
end.