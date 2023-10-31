`default_nettype none

module tt_um_yannickreiss_lifo_fifo (
    input  wire [7:0] ui_in,    // Dedicated inputs - connected to the input switches
    output wire [7:0] uo_out,   // Dedicated outputs - connected to the 7 segment display
    input  wire [7:0] uio_in,   // IOs: Bidirectional Input path
    output wire [7:0] uio_out,  // IOs: Bidirectional Output path
    output wire [7:0] uio_oe,   // IOs: Bidirectional Enable path (active high: 0=input, 1=output)
    input  wire       ena,      // will go high when the design is enabled
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);

    // set in- and outputs as needed
    assign uio_oe = 8'b0;
    assign uio_out = 8'b0;

    wire reset = !rst_n;

    wire push;
    wire pop;

    reg [7:0] stack_pointer;

    reg [7:0] stack[256];

    reg step;
    reg [7:0] oo_out;

/*
    always @(posedge clk, negedge rst_n) begin
        if (clk && reset) begin
            for (int i = 0; i <= 255; i = i + 1) begin
                stack[i] = 8'b0;
            end

            stack_pointer   <= 8'b0;
            step            <= 1'b0;
        end
    end

    always @(posedge clk) begin
        if (clk && !reset) begin
            if (step == 1'b0) begin

                // push:    set input on push
                if (push) begin
                    stack[stack_pointer] <= uio_in;
                end else

                // pop:     lower stack pointer
                if (pop) begin
                    stack_pointer <= stack_pointer - 1;
                end

                step <= 1'b1;
            end
            else begin

                // push:    raise stack pointer
                if (push) begin
                    stack_pointer <= stack_pointer + 1;
                end else

                // pop:     read output
                if (pop) begin
                    oo_out <= stack[stack_pointer];
                end

                step <= 1'b0;
            end
        end
    end
*/
    assign push     = ui_in[0];
    assign pop      = ui_in[1];
    assign uo_out   = oo_out;

endmodule
