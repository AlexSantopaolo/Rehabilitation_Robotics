function dk_p=derivate_kp(delta_x, d_delta_x, a_h, a, k_1, region)
if (strcmp(region,'H-DR')|| strcmp(region,'SS-SR') || strcmp(region,'TS-SR'))
    dk_p=0;
else
f_p= 1 - exp( -a*( norm( delta_x )^2 - a_h^2 ) );
dexp=2*exp( ( a_h^2 - norm( delta_x )^2 )*a )*(delta_x'*d_delta_x); %dubbio sul sum(delta_x)
df_p=2*f_p*dexp;
dk_p= k_1 * ( df_p ) * exp( -a*( norm(delta_x)^2 - a_h^2 ) ) - k_1 * (f_p)^2 * dexp;
end
