library ieee;
use ieee.std_logic_1164.all;

entity sumador_1bits is
port (
 A, B: in bit;
 salida: out bit;
 carrie: out bit
) ;
end sumador_1bits;

architecture sumador_1bits_arc of sumador_1bits is
begin
 salida <= A xor B;
 carrie <= A and B;
end sumador_1bits_arc ; 
