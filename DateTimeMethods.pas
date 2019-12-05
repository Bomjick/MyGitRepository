unit DateTimeMethods;

function IsLeapYear(year: integer): boolean;
begin
  result := year mod 4 = 0;
end;

function DaysInMonth(month, year: integer): integer;
begin
  case month of
    1, 3, 5, 7, 8, 10, 12: result := 31;
    4, 6, 9, 11: result := 30;
    2:
      begin
        if IsLeapYear(year) then
          result := 29
        else result := 28;
      end; 
  
  end;
end;

function LaterInDay(p1, p2: DateTime): DateTime := p1;


function LaterInYear(p1, p2: DateTime): DateTime := (p1.Date > p2.Date) ? p1 : p2;




function DaysInYear(year: integer): integer := (IsLeapYear(year)) ? 366 : 365;


function DaysInYearRange(year1, year2: integer): integer;
begin
  var a, b: integer;
  a := (IsLeapYear(year1)) ? 366 : 365;
  b := (IsLeapYear(year2)) ? 366 : 365;
  result := a + b
  
end;

function SecondsInHours(hours: integer): integer;
begin
  Assert(hours > 0);
  readln(hours);
  writeln(hours * 3600);
end;

begin

end. 