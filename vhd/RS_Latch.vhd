
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RS_Latch is
    Port (
        S  : in  STD_LOGIC;
        R  : in  STD_LOGIC;
        Q  : out STD_LOGIC;
        Qn : out STD_LOGIC
    );
end RS_Latch;

architecture Behavioral of RS_Latch is
    signal q_state : STD_LOGIC;
begin
    process(S, R)
    begin
        if R = '1' then
            q_state <= '0';
        elsif S = '1' then
            q_state <= '1';
        end if;
    end process;

    Q  <= q_state;
    Qn <= '0' when (S = '1' and R = '1')
          else not q_state;
end Behavioral;
