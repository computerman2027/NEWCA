module JK_flipflop(    
input J,   
input K,    
input CLK,    
input PR,   
input CLR,    
output Q,    
output P  
);


reg qm=0;

always@(posedge CLK)
if(PR==1)
begin
qm=1;
end
else if(CLR==0) 
begin
qm=0;
end
else
if(J==0 && K==1) begin
qm=0;
end
else
if(J==1 && K==0) begin
qm=1;
end
else
if(J==0 && K==0) begin
qm=P;
end
else
if(J==1 && K==1) begin
qm=~P;
end
assign P=qm;
assign Q=~P;
endmodule
