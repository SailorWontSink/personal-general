program s5a1b;

var
  input, s1, s2 : string;
  i : integer;
  value : real;
  validE, validF : boolean;

procedure validation;
  var
    err : integer;
  begin
    validE := true;
    validF := true;
    if (s1 <> 'sin') and (s1 <> 'cos') and (s1 <> 'exp') then
      begin
        writeln('Invalid function!!!');
        validE := false;
        exit;
      end;
    if (input[4] <> '(') or (input[length(input)] <> ')') then
      validF := false;
    val(s2, value, err);
    if err <> 0 then
      validF := false;
    if s1 = 'exp' then
      begin
        if value = 1 then
          validF := false;
      end;
    if validF = false then
      writeln('Invalid format!!!');
  end;

function a2r : real;
  begin
    a2r := (pi / 180) * value;
  end;

procedure output;
  begin
    write('The result is ');
    if s1 = 'cos' then
      writeln(cos(a2r):0:4, '.');
    if s1 = 'sin' then
      writeln(sin(a2r):0:4, '.');
    if s1 = 'exp' then
      writeln(exp(value):0:4, '.');
  end;

begin
  repeat
    write('Enter a function with parameter (cos/sin/exp/exit) : ');
    readln(input);
    s1 := copy(input, 1, 3);
    s2 := copy(input, 5, length(input) - 5);
    if input = 'exit' then
      break;
    validation;
    if (validE = true) and (validF = true) then
      output;
  until false;
  write('Goodbye!!!');
  for i := 1 to 600000000 do
    write;
end.