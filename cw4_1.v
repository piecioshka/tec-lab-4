// zadanie na wejsciowke
// komparator
module cw4_1
    #(
        parameter N=4
    )
    (
        input [N-1:0] a,b,
        output reg altb,aeqb,agtb
    );

    // cialo funkcji
    // jezeli a<b to altb=1
    // jezeli a=b to aeqb=1
    // jezeli a>b to agtb=1
    // intrukcje rownolegle lub proceduralne

    // wersja 2. skorzystac z wlasnosci:
    // jezeli ~(A>B) & ~(A=B) to (A<B)
    always@ (*) begin
        altb = 0;
        aeqb = 0;
        agtb = 0;
        if (a==b)  aeqb = 1'b1;
        if (a>b)  agtb = 1'b1;
        if  (!(aeqb || agtb))  altb = 1'b1;
    end
    //porownac realizacje: RTL Viewer (w Quartus2)

endmodule
