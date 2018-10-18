library ieee;
use ieee.std_logic_1164.all;

entity sumador_1bitC is
port (
 A, B, C: in bit;
 S, CA: out bit
);
end sumador_1bitC ;

architecture sumador_1bitC_arc of sumador_1bitC is
begin
 S <= A xor B xor C;
 CA <= (A and B) or (C and (A xor B));
end architecture ; 