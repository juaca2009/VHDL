library ieee;
library sumador_1bits;
use ieee.std_logic_1164.all;

entity sumador_completo is
port (
 x, y, z: in bit;
 s, c: out bit
);
end sumador_completo;

architecture sumador_completo_arc of sumador_completo is
component sumador_1bits
 port(
  A, B: in bit;
  salida, carrie: out bit
 );
end component;

signal s_parcial: BIT;
signal c_parcial1, c_parcial2: BIT;

begin
 ss0: sumador_1bits port map (x, y, s_parcial, c_parcial1);
 ss1: sumador_1bits port map (s_parcial, z, s, c_parcial2);
 c <= c_parcial1 or c_parcial2; 
end sumador_completo_arc;