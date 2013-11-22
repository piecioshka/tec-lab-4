module komparator
    #(
        parameter N=4
    )
    (
        input [N-1:0] a,b,
        output altb,aeqb,agtb
    );

    reg altb_i;
    reg aeqb_i;
    reg agtb_i;

    always @(*) begin
        altb_i = (a < b);
        aeqb_i = (a == b);
        agtb_i = (~altb_i) & (~aeqb_i);
    end

    assign altb = altb_i;
    assign aeqb = aeqb_i;
    assign agtb = agtb_i;

endmodule

