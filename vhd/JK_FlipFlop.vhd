
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity JK_FlipFlop is
    Port (
        J   : in  STD_LOGIC;
        K   : in  STD_LOGIC;
        CLK : in  STD_LOGIC;
        Q   : out STD_LOGIC;
        Qn  : out STD_LOGIC
    );
end JK_FlipFlop;

architecture Behavioral of JK_FlipFlop is
    signal q_state : STD_LOGIC;
begin

    process(CLK)
    begin
        if rising_edge(CLK) then

            if J = '0' and K = '0' then
                null;                 -- Hold

            elsif J = '0' and K = '1' then
                q_state <= '0';       -- Reset

            elsif J = '1' and K = '0' then
                q_state <= '1';       -- Set

            elsif J = '1' and K = '1' then
                q_state <= not q_state; -- Toggle

            end if;

        end if;
    end process;

    Q  <= q_state;
    Qn <= not q_state;

end Behavioral;
