module Proj2(
    input [3:0] a_i,
    input [3:0] twos_comp,
    output [3:0] also_twos_comp
    );
    assign twos_comp = ~a_i + 1'b1;
    assign also_twos_comp = -a_i;
endmodule




module Proj2_tb();

  reg [3:0] a_i;
  wire [3:0] twos_comp;
  wire [3:0] also_twos_comp;

   Proj2 uut(.a_i(a_i), 
            .twos_comp(twos_comp), 
            .also_twos_comp(also_twos_comp)
            );
        initial begin
            a_i = 15;
            #100;
  end
endmodule
