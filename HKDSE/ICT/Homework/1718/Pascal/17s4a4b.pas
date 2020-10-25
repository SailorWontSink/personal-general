program hcmLcmCalculator;
(* Programmer Name  : Ivan Xiang
   Class            : S.4B
   Class No.        : 31
   Compiling Date   : 18th Nov., 2017
   Program File Name: 17s4a4b.pas
   Purpose          : This program calculate the HCF and LCM of three number
                      which are given by the user.
*)
var
 a, b, c, hcf, lcm : integer;

begin
  //ask the user to input the numbers and check if them fit the range,
  repeat
  write('Enter 3 positive integer : ');
  readln(a, b, c);
  if (a < 1) or (b < 1) or (c < 1) then
    writeln('Please only enter positive values!!');
  until (a > 1) and (b > 1) and (c > 1);

  if a < b then  //find out a, b, c, which is larger for later calculation
    begin
     hcf := a;
     lcm := b;
    end
  else
    begin
     hcf := b;
     lcm := a;
    end;
  if c < hcf then
    hcf := c;
  if c > lcm then
    lcm := c;

  (*calculate the hcf by keep minusing it until the all the number can be
    divided without reminder*)
  while not((a mod hcf = 0) and (b mod hcf = 0) and (c mod hcf = 0)) do
    hcf := hcf - 1;

  (*calculate the lcm by keep adding it until the all the number can divided
    the lcm without reminder*)
  while not((lcm mod a = 0) and (lcm mod b = 0) and (lcm mod c = 0)) do
    lcm := lcm + 1;

  writeln('The highest common factor is ', hcf);
  writeln('The lowest common multiplier is ', lcm);
  readln
end.