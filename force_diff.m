function interact_region=force_diff(f_h, s_x, beta, sigma)
neg_sx=-s_x;
gamma=acos( (neg_sx' * f_h) / ( norm(nex_sx)*norm(f_h) ) );

if(gamma<=beta)
       region='RR';
    elseif(gamma>beta && gamma<=( sigma + beta ) )
        region='PR';
      elseif (gamma>( sigma + beta ) && gamma<=pi )
          region='CR';
end

interact_region.gamma=gamma;
interact_region.region=region;