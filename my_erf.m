function [ y ] = erf( x )
    % constants
    a1 =  0.254829592;
    a2 = -0.284496736;
    a3 =  1.421413741;
    a4 = -1.453152027;
    a5 =  1.061405429;
    p  =  0.3275911;

    % Save the sign of x
    s=sgn(x);
    x = abs(x);

    % A&S formula 7.1.26
    t = 1.0/(1.0 + p*x);
    y1 = 1.0 - (((((a5*t + a4)*t) + a3)*t + a2)*t + a1)*t*exp(-x*x);

    y=s*y1;

end

