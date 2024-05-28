module Mux(
    input [3:0] I,
    input [1:0] S,
    output [0:0] Y
    );
    
    assign Y = S[1]? (S[0] ? I[3] : I[2]) : (S[0] ? I[1] : I[0]);
endmodule


________________________________________________________________________________________________________


module Mux_tb();
    reg [3:0] I;
    reg [1:0] S;
    wire Y;
    
    Mux uut (.I(I), .S(S), .Y(Y));
        initial begin
            I[0] = 1; I[1] = 0; I[2] = 0; I[3] = 0; S[0] = 0 ; S[1] = 0;
            #100;
            I[0] = 0 ; I[1] = 1; I[2]= 1; I[3] =1; S[0]= 0 ; S[1] = 0;
            #100;
            
            I[0] = 0; I[1] = 1; I[2] = 0; I[3] = 0; S[0]= 1; S[1]= 0;
            #100;
            I[0] = 1; I[1] = 0; I[2] = 1; I[3] = 1; S[0]= 1; S[1]= 0;
            #100;
            
            I[0] = 0; I[1]= 0 ; I[2] = 1; I[3] = 0; S[0] = 0; S[1] =1;
            #100;
            I[0] = 1; I[1]= 1 ; I[2] = 0; I[3] = 1; S[0] = 0; S[1] =1;
            #100;
            
            I[0] = 0; I[1]=0; I[2]= 0; I[3]=1; S[0] = 1; S[1] = 1;
            #100;
            I[0] = 1; I[1] = 1; I[2] = 1; I[3] = 0; S[0] = 1; S[1] = 1;
            #100;
            
           end
endmodule