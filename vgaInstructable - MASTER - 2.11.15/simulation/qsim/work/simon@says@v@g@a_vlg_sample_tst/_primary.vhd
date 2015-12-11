library verilog;
use verilog.vl_types.all;
entity simonSaysVGA_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        color           : in     vl_logic_vector(3 downto 0);
        play            : in     vl_logic;
        reset           : in     vl_logic;
        rst             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end simonSaysVGA_vlg_sample_tst;
