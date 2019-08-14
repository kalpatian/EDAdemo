library verilog;
use verilog.vl_types.all;
entity LS160 is
    port(
        D               : in     vl_logic_vector(3 downto 0);
        ENP             : in     vl_logic;
        ENT             : in     vl_logic;
        CLK             : in     vl_logic;
        LOAD            : in     vl_logic;
        CLR             : in     vl_logic;
        COUT            : out    vl_logic_vector(3 downto 0);
        RCO             : out    vl_logic
    );
end LS160;
