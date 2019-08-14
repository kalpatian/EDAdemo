library verilog;
use verilog.vl_types.all;
entity CNT10_Changed is
    port(
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
        EN              : in     vl_logic;
        COUT            : out    vl_logic;
        DOUT            : out    vl_logic_vector(15 downto 0);
        DATA            : in     vl_logic_vector(15 downto 0)
    );
end CNT10_Changed;
