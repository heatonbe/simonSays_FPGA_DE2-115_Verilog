library verilog;
use verilog.vl_types.all;
entity simonSaysVGA_vlg_check_tst is
    port(
        hsync           : in     vl_logic;
        level_num_ssd   : in     vl_logic_vector(0 to 6);
        level_ssd       : in     vl_logic_vector(0 to 6);
        state_ssd       : in     vl_logic_vector(0 to 6);
        vga_B           : in     vl_logic_vector(7 downto 0);
        vga_G           : in     vl_logic_vector(7 downto 0);
        vga_R           : in     vl_logic_vector(7 downto 0);
        vga_blank       : in     vl_logic;
        vga_clk         : in     vl_logic;
        vga_sync        : in     vl_logic;
        vsync           : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end simonSaysVGA_vlg_check_tst;
