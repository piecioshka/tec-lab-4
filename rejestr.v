module rejestr
    #(
        parameter n=4
    )
    (
        input zegar, reset,
        input swe,
        input [1:0] tryb,
        input [n-1:0] rwe,
        output swy
    );

    reg [n-1:0] rejestr;

    always@(posedge zegar)
        if(reset)
            rejestr <= 0;
        else begin
            // wersja 1.
            /*
            rejestr[3] <= swe;
            rejestr[2] <= rejestr[3];
            rejestr[1] <= rejestr[2];
            rejestr[0] <= rejestr[1];
            */
            // wersja 2.
            // rejestr[3:0] <= {swe, rejestr[3:1]};
            // wersja 3.
            case (tryb)
                2'b00 : rejestr <= rejestr;
                2'b01 : rejestr <= rwe;
                2'b10 : rejestr <= {"0", rejestr[n-1:1]};
                default : rejestr <= {swe, rejestr[n-1:1]};
            endcase
    end

    assign swy = rejestr[0];

endmodule

