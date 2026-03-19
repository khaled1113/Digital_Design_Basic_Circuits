module T_flipflop_tb;
reg t,clk , reset;
wire q;
T_flipflop T_flipflop_dut(t,clk,q,reset);
initial 

begin 
    // Initialize inputs
    t = 0; clk = 0; reset = 1;
    
    // Wait for a few time units and then release reset
    #10 reset = 0;
    
    // Test case 1: Toggle T input
    #10 t = 1; // Expect q to toggle on the next clock edge
    #10 clk = 1; // Rising edge of clock
    #10 clk = 0; // Falling edge of clock
    
    // Test case 2: Keep T input low
    #10 t = 0; // Expect q to hold its value on the next clock edge
    #10 clk = 1; // Rising edge of clock
    #10 clk = 0; // Falling edge of clock
    
    // Test case 3: Toggle T input again
    #10 t = 1; // Expect q to toggle on the next clock edge
    #10 clk = 1; // Rising edge of clock
    #10 clk = 0; // Falling edge of clock
    
    // Test case 4: Reset the flip-flop
    #10 reset = 1; // Expect q to reset to 0 immediately
end