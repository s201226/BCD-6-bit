library ieee;
use ieee.std_logic_1164.all;

entity decoder_7seg is
	port(x:in std_logic_vector(3 downto 0);
		hex:out std_logic_vector(0 to 6));
end decoder_7seg;


architecture behavior of decoder_7seg is
begin
	P6:hex(6)<=(not x(3)and not x(2)and not x(1))or(x(2) and x(1)and x(0));
	P5:hex(5)<=(not x(3)and not x(2)and(x(1)xor x(0)))or(x(1) and x(0));
	P4:hex(4)<=(x(2)and not x(1))or x(0);
	P3:hex(3)<=(not x(3)and not x(1)and(x(2)xor x(0)))or((not x(3))and x(2)and x(1)and x(0));
	P2:hex(2)<=not x(3) and not x(2) and x(1) and not x(0);
	P1:hex(1)<=not x(3) and x(2) and (x(1) xor x(0));
	P0:hex(0)<=not x(3) and not x(1) and (x(2) xor x(0));
end behavior;