library verilog;
use verilog.vl_types.all;
entity clkout_altpll is
    port(
        areset          : in     vl_logic;
        clk             : out    vl_logic_vector(4 downto 0);
        inclk           : in     vl_logic_vector(1 downto 0)
    );
end clkout_altpll;
