-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top is
  Port ( 
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    running : out STD_LOGIC;
    power_on : out STD_LOGIC;
    ready : out STD_LOGIC
  );

end top;

architecture stub of top is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
begin
end;
