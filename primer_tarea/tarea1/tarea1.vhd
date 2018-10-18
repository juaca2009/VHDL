library ieee
library sumador_1bitC;
library sumador_3bit;
use ieee.std_logic_1164.all;

entity tarea1 is
port(
 A: in bit_vector(2 downto 0);
 B: in bit_vector(2 downto 0);
 S: out bit_vector(3 downto 0);
 COMP: out bit
);
end tarea1 ;

architecture tarea1_arc of tarea1 is
 component sumador_3bit
   port(
    A,B,C,D,E,F: in bit;
    sal, sal2, sal3, sal4: out bit   
   );
end component;

begin
 ss0: sumador_3bit port map (A(0), B(0), A(1), B(1), A(2), B(2), S(0), S(1), S(2), S(3));
 COMP <= (A(0) AND (NOT B(0))) OR (A(1) AND (NOT B(1))) OR (A(2) AND (NOT B(2)));
end architecture ; -- arch