library verilog;
use verilog.vl_types.all;
entity simonSaysVGA is
    port(
        altera_reserved_tms: in     vl_logic;
        altera_reserved_tck: in     vl_logic;
        altera_reserved_tdi: in     vl_logic;
        altera_reserved_tdo: out    vl_logic;
        auto_stp_external_clock_0: in     vl_logic;
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        rst             : in     vl_logic;
        color           : in     vl_logic_vector(3 downto 0);
        play            : in     vl_logic;
        hsync           : out    vl_logic;
        vsync           : out    vl_logic;
        vga_R           : out    vl_logic_vector(7 downto 0);
        vga_G           : out    vl_logic_vector(7 downto 0);
        vga_B           : out    vl_logic_vector(7 downto 0);
        vga_sync        : out    vl_logic;
        vga_blank       : out    vl_logic;
        vga_clk         : out    vl_logic;
        state_ssd       : out    vl_logic_vector(0 to 6);
        level_ssd       : out    vl_logic_vector(0 to 6);
        level_num_ssd   : out    vl_logic_vector(0 to 6)
    );
end simonSaysVGA;
