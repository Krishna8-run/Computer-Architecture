library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity COMPARATOR_2BIT is
    port (
        A  : in  std_logic_vector(1 downto 0);
        B  : in  std_logic_vector(1 downto 0);
        EQ : out std_logic; -- A = B
        GT : out std_logic; -- A > B
        LT : out std_logic  -- A < B
    );
end entity COMPARATOR_2BIT;

architecture Behavioral of COMPARATOR_2BIT is
begin
    process(A, B)
    begin
        EQ <= (A(1) xnor B(1)) and (A(0) xnor B(0)); -- A = B
        GT <= (A(1) and not B(1)) or ((A(1) xnor B(1)) and A(0) and not B(0));
        LT <= (not A(1) and B(1)) or ((A(1) xnor B(1)) and not A(0) and B(0));
    end process;
    end architecture Behavioral;
