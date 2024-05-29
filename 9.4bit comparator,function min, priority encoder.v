Function minimization:
Design:
module decoder(
 input [2:0]i,
 output [7:0]d,
 output f1,
 output f2,
 output f3
 );
 
assign d[0] = ~(~i[2]&~i[1]&~i[0]);
assign d[1] = ~(~i[2]&~i[1]&i[0]);
assign d[2] = ~(~i[2]&i[1]&~i[0]);
assign d[3] = ~(~i[2]&i[1]&i[0]);
assign d[4] = ~(i[2]&~i[1]&~i[0]);
assign d[5] = ~(i[2]&~i[1]&i[0]);
assign d[6] = ~(i[2]&i[1]&~i[0]);
assign d[7] = ~(i[2]&i[1]&i[0]);
assign f1 = ~(d[2]&d[4]&d[7]);
assign f2 = ~(d[0]&d[3]);
assign f3 = ~(d[0]&d[2]&d[3]&d[4]&d[7]);
endmodule
Test bench:
module decoder_tb();
 reg [2:0]i;
 wire [7:0]d;
 wire f1,f2,f3;
 
 decoder uut(.i(i),.d(d),.f1(f1),.f2(f2),.f3(f3));
 initial begin
 i=0;
 #100;
 i=1;
 #100;
 i=2;
 #100;
 i=3;
 #100;
 i=4;
 #100;
 i=5;
 #100;
 i=6;
 #100; 
 i=7;
 #100; 
 end 
endmodule
4 bit comparator:
Design:
module comparator(
 input [3:0]a,
 input [3:0]b,
 output reg eq,
 output reg lt,
 output reg gt
 );
always @(a,b) 
begin
 if(a==b)
 begin
 eq=1;
 lt=0;
 gt=0;
 end
 else if(a>b)
 begin
 eq=0;
 lt=0;
 gt=1; 
 end
 else
 begin
 eq=0;
 lt=1;
 gt=0; 
 end 
end 
endmodule
Test bench:
module comparator_tb();
 reg [3:0]a;
 reg [3:0]b;
 wire eq,lt,gt;
 
 comparator uut(.a(a),.b(b),.eq(eq),.lt(lt),.gt(gt));
 initial begin
 a=3;b=3;
 #100;
 
 a=3;b=5;
 #100;
 
 a=5;b=3;
 #100;
 end
 
endmodule
2 to 4 Priority Encoder:
Design:
module encoder(
 input [3:0]e,
 output reg [1:0]a
 );
always @(e)
begin
 if(e[3]==1)
 begin
 a=3;
 end
 else if(e[2]==1)
 begin
 a=2;
 end
 else if(e[1]==1)
 begin
 a=1;
 end
 else
 begin
 a=0;
 end
end
endmodule
Test bench:
module encoder_tb();
 reg [3:0]e;
 wire [1:0]a;
 
 encoder uut(.e(e),.a(a));
 initial begin
 e=1;
 #100;
 e=2;
 #100;
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