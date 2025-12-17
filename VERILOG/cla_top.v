module cla_top (
    input [10:0] sw,   // We are using 11 switches (0 to 10)
    output [5:0] led   // We are using 6 LEDs (0 to 5)
);

    // Instantiate your 5-bit CLA
    // A uses Switches 0-4
    // B uses Switches 5-9
    // Cin uses Switch 10
    
    cla5bit uut (
        .A(sw[4:0]),       
        .B(sw[9:5]),       
        .Cin(sw[10]),      
        .Sum(led[4:0]),    
        .Cout(led[5])      
    );

endmodule
