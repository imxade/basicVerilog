module boolfunction(
    input [0:0] a,
    input [0:0] b,
    input [0:0] c,
    input [0:0] d,
    output [0:0] z
    );
    
    assign  z = ~b&~c | ~a&~c&~d | ~a&~b&d | a&b&c&d;
endmodule





module boolfunction_tb();
    reg a;
    reg b;
    reg c;
    reg d;
    wire z;
    boolfunction uut (.a(a), .b(b), .c(c), .d(d), .z(z));
        initial begin
            a = 0; b = 0; c= 0; d =0;
            #100;
            
            a = 0; b = 0; c= 0; d =1;
            #100;
            
            a = 0; b = 0; c= 1; d =0;
            #100;
            
            a = 0; b = 0; c= 1; d =1;
            #100;
            
            a = 0; b = 1; c= 0; d =0;
            #100;
            
            a = 0; b = 1; c= 0; d =1;
            #100;
            
            a = 0; b = 1; c= 1; d =0;
            #100;
            
            a = 0; b = 1; c= 1; d =1;
            #100;
            
            a = 1; b = 0; c= 0; d =0;
            #100;
            
            a = 1; b = 0; c= 0; d =1;
            #100;
            
            a = 1; b = 0; c= 1; d =0;
            #100;
            
            a = 1; b = 0; c= 1; d =1;
            #100;
            
            a = 1; b = 1; c= 0; d =0;
            #100;
            
            a = 1; b = 1; c= 0; d =1;
            #100;
            
            a = 1; b = 1; c= 1; d =0;
            #100;
            
            a = 1; b = 1; c= 1; d =1;
            #100;
    end
endmodule