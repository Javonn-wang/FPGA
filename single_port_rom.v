
module single_port_rom( q, addr, clk );
    parameter DATA_WIDTH = 16;
    parameter ADDR_WIDTH = 16;
    
    input   [ADDR_WIDTH-1:0] addr;
    input   clk;
    output reg [DATA_WIDTH-1:0] q;     

    reg [DATA_WIDTH-1:0] rom[2**ADDR_WIDTH-1:0];
    initial 
    begin
        $readmemh("E:/Mnist/usingMatlab/test/Mnist_cnn_BRAM/test_x.txt", rom);
    end
    always @ (posedge clk)
    begin
 	  q <= rom[addr];
    end
endmodule
