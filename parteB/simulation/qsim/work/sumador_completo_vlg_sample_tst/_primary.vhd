library verilog;
use verilog.vl_types.all;
entity sumador_completo_vlg_sample_tst is
    port(
        abcin           : in     vl_logic_vector(2 downto 0);
        sampler_tx      : out    vl_logic
    );
end sumador_completo_vlg_sample_tst;
