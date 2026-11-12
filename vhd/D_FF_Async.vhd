
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity D_FF_Async is
    Port (
        D   : in  STD_LOGIC;
        CLK : in  STD_LOGIC;
        set : in  STD_LOGIC;
        clr : in  STD_LOGIC;
        Q   : out STD_LOGIC;
        Qn  : out STD_LOGIC
    );
end D_FF_Async;

architecture Behavioral of D_FF_Async is
    signal q_state : STD_LOGIC;
begin

    process(CLK, set, clr)
    begin
        if clr = '1' then
            q_state <= '0';

        elsif set = '1' then
            q_state <= '1';

        elsif rising_edge(CLK) then
            q_state <= D;

        end if;
    end process;

    Q  <= q_state;
    Qn <= not q_state;

end Behavioral;
