module JK_flipflop_tb();
//Inputs
reg J;
reg K;
reg CLK;
reg CLR;
reg PR;

//Outputs

wire Q;
wire P;

 //Instantiate the Unit Under Test (UUT)

JK_flipflop uut (.J(J),.K(K),.CLK(CLK),.CLR(CLR),.PR(PR),.Q(Q),.P(P));

initial begin

//Initialize Inputs

CLK= 0;

//Wait 100 ns for global reset to finish

J=0;
K=0;
CLR=1;
PR=0;
#100;
J=0;
K=1;
CLR=1;
PR=0;
#100;
J=1;
K=0;
CLR=1;
PR=0;
#100;
J=1;
K=1;
CLR=1;
PR=0;
#100;
J=1;
K=1;
CLR=1;
PR=0;
#100;
J=1;
K=1;
CLR=1;
PR=0;
#100;
J=1;
K=1;
CLR=1;
PR=0;
#100;
J=0;
K=0;
#100;
J=0;
K=0;
CLR=1;
PR=1;
#100;
J=0;
K=0;
CLR=0;
PR=0;
#100;
end
always #50 CLK=~CLK; 

endmodule