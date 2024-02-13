----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/09/2024 05:20:53 PM
-- Design Name: 
-- Module Name: Test_Compteur - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Test_Compteur is
--  Port ( );
end Test_Compteur;

architecture Behavioral of Test_Compteur is

COMPONENT  Compteur is
    Port ( CK : in STD_LOGIC;
           RST : in STD_LOGIC;
           LOAD : in STD_LOGIC;
           SENS : in STD_LOGIC;
           EN : in STD_LOGIC;
           Din : in STD_LOGIC_VECTOR (7 downto 0);
           Dout : out STD_LOGIC_VECTOR (7 downto 0));
end COMPONENT;

--Inputs
signal CK_T: std_logic:='0';
signal RST_T: std_logic:='0';
signal LOAD_T: std_logic:='0';
signal SENS_T: std_logic:='0';
signal EN_T: std_logic:='0';
signal Din_T: std_logic_vector(7 downto 0);

--Outputs 
signal Dout_T: std_logic_vector (7 downto 0);

constant Clock_period : time := 10 ns;

begin

Label_uut: Compteur PORT MAP ( 
           CK => CK_T,
           RST => RST_T,
           LOAD => LOAD_T,
           SENS => SENS_T,
           EN => EN_T,
           Din => Din_T,
           Dout => Dout_T
);

-- Clock process definitions
Clock_process : process
begin
    CK_T <= not(CK_T);
    wait for Clock_period/2;
end process;

-- Stimulus process
-- T1 < T2 et T3 < T4
RST_T <= '0' , '1' after 50 ns, '0' after 700 ns, '1' after 750 ns;
LOAD_T <= '1' after 90 ns, '0' after 120 ns;
Din_T <= "00010001" ;
sens_t <='1' , '0' after 500 ns;
en_t <='0', '1' after 800 ns, '0' after 840 ns ;

end Behavioral;
