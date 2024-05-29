Binary to BCD: 
Design: 
module bintobcd( 
input [3:0]a, 
output [4:0]b 
); 
assign b[4] = (a[3] & a[2]) | (a[3] & a[1]); 
assign b[3] = a[3] & ~a[2] & ~a[1]; 
assign b[2] = (~a[3] & a[2]) | (a[2] & a[1]); 
assign b[1] = (a[3] & a[2] & ~a[1]) | (~a[3] & a[1]); 
assign b[0] = a[0]; 
endmodule 
Testbench: 
module binobcd_tb(); 
reg [3:0]a; 
wire [4:0]b; 
bintobcd uut(.a(a),.b(b)); 
initial begin 
a=0; 
#100; 
a=1; 
#100; 
           a=2; 
           #100; 
           a=3; 
           #100; 
           a=4; 
           #100; 
           a=5; 
           #100; 
           a=6; 
           #100;    
           a=7; 
           #100; 
           a=8; 
           #100; 
           a=9; 
           #100; 
           a=10; 
           #100; 
           a=11; 
           #100; 
           a=12; 
           #100; 
           a=13; 
           #100; 
a=14; 
#100; 
a=15; 
#100;              
end 
endmodule 
Binary to Gray: 
Design: 
module bintogray( 
input [3:0]a, 
output [3:0]g 
); 
assign g[3] = a[3]; 
assign g[2] = a[3] ^ a[2]; 
assign g[1] = a[2] ^ a[1]; 
assign g[0] = a[1] ^ a[0]; 
endmodule 
Testbench: 
module bintogray_tb(); 
reg [3:0]a; 
wire [3:0]g; 
bintogray uut(.a(a),.g(g)); 
initial begin 
           a=0; 
           #100; 
           a=1; 
           #100; 
           a=2; 
           #100; 
           a=3; 
           #100; 
           a=4; 
           #100; 
           a=5; 
           #100; 
           a=6; 
           #100;    
           a=7; 
           #100; 
           a=8; 
           #100; 
           a=9; 
           #100; 
           a=10; 
           #100; 
           a=11; 
           #100; 
a=12; 
#100; 
a=13; 
#100; 
a=14; 
#100; 
a=15; 
#100;              
end 
endmodule 
Gray to Binary: 
Design: 
module graytobin( 
input [3:0]g, 
output [3:0]b 
); 
assign b[3] = g[3]; 
assign b[2] = b[3] ^ g[2]; 
assign b[1] = b[2] ^ g[1]; 
assign b[0] = b[1] ^ g[0]; 
endmodule 
Testbench: 
module graytobin_tb(); 
reg [3:0]g; 
    wire [3:0]b; 
     
    graytobin uut(.g(g),.b(b)); 
    initial begin 
        g=0; 
        #100; 
        g=1; 
        #100; 
        g=2; 
        #100; 
        g=3; 
        #100; 
        g=4; 
        #100; 
        g=5; 
        #100; 
        g=6; 
        #100; 
        g=7; 
        #100; 
        g=8; 
        #100; 
        g=9; 
        #100; 
g=10; 
#100; 
g=11; 
#100; 
g=12; 
#100; 
g=13; 
#100; 
g=14; 
#100; 
g=15; 
#100; 
end 
endmodule 
Binary to Ex-3: 
Design: 
module bintoex3( 
input [3:0]a, 
output [4:0]e 
); 
assign e[4] = (a[3] & a[2] & a[0]) | (a[3] & a[2] & a[1]); 
assign e[3] = (~a[1] & ~a[0] & a[3]) | (a[3] & ~a[2]) | (~a[3] & a[2] & a[0]) | (~a[3] & a[2] & a[1]); 
assign e[2] = (~a[1] & ~a[0] & a[2]) | (~a[2] & a[0]) | (~a[2] & a[1]); 
assign e[1] = (~a[1] & ~a[0]) | (a[1] & a[0]); 
assign e[0] = ~a[0]; 
endmodule 
Testbench: 
module bintoex3_tb(); 
    reg [3:0]a; 
    wire [4:0]e; 
     
    bintoex3 uut(.a(a),.e(e)); 
        initial begin 
           a=0; 
           #100; 
           a=1; 
           #100; 
           a=2; 
           #100; 
           a=3; 
           #100; 
           a=4; 
           #100; 
           a=5; 
           #100; 
           a=6; 
           #100;    
           a=7; 
           #100; 
           a=8; 
           #100; 
           a=9; 
           #100; 
           a=10; 
           #100; 
           a=11; 
           #100; 
           a=12; 
           #100; 
           a=13; 
           #100; 
           a=14; 
           #100; 
           a=15; 
           #100;              
        end 
endmodule 
 
 
 
 
Ex-3 to Binary: 
Design: 
module ex3tobin( 
input [3:0]e, 
output [3:0]b 
); 
assign b[3] = (e[3] & e[2]) | (e[3] & e[1] & e[0]); 
assign b[2] = (~e[2] & ~e[1]) | (~e[2] & e[1] & ~e[0]) | (e[2] & e[1] & e[0]); 
assign b[1] = (~e[1] & e[0]) | (e[1] & ~e[0]); 
assign b[0] = ~e[0]; 
endmodule 
Testbench: 
module ex3tobin_tb(); 
reg [3:0]e; 
wire [3:0]b; 
ex3tobin uut(.e(e),.b(b)); 
initial begin 
e=3; 
#100; 
e=4; 
#100; 
e=5; 
           #100; 
           e=6; 
           #100;    
           e=7; 
           #100; 
           e=8; 
           #100; 
           e=9; 
           #100; 
           e=10; 
           #100; 
           e=11; 
           #100; 
           e=12; 
           #100; 
           e=13; 
           #100; 
           e=14; 
           #100; 
           e=15; 
           #100;              
        end 
endmodule 