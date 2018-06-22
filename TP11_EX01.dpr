program TP11_EX01;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils, math;

  function atn(x : Real; n : Integer) : Real;
  var
    i : Integer;
    res : Real;
  begin
    res := 0;
    for i := 0 to n do
    begin
      res := res + (power(-1,i)) * (power(x,(2*i+1)))/(2*i+1);
    end;
    Result := res;
  end;

  procedure pi();
  begin
    writeln(((4*atn(1/5,10)) - atn(1/239,10)) * 4:4:4);
  end;

  function atnRec(x : Real; n : Integer) : Real;
  var
    i : Integer;
    res : Real;
  begin
    res := 0;
    if n = 0 then
    begin
      res := (power(-1,n)) * power(x,(2*n+1))/(2*n+1);
    end
    else
    begin
      res := res + atnRec(x, n-1);
    end;
    Result := res;
  end;

begin

  writeln(atn(0.7, 2):4:4);
  writeln(atnRec(0.7, 2):4:4);
  pi();

  readln;

end.
