module Maj(
    input [4:0] sw,
    output [0:0] led
    );
    assign led = (sw[0]&sw[1]&sw[2]) | // ABC
                 (sw[0]&sw[1]&sw[3]) | // ABD
                 (sw[0]&sw[2]&sw[3]) | // ACD
                 (sw[1]&sw[2]&sw[3]) | // BCD
                 (sw[0]&sw[1]&sw[4]) | // ABE
                 (sw[0]&sw[3]&sw[4]) | // ADE
                 (sw[0]&sw[2]&sw[4]) | // ACE
                 (sw[1]&sw[2]&sw[4]) | // CDE
                 (sw[2]&sw[3]&sw[4]) | // BDE
                 (sw[0]&sw[1]&sw[2]) ;
endmodule





module Maj_tb();
    reg [4:0] sw;
    wire led;
    
    Maj uut (.sw(sw), .led(led));
    initial begin 
        sw = 7;
        #100;
        
        sw = 3;
        #100;
        end
endmodule
