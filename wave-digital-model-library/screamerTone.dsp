import("stdfaust.lib");

wdf = library("wavedigitalfilters.lib");

r_scatter =
case{
    (0) => r_up
    with{
        r_up = si.bus(11) <: b1, b2, b3, b4, b5;
        b1(R1, R2, R3, R4, R5, a0, a1, a2, a3, a4, a5) = a0 - a1 + 2*a2 + a3 + a5;
        b2(R1, R2, R3, R4, R5, a0, a1, a2, a3, a4, a5) = a2;
        b3(R1, R2, R3, R4, R5, a0, a1, a2, a3, a4, a5) = a0*(R3/(R3+R5)) + a3*(R5/(R3+R5)) + a5*(-R3/(R3+R5));
        b4(R1, R2, R3, R4, R5, a0, a1, a2, a3, a4, a5) = -a4;
        b5(R1, R2, R3, R4, R5, a0, a1, a2, a3, a4, a5) = a0*(R5/(R3+R5)) + a3*(-R5/(R3+R5)) + a5*(R3/(R3+R5));
    };
    (1) => b0
    with{
        b0(R1, R2, R3, R4, R5, a1, a2, a3, a4, a5) = a3, a5;
    };
    (2) => R0
    with{
        R0(R1, R2, R3, R4, R5) = R3 + R5;
    };
};

vin(i) = wdf.u_resVoltage(i, 1000, no.pink_noise);


process = _;