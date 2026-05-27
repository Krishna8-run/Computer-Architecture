library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DECODER_TB is
end entity DECODER_TB;

architecture Simulation of DECODER_TB is
    -- Stimulus signals
    signal At  : std_logic_vector(1 downto 0) := "00";
    signal EN : std_logic := '1';
    signal Y  : std_logic_vector(3 downto 0);
begin

    -- Instantiate the Design Under Test (DUT)
    DUT : entity work.DECODER_2TO4 
        port map (
            A  => At, 
            EN => EN, 
            Y  => Y
        );

    -- Stimulus process
    STIMULUS : process
    begin
        -- Test behavior when enabled
        EN <= '1';
        A  <= "00"; wait for 10 ns; -- Y = 0001
        A  <= "01"; wait for 10 ns; -- Y = 0010
        A  <= "10"; wait for 10 ns; -- Y = 0100
        A  <= "11"; wait for 10 ns; -- Y = 1000    
        
        -- Test behavior when disabled
        EN <= '0';
        A  <= "10"; wait for 10 ns; -- EN = 0, Y = 0000
        
        wait;                       -- Suspend simulation indefinitely
    end process;

end architecture Simulation;