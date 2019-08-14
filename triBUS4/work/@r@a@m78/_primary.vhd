library verilog;
use verilog.vl_types.all;
entity RAM78 is
    port(
        Q               : out    vl_logic_vector(7 downto 0);
        D               : in     vl_logic_vector(7 downto 0);
        A               : in     vl_logic_vector(6 downto 0);
        CLK             : in     vl_logic;
        WREN            : in     vl_logic
    );
end RAM78;
