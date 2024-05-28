module Decoder(
    input [2:0] s,
    output [7:0] Y,
    input en
    );
    
    assign Y[0] = ~en & ~s[2] & ~s[1] & ~s[0];
    assign Y[1] = ~en & ~s[2] & ~s[1] & s[0];
    assign Y[2] = ~en & ~s[2] & s[1] & ~s[0];
    assign Y[3] = ~en & ~s[2] & s[1] & s[0];
    assign Y[4] = ~en & s[2] & ~s[1] & ~s[0];
    assign Y[5] = ~en & s[2] & ~s[1] & s[0];
    assign Y[6] = ~en & s[2] & s[1] & ~s[0];
    assign Y[7] = ~en & s[2] & s[1] & s[0];
    
    
endmodule

_______________________________________________________________________________________________________________


module Decoder_tb();
    reg en;
    reg [2:0] s;
    wire [7:0] Y;
    Decoder uut (.en(en), .s(s), .Y(Y));
        initial begin
            en = 1;
            #50;
            
            en = 0; s[2]= 0; s[1] = 0; s[0] = 0;
            #50;
            
            en = 0; s[2]= 0; s[1] = 0; s[0] = 1;
            #50;
            
            en = 0; s[2]= 0; s[1] = 1; s[0] = 0;
            #50;
            
            en = 0; s[2]= 0; s[1] = 1; s[0] = 1;
            #50;
            
            en = 0; s[2]= 1; s[1] = 0; s[0] = 0;
            #50;
            
            en = 0; s[2]= 1; s[1] = 0; s[0] = 1;
            #50;
            
            en = 0; s[2]= 1; s[1] = 1; s[0] = 0;
            #50;
            
            en = 0; s[2]= 1; s[1] = 1; s[0] = 1;
            #50;
            end
endmodule