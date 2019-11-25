unit DateTimeMethods;
function IsLeapYear(year: integer): boolean;
begin
result:=year mod 4=0;
end;
function DaysInMonth(month, day: integer): integer := 0;
if IsLeapYear=true then
  case month of
    1,3,5,7,8,10,12: days:=31;
    4,6,9,11: days:=30;
    2: days:=29;
    
  end
  else
  case month of
    1,3,5,7,8,10,12: days:=31;
    4,6,9,11: days:=30;
    2: days:=28;
  end;
  writeln(days);

function LaterInDay(p1, p2: DateTime): DateTime := p1;
function LaterInYear(p1, p2: DateTime): DateTime := p1;
function DaysInYear(year: integer): integer := 0;
function DaysInYearRange(year1, year2: integer): integer := 0;
function SecondsInHours(hours: integer): integer := 0;

begin

end.