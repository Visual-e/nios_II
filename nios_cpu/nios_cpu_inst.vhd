	component nios_cpu is
		port (
			clk_clk     : in  std_logic                     := 'X'; -- clk
			port_export : out std_logic_vector(31 downto 0)         -- export
		);
	end component nios_cpu;

	u0 : component nios_cpu
		port map (
			clk_clk     => CONNECTED_TO_clk_clk,     --  clk.clk
			port_export => CONNECTED_TO_port_export  -- port.export
		);

