library verilog;
use verilog.vl_types.all;
entity maq_estado is
    port(
        reset           : in     vl_logic;
        clock           : in     vl_logic;
        x               : in     vl_logic;
        d4              : out    vl_logic;
        d3              : out    vl_logic;
        d2              : out    vl_logic;
        d1              : out    vl_logic
    );
end maq_estado;
