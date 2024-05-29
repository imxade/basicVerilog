module and2gate(
input a,
input b,
output not,
output and,
output or,
output nand,
output nor,
output xor,
output xnor,
);
assign not=~a;
assign and=a&b;
assign or=a|b;
assign nand=~(a&b);
assign nor=~(a|b);
assign xor=a^b;
assign xnor=~(a^b);
endmodule

-----------------------------------------------------

module and2gate_tb;
reg a;
reg b;
wire not;
wire and;
wire or;
wire nand;
wire nor;
wire xor;
wire xnor;
and2gate uut(.a(.a),.b(.b),.not(.not),.and(.and),.or(.or),.nand(.nand),.nor(.nor),.xor(.xor),.xnor(.xnor));
initial begin
a=0;
b=0;
#100;
a=0;
b=1;
#100;
a=1;
b=0;
#100;
a=1;
b=1;
#100;
end
endmodule