library verilog;
use verilog.vl_types.all;
entity restador_vlg_check_tst is
    port(
        borrow          : in     vl_logic;
        r               : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end restador_vlg_check_tst;
