module alu_tb;
    reg A, B, Cin;
    reg [2:0] Sel;
    wire y, Cout;

    integer i, j;
    reg expected_y, expected_Cout;

    alu_1bit_top uut (
        .A(A), 
        .B(B), 
        .Cin(Cin), 
        .Sel(Sel), 
        .y(y), 
        .Cout(Cout)
    );

    initial begin
        $display("Starting ALU Test...");
        $monitor("t=%0t | Sel=%03b | A=%b B=%b Cin=%b | y=%b Cout=%b",
                  $time, Sel, A, B, Cin, y, Cout);

        for (i = 0; i < 8; i = i + 1) begin
            Sel = i;
            for (j = 0; j < 8; j = j + 1) begin
                {A, B, Cin} = j;
                #5;

                // Default
                expected_y = 0;
                expected_Cout = 0;

                case (Sel)
                    3'b000: expected_y = A & B;                // AND
                    3'b001: expected_y = A | B;                // OR
                    3'b010: expected_y = A ^ B;                // XOR
                    3'b011: expected_y = ~(A ^ B);             // XNOR

                    3'b100: begin                             // ADD
                        {expected_Cout, expected_y} = A + B + Cin;
                    end

                    3'b101: begin                             // SUB (A - B)
                        {expected_Cout, expected_y} = A + (~B) + 1;
                    end

                    3'b110: expected_y = (A > B);              // COMP (A > B)

                    3'b111: expected_y = ~A;                   // NOT
                endcase

                // Check
                if (y !== expected_y || Cout !== expected_Cout) begin
                    $display("❌ ERROR at t=%0t Sel=%03b A=%b B=%b Cin=%b | y=%b(%b) Cout=%b(%b)",
                              $time, Sel, A, B, Cin,
                              y, expected_y, Cout, expected_Cout);
                end
                else begin
                    $display("✅ PASS  at t=%0t Sel=%03b A=%b B=%b Cin=%b",
                              $time, Sel, A, B, Cin);
                end

                #5;
            end
        end

        $display("Test Completed.");
        $finish;
    end
endmodule
