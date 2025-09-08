module priority_encoder_tb;
    reg  [7:0] in;
    wire [2:0] out_behav, out_struct;
    wire       valid_behav, valid_struct;

    priority_encoder_behav U1 (.in(in), .out(out_behav), .valid(valid_behav));
    priority_encoder_struct U2 (.in(in), .out(out_struct), .valid(valid_struct));

    initial begin
        $display("Time\tin\t\tout_b\tvalid_b\tout_s\tvalid_s");
        $monitor("%0t\t%b\t%03b\t%b\t%03b\t%b", $time, in, out_behav, valid_behav, out_struct, valid_struct);

        in = 8'b00000000; #10; // All-zero input
        in = 8'b00000001; #10;
        in = 8'b00000010; #10;
        in = 8'b00000100; #10;
        in = 8'b00001000; #10;
        in = 8'b00010000; #10;
        in = 8'b00100000; #10;
        in = 8'b01000000; #10;
        in = 8'b10000000; #10;
        in = 8'b11000000; #10; // Multiple highs
        in = 8'b01110000; #10; // Multiple highs
        in = 8'b00011000; #10; // Multiple highs
        $finish;
    end
endmodule
