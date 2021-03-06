module IMem(
        output wire [15:0] data,
        input [3:0] a);

    reg [15:0] ram [0:31];

    //initial $readmemh("fibb_iter.txt", ram); // load file with instructions onto memory
    //initial $readmemh("I-type_test.txt", ram);
    //initial $readmemh("R-type-test.txt", ram);
    //initial $readmemh("D-type-test.txt", ram);
    initial $readmemh("J-type-test.txt", ram);

    assign data = ram[a];

endmodule