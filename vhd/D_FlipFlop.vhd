
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity D_FlipFlop is
    Port (
        D   : in  STD_LOGIC;
        CLK : in  STD_LOGIC;
        Q   : out STD_LOGIC;
        Qn  : out STD_LOGIC
    );
end D_FlipFlop;

architecture Behavioral of D_FlipFlop is
    signal q_state : STD_LOGIC;
begin

    process(CLK)
    begin
        if rising_edge(CLK) then
            q_state <= D;
        end if;
    end process;

    Q  <= q_state;
    Qn <= not q_state;

end Behavioral;
