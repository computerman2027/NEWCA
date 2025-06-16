module sr_flip_flop_tb();

//Inputs
reg S;
reg R;
reg CLK;
reg CLR;
reg PR;

//Outputs

wire Q;
wire P;

 //Instantiate the Unit Under Test (UUT)

sr_flip_flop uut (.S(S),.R(R),.CLK(CLK),.CLR(CLR),.PR(PR),.Q(Q),.P(P));

initial begin

//Initialize Inputs

CLK= 0;

//Wait 100 ns for global reset to finish

S=0;
R=0;
CLR=1;
PR=0;
#100;
S=0;
R=1;
CLR=1;
PR=0;
#100;
S=1;
R=0;
CLR=1;
PR=0;
#100;
S=1;
R=1;
CLR=1;
PR=0;
#100;
S=0;
R=1;
CLR=1;
PR=0;
#100;
S=1;
R=0;
CLR=1;
PR=0;
#100;
S=1;
R=1;
CLR=1;
PR=0;
#100;
S=0;
R=0;
#100;
S=0;
R=0;
CLR=1;
PR=1;
#100;
S=0;
R=0;
CLR=0;
PR=0;
#100;
end
always #50 CLK=~CLK;


endmodule
