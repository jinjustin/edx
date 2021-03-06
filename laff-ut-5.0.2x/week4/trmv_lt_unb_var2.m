function [ x_out ] = trmv_lt_unb_var2( L, x )

  [ LL, LR ] = FLA_Part_1x2( L, ...
                               0, 'FLA_LEFT' );

  [ xT, ...
    xB ] = FLA_Part_2x1( x, ...
                         0, 'FLA_TOP' );

  while ( size( LL, 2 ) < size( L, 2 ) )

    [ L0, l1, L2 ]= FLA_Repart_1x2_to_1x3( LL, LR, ...
                                         1, 'FLA_RIGHT' );

    [ x0, ...
      chi1, ...
      x2 ] = FLA_Repart_2x1_to_3x1( xT, ...
                                    xB, ...
                                    1, 'FLA_BOTTOM' );

    %------------------------------------------------------------%

    chi1 = laff_dot(l1, x);

    %------------------------------------------------------------%

    [ LL, LR ] = FLA_Cont_with_1x3_to_1x2( L0, l1, L2, ...
                                           'FLA_LEFT' );

    [ xT, ...
      xB ] = FLA_Cont_with_3x1_to_2x1( x0, ...
                                       chi1, ...
                                       x2, ...
                                       'FLA_TOP' );

  end

  x_out = [ xT
            xB ];

return
