library verilog;
use verilog.vl_types.all;
entity restador is
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        borrow          : out    vl_logic;
        r               : out    vl_logic
    );
end restador;
