Tristate:
--------
Design:
-------
module tristate(input i, input cnt, output z);
    assign z = (cnt&i)|(~cnt&'bz);
endmodule
Testbench:
----------
module tristate_tb();
    reg i, cnt;
    wire z;
    
    tristate uut(.i(i),.cnt(cnt),.z(z));
        initial begin
            i=0;
            cnt=0;
            #100;
            
            i=0;
            cnt=1;
            #100;
            
            i=1;
            cnt=0;
            #100;
            
            i=1;
            cnt=1;
            #100;
        end
            /*initial begin
                $dumpfile("dump.vcd");
                $dumpvars(0,tristate_tb);
               end    */     
endmodule



2's Complement:
---------------
Design:
-------
module twos_Comp(
    input [3:0]a_i,
    output [3:0]twos_comp,
    output [3:0]also_twos_comp
    );
    
    assign twos_comp=~a_i+1'b1;
    assign also_twos_comp=-a_i;
endmodule
Testbench:
----------
module twos_Comp_tb();
    reg [3:0]a_i;
    wire [3:0]twos_comp;
    wire [3:0]also_twos_comp;
    
    twos_Comp uut(.a_i(a_i),.twos_comp(twos_comp),.also_twos_comp(also_twos_comp));
        initial begin
            a_i=5;
            #100;
        end
endmodule



Majority:
---------
Design:
-------
module majority(input [4:0]sw, output led);
     assign led = (sw[0]&sw[1]&sw[2])| //ABC
     (sw[0]&sw[1]&sw[3])| //ABD
     (sw[0]&sw[2]&sw[3])| //ACD
     (sw[1]&sw[2]&sw[3])| //BCD
     (sw[0]&sw[1]&sw[4])| //ABE
     (sw[0]&sw[3]&sw[4])| //ADE
     (sw[0]&sw[2]&sw[4])| //ACE
     (sw[1]&sw[2]&sw[4])| //BCE
     (sw[2]&sw[3]&sw[4])| //CDE
     (sw[1]&sw[3]&sw[4]); //BDE
     
endmodule
Testbench:
----------
module majority_tb;
    reg [4:0]sw;
    wire led;
    
    majority uut(.sw(sw),.led(led));
        initial begin
            sw=3;
            #100;
         end
endmodule



Function minimization:
----------------------
Design:
-------
module funcmin(input a, input b, input c, input d, output z);
    assign z = ~b&~c || ~a&~c&~d || ~a&~b&d || a&b&c&d;
endmodule
Testbench:
----------
module funcmin_tb();
    reg a,b,c,d;
    wire z;

    funcmin uut(.a(a), .b(b), .c(c), .d(d), .z(z));
        initial begin
            a=0;b=0;c=0;d=0; //0
            #100;
            a=0;b=0;c=0;d=1; //1
            #100;
            a=0;b=0;c=1;d=0; //2
            #100;
            a=0;b=0;c=1;d=1; //3
            #100;
            a=0;b=1;c=0;d=0; //4
            #100;
            a=0;b=1;c=0;d=1; //5
            #100;
            a=0;b=1;c=1;d=0; //6
            #100;     
            a=0;b=1;c=1;d=1; //7
            #100;     
            a=1;b=0;c=0;d=0; //8
            #100;     
            a=1;b=0;c=0;d=1; //9
            #100;     
            a=1;b=0;c=1;d=0; //10
            #100;     
            a=1;b=0;c=1;d=1; //11
            #100;     
            a=1;b=1;c=0;d=0; //12
            #100;     
            a=1;b=1;c=0;d=1; //13
            #100;     
            a=1;b=1;c=1;d=0; //14
            #100;     
            a=1;b=1;c=1;d=1; //15
            #100;     
       end   
endmodule