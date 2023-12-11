library verilog;
use verilog.vl_types.all;
entity sumador_completo_ffD is
    port(
        in_a            : in     vl_logic;
        in_b            : in     vl_logic;
        in_cin          : in     vl_logic;
        clk             : in     vl_logic;
        out_suma        : out    vl_logic;
        out_cout        : out    vl_logic
    );
end sumador_completo_ffD;
