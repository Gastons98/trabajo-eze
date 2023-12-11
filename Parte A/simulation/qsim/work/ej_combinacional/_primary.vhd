library verilog;
use verilog.vl_types.all;
entity ej_combinacional is
    port(
        sw1             : in     vl_logic;
        sw2             : in     vl_logic;
        led             : out    vl_logic
    );
end ej_combinacional;
