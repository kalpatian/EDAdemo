library verilog;
use verilog.vl_types.all;
entity triBUS4 is
    port(
        clk             : in     vl_logic;
        IN3             : in     vl_logic_vector(6 downto 0);
        IN2             : in     vl_logic_vector(6 downto 0);
        IN1             : in     vl_logic_vector(6 downto 0);
        IN0             : in     vl_logic_vector(6 downto 0);
        writedata       : in     vl_logic_vector(7 downto 0);
        ENA             : in     vl_logic_vector(2 downto 0);
        DOUT            : out    vl_logic_vector(7 downto 0)
    );
end triBUS4;
