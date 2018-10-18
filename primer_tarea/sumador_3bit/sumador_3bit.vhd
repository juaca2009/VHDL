library ieee;
library sumador_1bitC;
use ieee.std_logic_1164.all;

entity sumador_3bit is
port (
 A,B,C,D,E,F: in bit;
 sal, sal2, sal3, sal4: out bit
);
end sumador_3bit ;

architecture sumador_3bit_arc of sumador_3bit is
 component sumador_1bitC
  port(
   A, B, C: in bit;
   S, CA: out bit
 );
end component;

signal c_parcial1, c_parcial2: BIT;
signal c1: BIT;

begin
 c1 <= '0';
 ss0: sumador_1bitC port map (A, B, c1, sal, c_parcial1);
 ss1: sumador_1bitC port map (C, D, c_parcial1, sal2, c_parcial2);
 ss3: sumador_1bitC port map (E, F, c_parcial2, sal3, sal4);
end architecture ; --a: inout std_logic_vector(1 downto 0))