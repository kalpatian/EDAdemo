library verilog;
use verilog.vl_types.all;
entity ADDSUB16 is
    port(
        CLK             : in     vl_logic;
        EN              : in     vl_logic;
        RST             : in     vl_logic;
        SET             : in     vl_logic;
        DATA            : in     vl_logic_vector(15 downto 0);
        OUTPUT          : out    vl_logic_vector(15 downto 0)
    );
end ADDSUB16;
