!WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
! SUBROUTINE eos_const
!
! This subroutine provides the constants of the PC-SAFT EOS.
!WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW

SUBROUTINE eos_const ( ap, bp )

  IMPLICIT NONE

  !-----------------------------------------------------------------------------
  REAL, INTENT(OUT)                      :: ap(0:6,3)
  REAL, INTENT(OUT)                      :: bp(0:6,3)
  !-----------------------------------------------------------------------------


  !-----------------------------------------------------------------------------
  ! dispersion term constants
  !-----------------------------------------------------------------------------

  ap(0,1) =  0.91056314451539
  ap(0,2) = -0.30840169182720
  ap(0,3) = -0.09061483509767
  ap(1,1) =  0.63612814494991
  ap(1,2) =  0.18605311591713
  ap(1,3) =  0.45278428063920
  ap(2,1) =  2.68613478913903
  ap(2,2) = -2.50300472586548
  ap(2,3) =  0.59627007280101
  ap(3,1) = -26.5473624914884
  ap(3,2) =  21.4197936296668
  ap(3,3) = -1.72418291311787
  ap(4,1) =  97.7592087835073
  ap(4,2) = -65.2558853303492
  ap(4,3) = -4.13021125311661
  ap(5,1) = -159.591540865600
  ap(5,2) =  83.3186804808856
  ap(5,3) =  13.7766318697211
  ap(6,1) =  91.2977740839123
  ap(6,2) = -33.7469229297323
  ap(6,3) = -8.67284703679646

  bp(0,1) =  0.72409469413165
  bp(0,2) = -0.57554980753450
  bp(0,3) =  0.09768831158356
  bp(1,1) =  1.11913959304690  *2.0
  bp(1,2) =  0.34975477607218  *2.0
  bp(1,3) = -0.12787874908050  *2.0
  bp(2,1) = -1.33419498282114  *3.0
  bp(2,2) =  1.29752244631769  *3.0
  bp(2,3) = -3.05195205099107  *3.0
  bp(3,1) = -5.25089420371162  *4.0
  bp(3,2) = -4.30386791194303  *4.0
  bp(3,3) =  5.16051899359931  *4.0
  bp(4,1) =  5.37112827253230  *5.0
  bp(4,2) =  38.5344528930499  *5.0
  bp(4,3) = -7.76088601041257  *5.0
  bp(5,1) =  34.4252230677698  *6.0
  bp(5,2) = -26.9710769414608  *6.0
  bp(5,3) =  15.6044623461691  *6.0
  bp(6,1) = -50.8003365888685  *7.0
  bp(6,2) = -23.6010990650801  *7.0
  bp(6,3) = -4.23812936930675  *7.0


  !-----------------------------------------------------------------------------
  ! square-well fluid
  !-----------------------------------------------------------------------------

  ! ap(1,1)=  0.79152347258784
  ! ap(1,2)= -0.62269805320654
  ! ap(1,3)= -0.06798823934067
  ! ap(2,1)=  1.07120982251709
  ! ap(2,2)=  0.48628215731716
  ! ap(2,3)=  0.02837828512515
  ! ap(3,1)=  0.92084839459226
  ! ap(3,2)=  1.11652038059747
  ! ap(3,3)=  0.09713202077943
  ! ap(4,1)= -7.84708350369249
  ! ap(4,2)= -2.04200599876547
  ! ap(4,3)=  0.06475764015088
  ! ap(5,1)= 25.90284137818050
  ! ap(5,2)=  9.27791640100603
  ! ap(5,3)=  0.07729792971827
  ! ap(6,1)= -57.1528726997640
  ! ap(6,2)= -16.8377999920957
  ! ap(6,3)=  0.24883598436184
  ! ap(7,1)= 42.02314637860930
  ! ap(7,2)=  7.62432635016420
  ! ap(7,3)= -0.72472024688888

  ! bp(1,1)=  0.79152347258784
  ! bp(1,2)= -0.62269805320654
  ! bp(1,3)= -0.06798823934067
  ! bp(2,1)=  1.07120982251709  *2.0
  ! bp(2,2)=  0.48628215731716  *2.0
  ! bp(2,3)=  0.02837828512515  *2.0
  ! bp(3,1)=  0.92084839459226  *3.0
  ! bp(3,2)=  1.11652038059747  *3.0
  ! bp(3,3)=  0.09713202077943  *3.0
  ! bp(4,1)= -7.84708350369249  *4.0
  ! bp(4,2)= -2.04200599876547  *4.0
  ! bp(4,3)=  0.06475764015088  *4.0
  ! bp(5,1)= 25.90284137818050  *5.0
  ! bp(5,2)=  9.27791640100603  *5.0
  ! bp(5,3)=  0.07729792971827  *5.0
  ! bp(6,1)= -57.1528726997640  *6.0
  ! bp(6,2)= -16.8377999920957  *6.0
  ! bp(6,3)=  0.24883598436184  *6.0
  ! bp(7,1)= 42.02314637860930  *7.0
  ! bp(7,2)=  7.62432635016420  *7.0
  ! bp(7,3)= -0.72472024688888  *7.0


END SUBROUTINE eos_const



!WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
! SUBROUTINE dq_const
!
! This subr. provides the constants of the dipole-quadrupole term.
!WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW

SUBROUTINE dq_const ( dqp2, dqp3, dqp4 )

  USE PARAMETERS, ONLY: nc
  USE EOS_VARIABLES, ONLY: ncomp, parame
  IMPLICIT NONE

  !-----------------------------------------------------------------------------
  REAL, INTENT(OUT)                      :: dqp2(nc,nc,0:4)
  REAL, INTENT(OUT)                      :: dqp3(nc,nc,nc,0:4)
  REAL, INTENT(OUT)                      :: dqp4(nc,nc,0:4)

  !-----------------------------------------------------------------------------
  INTEGER                                :: i, j, k
  REAL                                   :: mdq(nc)
  REAL                                   :: mf1, mf2, msegij
  !-----------------------------------------------------------------------------

  DO i=1,ncomp
     mdq(i) = parame(i,1)
     IF (mdq(i) > 2.0) mdq(i) = 2.0
  END DO


  DO i=1,ncomp
     DO j=1,ncomp

        msegij = ( mdq(i) * mdq(j) )**0.5
        mf1 = ( msegij - 1.0 ) / msegij
        mf2 = mf1 * ( msegij - 2.0 ) / msegij

        dqp2(i,j,0) =  0.697094963 + mf1*(-0.673459279) + mf2*0.670340770
        dqp2(i,j,1) = -0.633554144 + mf1*(-1.425899106) + mf2*(-4.338471826)
        dqp2(i,j,2) =  2.945509028 + mf1 * 4.19441392   + mf2*7.234168360
        dqp2(i,j,3) = -1.467027314 + mf1 * 1.0266216
        dqp2(i,j,4) = 0.0

        dqp4(i,j,0) = -0.484038322 + mf1 * 0.67651011   + mf2*(-1.167560146)
        dqp4(i,j,1) =  1.970405465 + mf1*(-3.013867512) + mf2*2.13488432
        dqp4(i,j,2) = -2.118572671 + mf1 * 0.46742656
        dqp4(i,j,3) = 0.0
        dqp4(i,j,4) = 0.0


        DO k=1,ncomp
           msegij = ( mdq(i) * mdq(j) * mdq(k) )**(1.0/3.0)
           mf1 = ( msegij - 1.0 ) / msegij
           mf2 = ( msegij - 2.0 ) / msegij
           dqp3(i,j,k,0) = 0.795009692 + mf1*(-2.099579397)
           dqp3(i,j,k,1) = 3.386863396 + mf1*(-5.941376392)
           dqp3(i,j,k,2) = 0.475106328 + mf1*(-0.178820384)
           dqp3(i,j,k,3) = 0.0
           dqp3(i,j,k,4) = 0.0
        END DO

     END DO
  END DO

END SUBROUTINE dq_const


!WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
! SUBROUTINE dd_const
!
! This subroutine provides the constants of the dipole-term.
!WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW

SUBROUTINE dd_const ( ddp2, ddp3, ddp4 )

  USE PARAMETERS, ONLY: nc, PI
  USE EOS_VARIABLES, ONLY: ncomp, parame
  IMPLICIT NONE

  !-----------------------------------------------------------------------------
  REAL, INTENT(OUT)                      :: ddp2(nc,nc,0:4)
  REAL, INTENT(OUT)                      :: ddp3(nc,nc,nc,0:4)
  REAL, INTENT(OUT)                      :: ddp4(nc,nc,0:4)

  !-----------------------------------------------------------------------------
  INTEGER                                :: i, j, k
  REAL                                   :: pardd(nc)
  REAL                                   :: mf1,mf2,msegij,sin2t
  !-----------------------------------------------------------------------------

  sin2t = SIN( 0.0 * PI / 180.0 )
  sin2t = sin2t*sin2t

  DO i = 1, ncomp
     pardd(i) = parame(i,1)
     IF (pardd(i) > 2.0) pardd(i) = 2.0
  END DO

  DO i=1,ncomp
     DO j=1,ncomp
        ! IF (parame(i,6) /= 0.0.AND.parame(j,6) /= 0.0) THEN

        msegij = ( pardd(i) * pardd(j) )**0.5
        mf1 = ( msegij - 1.0 ) / msegij
        mf2 = mf1 * ( msegij - 2.0 ) / msegij

        ddp2(i,j,0) =  0.30435038064 + mf1*(0.95346405973+0.201436*sin2t)  &
             + mf2*(-1.16100802773-1.74114*sin2t)
        ddp2(i,j,1) = -0.13585877707 + mf1*(-1.83963831920+1.31649*sin2t) + mf2*4.52586067320
        ddp2(i,j,2) =  1.44933285154 + mf1 * 2.01311801180  + mf2*0.97512223853
        ddp2(i,j,3) =  0.35569769252 + mf1*(-7.37249576667) + mf2*(-12.2810377713)
        ddp2(i,j,4) = -2.06533084541 + mf1 * 8.23741345333  + mf2*5.93975747420

        ddp4(i,j,0) =  0.21879385627 + mf1*(-0.58731641193) + mf2*3.48695755800
        ddp4(i,j,1) = -1.18964307357 + mf1 * 1.24891317047  + mf2*(-14.9159739347)
        ddp4(i,j,2) =  1.16268885692 + mf1*(-0.50852797392) + mf2*15.3720218600
        ddp4(i,j,3) =  0.0
        ddp4(i,j,4) =  0.0

        DO k=1,ncomp
           ! IF (parame(k,6) /= 0.0) THEN
           msegij = ( pardd(i) * pardd(j) * pardd(k) )**(1.0/3.0)
           mf1 = ( msegij - 1.0 ) / msegij
           mf2 = mf1 * ( msegij - 2.0 ) / msegij
           ddp3(i,j,k,0) = -0.06467735252 + mf1*(-0.95208758351+0.28503*sin2t)  &
                + mf2*(-0.62609792333+2.2195*sin2t)
           ddp3(i,j,k,1) =  0.19758818347 + mf1 * 2.99242575222  + mf2*1.29246858189
           ddp3(i,j,k,2) = -0.80875619458 + mf1*(-2.38026356489) + mf2*1.65427830900
           ddp3(i,j,k,3) =  0.69028490492 + mf1*(-0.27012609786) + mf2*(-3.43967436378)
           ddp3(i,j,k,4) =  0.0

           ! ENDIF
        END DO

        ! ENDIF
     END DO
  END DO

END SUBROUTINE dd_const


!WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
! SUBROUTINE qq_const
!
! This subroutine provides the constants of the quadrupole-term.
!WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW

SUBROUTINE qq_const ( qqp2,qqp3,qqp4 )

  USE PARAMETERS, ONLY: nc
  USE EOS_VARIABLES, ONLY: ncomp, parame
  IMPLICIT NONE

  !-----------------------------------------------------------------------------
  REAL, INTENT(OUT)                      :: qqp2(nc,nc,0:4)
  REAL, INTENT(OUT)                      :: qqp3(nc,nc,nc,0:4)
  REAL, INTENT(OUT)                      :: qqp4(nc,nc,0:4)

  !-----------------------------------------------------------------------------
  INTEGER                                :: i, j, k
  REAL                                   :: mqq(nc)
  REAL                                   :: mf1, mf2, msegij
  !-----------------------------------------------------------------------------

  DO i = 1,ncomp
     mqq(i) = parame(i,1)
     IF (mqq(i) > 2.0) mqq(i) = 2.0
  END DO

  DO i = 1,ncomp
     DO j = 1,ncomp
        IF (parame(i,7) /= 0.0 .AND. parame(j,7) /= 0.0) THEN

           msegij = ( mqq(i) * mqq(j) )**0.5
           ! msegij = ( parame(i,1) * parame(j,1) )**0.50
           mf1 = ( msegij - 1.0 ) / msegij
           mf2 = mf1 * ( msegij - 2.0 ) / msegij

           qqp2(i,j,0) =  1.237830788 + mf1 * 1.285410878  + mf2*1.794295401
           qqp2(i,j,1) =  2.435503144 + mf1*(-11.46561451) + mf2*0.769510293
           qqp2(i,j,2) =  1.633090469 + mf1 *22.08689285   + mf2*7.264792255
           qqp2(i,j,3) = -1.611815241 + mf1 * 7.46913832   + mf2*94.48669892
           qqp2(i,j,4) =  6.977118504 + mf1*(-17.19777208) + mf2*(-77.1484579)

           qqp4(i,j,0) =  0.454271755 + mf1*(-0.813734006) + mf2*6.868267516
           qqp4(i,j,1) = -4.501626435 + mf1 * 10.06402986  + mf2*(-5.173223765)
           qqp4(i,j,2) =  3.585886783 + mf1*(-10.87663092) + mf2*(-17.2402066)
           qqp4(i,j,3) =  0.0
           qqp4(i,j,4) =  0.0

           DO k = 1,ncomp
              IF (parame(k,7) /= 0.0) THEN
                 msegij = ( mqq(i) * mqq(j) * mqq(k) )**(1.0/3.0)
                 ! msegij = ( parame(i,1)*parame(j,1)*parame(k,1) )**(1.0/3.0)
                 mf1 = ( msegij - 1.0 ) / msegij
                 mf2 = mf1 * ( msegij - 2.0 ) / msegij
                 qqp3(i,j,k,0) = -0.500043713 + mf1 * 2.000209381 + mf2*3.135827145
                 qqp3(i,j,k,1) =  6.531869153 + mf1*(-6.78386584) + mf2*7.247588801
                 qqp3(i,j,k,2) = -16.01477983 + mf1 * 20.38324603 + mf2*3.075947834
                 qqp3(i,j,k,3) =  14.42597018 + mf1*(-10.89598394)
                 qqp3(i,j,k,4) =  0.0
              END IF
           END DO

        END IF
     END DO
  END DO

END SUBROUTINE qq_const



!!$!WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
!!$!
!!$!WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
!!$
!!$SUBROUTINE dd_fischer (c_dd,n_dd,m_dd,k_dd,o_dd)
!!$
!!$  IMPLICIT NONE
!!$
!!$  !-----------------------------------------------------------------------------
!!$  REAL, INTENT(OUT)                      :: c_dd(28)
!!$  REAL, INTENT(OUT)                      :: n_dd(28)
!!$  REAL, INTENT(OUT)                      :: m_dd(28)
!!$  REAL, INTENT(OUT)                      :: k_dd(28)
!!$  REAL, INTENT(OUT)                      :: o_dd(28)
!!$
!!$  !-----------------------------------------------------------------------------
!!$  REAL, DIMENSION(17)                    :: c_qq, n_qq, m_qq, k_qq, o_qq
!!$  !-----------------------------------------------------------------------------
!!$
!!$  c_dd(1)  = - 0.423652173318E-1
!!$  c_dd(2)  =   0.204459397242E-1
!!$  c_dd(3)  =   0.664266837321E-1
!!$  c_dd(4)  = - 0.324168341478E-1
!!$  c_dd(5)  = - 0.741263275720E-2
!!$  c_dd(6)  = - 0.160855507113E-1
!!$  c_dd(7)  =   0.435623305093E-2
!!$  c_dd(8)  = - 0.105933370736E-3
!!$  c_dd(9)  = - 0.132000046519E-5
!!$  c_dd(10) =   0.838157718194E-5
!!$  c_dd(11) =   0.109144074057E-1
!!$  c_dd(12) =   0.257960188278E-1
!!$  c_dd(13) = - 0.544140085185E-3
!!$  c_dd(14) =   0.349568484468E-2
!!$  c_dd(15) = - 0.421407562467E-1
!!$  c_dd(16) = - 0.745992658113E-2
!!$  c_dd(17) =   0.146102252152E-3
!!$  c_dd(18) =   0.566611094911E-3
!!$  c_dd(19) = - 0.378643890614E-2
!!$  c_dd(20) = - 0.365824539450E-1
!!$  c_dd(21) =   0.169287932475E-1
!!$  c_dd(22) =   0.663866480778E-2
!!$  c_dd(23) =   0.294409406715E-1
!!$  c_dd(24) = - 0.112110434947E-1
!!$  c_dd(25) = - 0.182144939032E-5
!!$  c_dd(26) =   0.758594753989E-7
!!$  c_dd(27) = - 0.216942306418E-4
!!$  c_dd(28) = - 0.274025042954E-5
!!$
!!$  n_dd(1)  = -5.0
!!$  n_dd(2)  = -8.0
!!$  n_dd(3)  = -4.0
!!$  n_dd(4)  = -3.0
!!$  n_dd(5)  = -10.0
!!$  n_dd(6)  = -7.0
!!$  n_dd(7)  = -10.0
!!$  n_dd(8)  = -11.0
!!$  n_dd(9)  = -15.0
!!$  n_dd(10) = -10.0
!!$  n_dd(11) = -2.0
!!$  n_dd(12) = -2.0
!!$  n_dd(13) = -1.0
!!$  n_dd(14) = -5.0
!!$  n_dd(15) = -3.0
!!$  n_dd(16) = -1.0
!!$  n_dd(17) =  1.0
!!$  n_dd(18) = -9.0
!!$  n_dd(19) = -7.0
!!$  n_dd(20) = -2.0
!!$  n_dd(21) = -1.0
!!$  n_dd(22) = -5.0
!!$  n_dd(23) = -2.0
!!$  n_dd(24) = -1.0
!!$  n_dd(25) = -8.0
!!$  n_dd(26) = -5.0
!!$  n_dd(27) =  1.0
!!$  n_dd(28) = -4.0
!!$
!!$  m_dd(1)  = 2.0
!!$  m_dd(2)  = 2.0
!!$  m_dd(3)  = 2.0
!!$  m_dd(4)  = 2.0
!!$  m_dd(5)  = 2.0
!!$  m_dd(6)  = 2.0
!!$  m_dd(7)  = 2.0
!!$  m_dd(8)  = 2.0
!!$  m_dd(9)  = 2.0
!!$  m_dd(10) = 3.0
!!$  m_dd(11) = 2.0
!!$  m_dd(12) = 3.0
!!$  m_dd(13) = 6.0
!!$  m_dd(14) = 2.0
!!$  m_dd(15) = 3.0
!!$  m_dd(16) = 3.0
!!$  m_dd(17) = 6.0
!!$  m_dd(18) = 2.0
!!$  m_dd(19) = 2.0
!!$  m_dd(20) = 2.0
!!$  m_dd(21) = 2.0
!!$  m_dd(22) = 3.0
!!$  m_dd(23) = 3.0
!!$  m_dd(24) = 3.0
!!$  m_dd(25) = 10.0
!!$  m_dd(26) = 16.0
!!$  m_dd(27) = 4.0
!!$  m_dd(28) = 9.0
!!$
!!$  k_dd(1)  = 5.0
!!$  k_dd(2)  = 6.0
!!$  k_dd(3)  = 7.0
!!$  k_dd(4)  = 7.0
!!$  k_dd(5)  = 9.0
!!$  k_dd(6)  = 9.0
!!$  k_dd(7)  = 11.0
!!$  k_dd(8)  = 15.0
!!$  k_dd(9)  = 18.0
!!$  k_dd(10) = 18.0
!!$  k_dd(11) = 5.0
!!$  k_dd(12) = 5.0
!!$  k_dd(13) = 5.0
!!$  k_dd(14) = 6.0
!!$  k_dd(15) = 6.0
!!$  k_dd(16) = 6.0
!!$  k_dd(17) = 6.0
!!$  k_dd(18) = 7.0
!!$  k_dd(19) = 7.0
!!$  k_dd(20) = 7.0
!!$  k_dd(21) = 7.0
!!$  k_dd(22) = 7.0
!!$  k_dd(23) = 7.0
!!$  k_dd(24) = 7.0
!!$  k_dd(25) = 7.0
!!$  k_dd(26) = 7.0
!!$  k_dd(27) = 8.0
!!$  k_dd(28) = 10.0
!!$
!!$  o_dd(1)  = 1.0
!!$  o_dd(2)  = 1.0
!!$  o_dd(3)  = 1.0
!!$  o_dd(4)  = 1.0
!!$  o_dd(5)  = 1.0
!!$  o_dd(6)  = 1.0
!!$  o_dd(7)  = 1.0
!!$  o_dd(8)  = 1.0
!!$  o_dd(9)  = 1.0
!!$  o_dd(10) = 1.0
!!$  o_dd(11) = 0.0
!!$  o_dd(12) = 0.0
!!$  o_dd(13) = 0.0
!!$  o_dd(14) = 0.0
!!$  o_dd(15) = 0.0
!!$  o_dd(16) = 0.0
!!$  o_dd(17) = 0.0
!!$  o_dd(18) = 0.0
!!$  o_dd(19) = 0.0
!!$  o_dd(20) = 0.0
!!$  o_dd(21) = 0.0
!!$  o_dd(22) = 0.0
!!$  o_dd(23) = 0.0
!!$  o_dd(24) = 0.0
!!$  o_dd(25) = 0.0
!!$  o_dd(26) = 0.0
!!$  o_dd(27) = 0.0
!!$  o_dd(28) = 0.0
!!$
!!$  c_qq(1)  = - 0.412154280896E-2
!!$  c_qq(2)  =   0.355780441736E-2
!!$  c_qq(3)  = - 0.888093798389E-3
!!$  c_qq(4)  =   0.973791559609E-4
!!$  c_qq(5)  = - 0.604233719326E-7
!!$  c_qq(6)  = - 0.304478633146E-4
!!$  c_qq(7)  = - 0.378930196337E-3
!!$  c_qq(8)  = - 0.275388267352E-1
!!$  c_qq(9)  =   0.118301888420E-1
!!$  c_qq(10) = - 0.283451230562E-2
!!$  c_qq(11) = - 0.567703873212E-4
!!$  c_qq(12) =   0.314708573212E-2
!!$  c_qq(13) =   0.963786052569E-3
!!$  c_qq(14) = - 0.127591002424E-2
!!$  c_qq(15) =   0.363746463238E-3
!!$  c_qq(16) =   0.301067943096E-4
!!$  c_qq(17) =   0.291778231128E-6
!!$
!!$  n_qq(1)  = -8.0
!!$  n_qq(2)  = -6.0
!!$  n_qq(3)  = -4.0
!!$  n_qq(4)  = -10.0
!!$  n_qq(5)  = -20.0
!!$  n_qq(6)  = -8.0
!!$  n_qq(7)  = -3.0
!!$  n_qq(8)  = -3.0
!!$  n_qq(9)  = -2.0
!!$  n_qq(10) =  0.0
!!$  n_qq(11) = -5.0
!!$  n_qq(12) = -1.0
!!$  n_qq(13) = -3.0
!!$  n_qq(14) = -1.0
!!$  n_qq(15) =  0.0
!!$  n_qq(16) =  0.0
!!$  n_qq(17) = -10.0
!!$
!!$  m_qq(1)  = 2.0
!!$  m_qq(2)  = 2.0
!!$  m_qq(3)  = 2.0
!!$  m_qq(4)  = 2.0
!!$  m_qq(5)  = 2.0
!!$  m_qq(6)  = 2.0
!!$  m_qq(7)  = 8.0
!!$  m_qq(8)  = 2.0
!!$  m_qq(9)  = 2.0
!!$  m_qq(10) = 2.0
!!$  m_qq(11) = 8.0
!!$  m_qq(12) = 2.0
!!$  m_qq(13) = 5.0
!!$  m_qq(14) = 5.0
!!$  m_qq(15) = 5.0
!!$  m_qq(16) = 8.0
!!$  m_qq(17) = 7.0
!!$
!!$  k_qq(1)  = 11.0
!!$  k_qq(2)  = 12.0
!!$  k_qq(3)  = 13.0
!!$  k_qq(4)  = 16.0
!!$  k_qq(5)  = 19.0
!!$  k_qq(6)  = 20.0
!!$  k_qq(7)  = 7.0
!!$  k_qq(8)  = 8.0
!!$  k_qq(9)  = 8.0
!!$  k_qq(10) = 8.0
!!$  k_qq(11) = 8.0
!!$  k_qq(12) = 9.0
!!$  k_qq(13) = 10.0
!!$  k_qq(14) = 10.0
!!$  k_qq(15) = 10.0
!!$  k_qq(16) = 10.0
!!$  k_qq(17) = 18.0
!!$
!!$  o_qq(1)  = 1.0
!!$  o_qq(2)  = 1.0
!!$  o_qq(3)  = 1.0
!!$  o_qq(4)  = 1.0
!!$  o_qq(5)  = 1.0
!!$  o_qq(6)  = 1.0
!!$  o_qq(7)  = 0.0
!!$  o_qq(8)  = 0.0
!!$  o_qq(9)  = 0.0
!!$  o_qq(10) = 0.0
!!$  o_qq(11) = 0.0
!!$  o_qq(12) = 0.0
!!$  o_qq(13) = 0.0
!!$  o_qq(14) = 0.0
!!$  o_qq(15) = 0.0
!!$  o_qq(16) = 0.0
!!$  o_qq(17) = 0.0
!!$
!!$END SUBROUTINE dd_fischer

