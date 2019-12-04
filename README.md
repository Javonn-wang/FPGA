we can instantiate it by :
single_port_rom #(16,5) u_rom(.q(dout), .addr(addr_x), .clk(clk));
//16 is the data width, 5 is the data depth.
