--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : mainControl.vhf
-- /___/   /\     Timestamp : 12/14/2020 22:28:36
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl C:/Users/naraw/Downloads/LAB06/LAB06/passwordChecker/mainControl.vhf -w C:/Users/naraw/Downloads/LAB06/LAB06/passwordChecker/mainControl.sch
--Design Name: mainControl
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL COMPM16_HXILINX_mainControl -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.std_logic_unsigned.all;

entity COMPM16_HXILINX_mainControl is
port(
    GT  : out std_logic;
    LT  : out std_logic;

    A   : in std_logic_vector(15 downto 0);
    B   : in std_logic_vector(15 downto 0)
  );
end COMPM16_HXILINX_mainControl;

architecture COMPM16_HXILINX_mainControl_V of COMPM16_HXILINX_mainControl is
begin
     
  GT <= '1' when ( A > B ) else '0';
  LT <= '1' when ( A < B ) else '0';

end COMPM16_HXILINX_mainControl_V;
----- CELL CB2CE_HXILINX_mainControl -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CB2CE_HXILINX_mainControl is
  
port (
    CEO  : out STD_LOGIC;
    Q0   : out STD_LOGIC;
    Q1   : out STD_LOGIC;
    TC   : out STD_LOGIC;
    C    : in STD_LOGIC;
    CE   : in STD_LOGIC;
    CLR  : in STD_LOGIC
    );
end CB2CE_HXILINX_mainControl;

architecture Behavioral of CB2CE_HXILINX_mainControl is

  signal COUNT : STD_LOGIC_VECTOR(1 downto 0) := (others => '0');
  constant TERMINAL_COUNT : STD_LOGIC_VECTOR(1 downto 0) := (others => '1');
  
begin

process(C, CLR)
begin
  if (CLR='1') then
    COUNT <= (others => '0');
  elsif (C'event and C = '1') then
    if (CE='1') then 
      COUNT <= COUNT+1;
    end if;
  end if;
end process;

TC   <= '1' when (COUNT = TERMINAL_COUNT) else '0';
CEO  <= '1' when ((COUNT = TERMINAL_COUNT) and CE='1') else '0';

Q1 <= COUNT(1);
Q0 <= COUNT(0);

end Behavioral;


library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity mainControl is
   port ( CLK_P123                    : in    std_logic; 
          DIP1                        : in    std_logic_vector (3 downto 0); 
          DIP2                        : in    std_logic_vector (3 downto 0); 
          K1ForLast2DigK2ForFrist2Dig : in    std_logic_vector (15 downto 0); 
          PB1_P45                     : in    std_logic; 
          SW1                         : in    std_logic_vector (3 downto 0); 
          SW2                         : in    std_logic_vector (3 downto 0); 
          A_G                         : out   std_logic_vector (6 downto 0); 
          Buzzer                      : out   std_logic; 
          Common                      : out   std_logic_vector (3 downto 0));
   attribute CLOCK_DIDICATED_ROUTE : string ;
   attribute CLOCK_DIDICATED_ROUTE of K1ForLast2DigK2ForFrist2Dig : signal is 
         "TRUE";
   attribute CLOCK_DEDICATED_ROUTE : string ;
   attribute CLOCK_DEDICATED_ROUTE of PB1_P45 : signal is "TRUE";
end mainControl;

architecture BEHAVIORAL of mainControl is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal LAK                         : std_logic_vector (15 downto 0);
   signal XLXN_15                     : std_logic;
   signal XLXN_16                     : std_logic;
   signal XLXN_19                     : std_logic;
   signal XLXN_20                     : std_logic;
   signal XLXN_21                     : std_logic;
   signal XLXN_25                     : std_logic;
   component segment_upgrade
      port ( CLK_P123 : in    std_logic; 
             C2       : in    std_logic_vector (3 downto 0); 
             C1       : in    std_logic_vector (3 downto 0); 
             C3       : in    std_logic_vector (3 downto 0); 
             C4       : in    std_logic_vector (3 downto 0); 
             SEG_OUT  : out   std_logic_vector (6 downto 0); 
             COMM     : out   std_logic_vector (3 downto 0));
   end component;
   
   component COMPM16_HXILINX_mainControl
      port ( A  : in    std_logic_vector (15 downto 0); 
             B  : in    std_logic_vector (15 downto 0); 
             GT : out   std_logic; 
             LT : out   std_logic);
   end component;
   
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component CB2CE_HXILINX_mainControl
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             CEO : out   std_logic; 
             Q0  : out   std_logic; 
             Q1  : out   std_logic; 
             TC  : out   std_logic);
   end component;
   
   component AND3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3 : component is "BLACK_BOX";
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_2 : label is "XLXI_2_0";
   attribute HU_SET of XLXI_9 : label is "XLXI_9_1";
begin
   XLXI_1 : segment_upgrade
      port map (CLK_P123=>CLK_P123,
                C1(3 downto 0)=>SW1(3 downto 0),
                C2(3 downto 0)=>SW2(3 downto 0),
                C3(3 downto 0)=>DIP1(3 downto 0),
                C4(3 downto 0)=>DIP2(3 downto 0),
                COMM(3 downto 0)=>Common(3 downto 0),
                SEG_OUT(6 downto 0)=>A_G(6 downto 0));
   
   XLXI_2 : COMPM16_HXILINX_mainControl
      port map (A(15 downto 0)=>LAK(15 downto 0),
                B(15 downto 0)=>K1ForLast2DigK2ForFrist2Dig(15 downto 0),
                GT=>XLXN_16,
                LT=>XLXN_15);
   
   XLXI_4_0 : BUF
      port map (I=>SW1(0),
                O=>LAK(0));
   
   XLXI_4_1 : BUF
      port map (I=>SW1(1),
                O=>LAK(1));
   
   XLXI_4_2 : BUF
      port map (I=>SW1(2),
                O=>LAK(2));
   
   XLXI_4_3 : BUF
      port map (I=>SW1(3),
                O=>LAK(3));
   
   XLXI_5_0 : BUF
      port map (I=>SW2(0),
                O=>LAK(4));
   
   XLXI_5_1 : BUF
      port map (I=>SW2(1),
                O=>LAK(5));
   
   XLXI_5_2 : BUF
      port map (I=>SW2(2),
                O=>LAK(6));
   
   XLXI_5_3 : BUF
      port map (I=>SW2(3),
                O=>LAK(7));
   
   XLXI_6_0 : BUF
      port map (I=>DIP1(0),
                O=>LAK(8));
   
   XLXI_6_1 : BUF
      port map (I=>DIP1(1),
                O=>LAK(9));
   
   XLXI_6_2 : BUF
      port map (I=>DIP1(2),
                O=>LAK(10));
   
   XLXI_6_3 : BUF
      port map (I=>DIP1(3),
                O=>LAK(11));
   
   XLXI_7_0 : BUF
      port map (I=>DIP2(0),
                O=>LAK(12));
   
   XLXI_7_1 : BUF
      port map (I=>DIP2(1),
                O=>LAK(13));
   
   XLXI_7_2 : BUF
      port map (I=>DIP2(2),
                O=>LAK(14));
   
   XLXI_7_3 : BUF
      port map (I=>DIP2(3),
                O=>LAK(15));
   
   XLXI_8 : OR2
      port map (I0=>XLXN_15,
                I1=>XLXN_16,
                O=>XLXN_19);
   
   XLXI_9 : CB2CE_HXILINX_mainControl
      port map (C=>PB1_P45,
                CE=>XLXN_19,
                CLR=>XLXN_25,
                CEO=>open,
                Q0=>XLXN_21,
                Q1=>XLXN_20,
                TC=>open);
   
   XLXI_10 : AND3
      port map (I0=>XLXN_19,
                I1=>XLXN_21,
                I2=>XLXN_20,
                O=>Buzzer);
   
   XLXI_11 : GND
      port map (G=>XLXN_25);
   
end BEHAVIORAL;


