program TP11_EX02;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

  function nbLapinsRec(nSem : Integer) : Integer;
  var
    res : Integer;
  begin
    if nSem = 0 then
    begin
      res := 4;
    end
    else
    begin
      if nSem = 1 then
      begin
        res := 8;
      end
      else
      begin
        res := nbLapinsRec(nSem - 1) + nbLapinsRec(nSem - 2);
      end;
    end;
    Result := res;
  end;

begin

  writeln(nbLapinsRec(4));

  readln;

end.
