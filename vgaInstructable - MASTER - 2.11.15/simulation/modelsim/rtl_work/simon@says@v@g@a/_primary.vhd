library verilog;
use verilog.vl_types.all;
entity simonSaysVGA is
    generic(
        \RESET\         : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi0, Hi0);
        START           : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi0, Hi1);
        L1S             : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi1, Hi0);
        L1P             : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi1, Hi1);
        L2S             : vl_logic_vector(0 to 3) := (Hi0, Hi1, Hi0, Hi0);
        L2P             : vl_logic_vector(0 to 3) := (Hi0, Hi1, Hi0, Hi1);
        L3S             : vl_logic_vector(0 to 3) := (Hi0, Hi1, Hi1, Hi0);
        L3P             : vl_logic_vector(0 to 3) := (Hi0, Hi1, Hi1, Hi1);
        L4S             : vl_logic_vector(0 to 3) := (Hi1, Hi0, Hi0, Hi0);
        L4P             : vl_logic_vector(0 to 3) := (Hi1, Hi0, Hi0, Hi1);
        L5S             : vl_logic_vector(0 to 3) := (Hi1, Hi0, Hi1, Hi0);
        L5P             : vl_logic_vector(0 to 3) := (Hi1, Hi0, Hi1, Hi1);
        WIN             : vl_logic_vector(0 to 3) := (Hi1, Hi1, Hi0, Hi0)
    );
    port(
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
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of \RESET\ : constant is 1;
    attribute mti_svvh_generic_type of START : constant is 1;
    attribute mti_svvh_generic_type of L1S : constant is 1;
    attribute mti_svvh_generic_type of L1P : constant is 1;
    attribute mti_svvh_generic_type of L2S : constant is 1;
    attribute mti_svvh_generic_type of L2P : constant is 1;
    attribute mti_svvh_generic_type of L3S : constant is 1;
    attribute mti_svvh_generic_type of L3P : constant is 1;
    attribute mti_svvh_generic_type of L4S : constant is 1;
    attribute mti_svvh_generic_type of L4P : constant is 1;
    attribute mti_svvh_generic_type of L5S : constant is 1;
    attribute mti_svvh_generic_type of L5P : constant is 1;
    attribute mti_svvh_generic_type of WIN : constant is 1;
end simonSaysVGA;
