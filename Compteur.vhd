----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/09/2024 04:41:59 PM
-- Design Name: 
-- Module Name: Compteur - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Compteur is
    Port ( CK : in STD_LOGIC;
           RST : in STD_LOGIC;
           LOAD : in STD_LOGIC;
           SENS : in STD_LOGIC;
           EN : in STD_LOGIC;
           Din : in STD_LOGIC_VECTOR (7 downto 0);
           Dout : out STD_LOGIC_VECTOR (7 downto 0));
end Compteur;

architecture Behavioral of Compteur is
    signal counter_reg : std_logic_vector(7 downto 0) := (others => '0');
begin

process

begin

    wait until CK'Event and CK = '1';
    
    if (RST = '0') then counter_reg <= "00000000";
    elsif (LOAD = '1') then counter_reg <= Din;
    elsif (EN = '0') then 
        if(SENS = '0') then counter_reg<=(counter_reg-1); else counter_reg<=(counter_reg+1); end if;
    end if;
      
end process;
Dout <= counter_reg;

end Behavioral;
