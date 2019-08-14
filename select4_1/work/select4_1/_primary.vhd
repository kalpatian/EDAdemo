library verilog;
use verilog.vl_types.all;
entity select4_1 is
    port(
        S               : in     vl_logic_vector(3 downto 0);
        A               : in     vl_logic;
        B               : in     vl_logic;
        C               : in     vl_logic;
        D               : in     vl_logic;
        Y               : out    vl_logic
    );
end select4_1;
