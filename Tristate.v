module Proj2(
    input [0:0] i,
    input [0:0] cnt,
    output [0:0] z
    );
    assign z = cnt ? i : 'bz;
endmodule





*******************************************************************************************************

module Proj2_tb();

    reg i, cnt;
    wire z;
    Proj2 uut(.i(i), .cnt(cnt), .z(z));
        initial begin
            i = 0;
            cnt = 0;
            #100;
            
            i = 0;
            cnt = 1;
            #100;
            
            i = 1;
            cnt = 0;
            #100;
            
            i = 1;
            cnt = 1;
            #100;
            end
endmodule