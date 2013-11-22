module comp
    #(
        parameter N=4
    )
    (
        input [N-1:0] a,b,
        output reg altb, aeqb, agtb
    );

    always@(*) begin
        altb <= 0;
        aeqb <= 0;
        agtb <= 0;

        if (a>b) altb <= 1'b1;
        else if (a==b) aeqb <= 1'b1;
        else agtb <= 1'b1;
    end

endmodule
