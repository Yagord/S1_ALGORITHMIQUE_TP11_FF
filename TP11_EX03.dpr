program TP11_EX03;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

  procedure nombreParfait(nb : Integer);
  var
    i : Integer;
    j : Integer;
    somme : Integer;
  begin
    somme := 0;
    for i := 1 to nb do
    begin
      for j := 1 to i-1 do
      begin
        if (i mod j=0) then
        begin
          somme := somme + j;
        end;
      end;
      if (i = somme) then
      begin
        writeln(j);
      end;
      somme := 0;
    end;
  end;

  function sommeDiviseur(nb : Integer) : Integer;
  var
    i : Integer;
    somme : Integer;
  begin
    somme := 0;
    for i := 1 to nb-1 do
    begin
      if (nb mod i = 0) then
      begin
        somme := somme + i;
      end;
    end;
    Result := somme;
  end;

  function nombreAmicaux(nb1 : Integer; nb2 : Integer) : Boolean;
  var
    somme1 : Integer;
    somme2 : Integer;
    res : Boolean;
  begin
    somme1 := sommeDiviseur(nb1);
    somme2 := sommeDiviseur(nb2);
    if ((somme1 = nb2) AND (somme2 = nb1))then
    begin
      res := True;
    end
    else
    begin
      res := False;
    end;
    Result := res;
  end;


  procedure listeAmicaux(nb : integer);
  var
    i : Integer;
    j : Integer;
  begin
    for i := 1 to 1500 do
    begin
      for j := 1 to i do
      begin
        if nombreAmicaux(i, j) AND (i<>j)  then
        begin
          writeln(i, ' et ', j);
        end;
      end;
    end;
  end;

begin

  nombreParfait(1000);
  writeln(sommeDiviseur(6));
  writeln(nombreAmicaux(220, 284));
  listeamicaux(1500);
  readln;

end.
