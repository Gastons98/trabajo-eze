library verilog;
use verilog.vl_types.all;
entity sumador_completo is
    port(
        abcin           : in     vl_logic_vector(2 downto 0);
        coutsuma        : out    vl_logic_vector(1 downto 0)
    );
end sumador_completo;
