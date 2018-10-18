library ieee;
use ieee.std_logic_1164.all;

entity decodificador_2Ent is
port(
 B0, B1: in std_logic;
 F0, F1, F2, F3: out std_logic
);
end decodificador_2Ent ;

architecture decodificador_2Ent_arc of decodificador_2Ent is

signal entradas: std_logic_vector (1 downto 0);
signal salidas: std_logic_vector (3 downto 0);

begin
 entradas <= B0 & B1;
 with entradas select 
  salidas <= "1000" when "00",
             "0100" when "01",
             "0010" when "10",
             "0001" when others;
 F3 <= salidas(0);
 F2 <= salidas(1);
 F1 <= salidas(2);
 F0 <= salidas(3);



end architecture ; -- arch