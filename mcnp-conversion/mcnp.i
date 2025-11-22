c detector
 300  10 -5.323   (-9201: -9301: -9401) #305 #301 #307  imp:p=1  $ detector
 301   0          (-9501: -9601) #307  imp:p=1  $ cold channel
 305 10 -5.323    (-95: -96) #301 #307  imp:p=1  $ cold channel contact
 306 10 -5.323    (-92: -93: -94) #300 #301 #305 #307 imp:p=1  $detector contact
 307 13 -8.07      -9602: -9603   imp:p=1  $ cold pin
c aluminum cap
   302   12 -2.6989      -98 97  imp:p=1  $
c mount cap
 303   11 -1.38  -9001  imp:p=1  $ mount cup shield Mylar
 304   12 -2.6989  -9002 9003 #307 9602 imp:p=1  $ mount cup wall&base Al 
c Part B after aluminum End cap
 308   12 -2.6989     -9701 9801 98 #3081 imp:p=1  $
c Parts after part B
 3081   7 -8.00     -9702 imp:p=1  $
 3082   7 -8.00     -9703 imp:p=1  $
 3083   7 -8.00     -9704 9705 imp:p=1  $
 3084  12 -2.698900 -9705 imp:p=1 $ added density inside cooler
c --- Added Steel Cart Cells (supporting the detector) ---
c  Detector (center of main cylinder) is at 114.3 cm (vertical, i.e. y), and it sits 12.5 cm above the top of the cart.
c  Cart horizontal dimensions (in x and z): width = 45.72 cm (x from -22.86 to +22.86), length = 60.96 cm.
c  In z: front edge of cart = 83.615 cm, back edge = 22.655 cm.
c  In y:
c     Bottom level: from 101.6 to 101.8 cm (thickness 0.2 cm)
c     Middle level: from 60.4 to 60.6 cm (thickness 0.2 cm)
c     Top level: from 19.2 to 19.4 cm (thickness 0.2 cm)
 1000   7 -8.00     -10000 imp:p=1  $ Steel Cart Bottom Level
 1001   7 -8.00     -10001 imp:p=1  $ Steel Cart Middle Level
 1002   7 -8.00     -10002 imp:p=1  $ Steel Cart Top Level
c --- Added Floor Cells ---
 1003  14 -2.35     -10003 imp:p=1  $ Concrete Floor
c ~~~~~~~~~                                                                     
c    Environment                                                                
c ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~                          
9 0 -70  #300 #301 #302 #303 #304 #305 #306 #307 
         #308 #3081 #3082 #3083 #3084 #1000 #1001 
         #1002 #1003 imp:p=1  
c ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~                          
c    Graveyard                                                                  
c ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~                          
  999     0         70 imp:p=0  
c -----------------------------------------------------                         
c *** END CELLS *** ------------------------------------                        

c ------------------------------------------------------ 
c end cap window
   97   RCC 0 0 103.94 0 0 13.4 3.37 $ inner cylinder r=3.5-0.13=3.37 top_t=0.13
   98   RCC 0 0 103.81 0 0 13.4 3.5 $ outer cylinder r=3.5 L=13.4
c mount cap
   9001   RCC 0 0 104.24 0 0 0.003 2.521 $shield:Mylar r=2.521cm, t=0.003cm 
   9002   RCC 0 0 104.243001 0 0 9.4 2.521001 $ mount cap and base outer L=9.4 r=2.445+0.076=2.521
   9003   RCC 0 0 104.243001 0 0 9.08 2.445001 $ mount cap and base inner L=9.4-0.32=9.08 r=crystal r=2.445
c HPGe (92-94) for contact layer; (9201-9401) for crystal
   92   TZ  0 0 105.043002 1.645  0.8 0.8 $outer rounded corner r=0.8
   93   RCC 0 0 104.243002 0 0 0.8 1.645 $ inner top cylinder r=2.445-0.8=1.645 L=0.8
   94   RCC 0 0 105.043002 0 0 2.68 2.445 $ bottom cylinder r=2.445 L=3.48-0.8=2.68
   9201   TZ  0 0 105.043002 1.645  0.73 0.73 $inner rounded corner r=0.73
   9301   RCC 0 0 104.313002 0 0 0.73 1.645 $inner top cylinder r=2.445-0.8=1.645 L=0.73
   9401   RCC 0 0 105.043002 0 0 2.68001 2.375 $bottom cylinder r=2.445-0.07=2.375 L=3.48-0.8=2.68
c cold channel (95 96) for contact layer; (9501 9601) for hole; (9602 9603) cold pin
c top position=104.243+(L_crystal-L_hole+r_hole)=104.243+3.48-2.86+0.55=105.413
   95   RCC 0 0 105.413 0 0 2.31001 0.55003 $outer cylinder r=0.55+0.00003 L=2.86-0.55=2.31
   96   S   0  0 105.413 0.55003 $bottom corner outer
   9501   RCC 0 0 105.413 0 0 2.31 0.55 $hole r=0.55 L=2.86-0.55=2.31
   9601   S   0  0 105.413 0.55 $bottom corner inner r=0.55
c cold pin r=0.3175 top position=105.413-r diff=105.413-(0.55-0.3175) L=119.18-105.1805=
   9602   RCC 0 0 105.1805001 0 0 13.9994998 0.3175 
   9603   S   0  0 105.1805001 0.3175 $ cold pin top
c Part B after end cap: top position=103.81+13.4-0.13=117.08
   9701   RCC 0 0 117.08 0 0 11.6 3.75 $outer cylinder r=3.75 L=11.6
   9801   RCC 0 0 117.21 0 0 11.34 3.62 $inner cylinder r=3.75-0.13
c Parts after part B:top position=117.08+11.6-9.5=119.18
   9702   RCC 0 0 119.18 0 0 22.9 1.59 $long connector r=1.59,L=22.9
   9703   RCC 0 0 142.080001 0 0 9.9 4.6 $flange r=4.6 L=6.5
   9704   RPP -9.0 13.0 -13.8 9.1 151.980002 179.480002 $outer box x= y= z=27.5
   9705   RPP -8.0 12.0 -12.8 8.1 152.980002 178.480002 $inner box thickness=1
c *** STEEL CART SURFACES (added) ***
   10000   RPP -22.86 22.86 101.6 101.8 122.985 183.945   $ Bottom level: x from -22.86 to 22.86, y from 101.6 to 101.8, z from 122.985 to 183.945
   10001   RPP -22.86 22.86 60.4 60.6 122.985 183.945   $ Middle level: same x and z, y from 60.4 to 60.6
   10002   RPP -22.86 22.86 19.2 19.4 122.985 183.945   $ Top level: same x and z, y from 19.2 to 19.4
c *** FLOOR (added) ***
   10003   RCC 0 114.3 150 0 20 0 66.8   $ r=66.8, L=20, y from 114.3 to 134.3
c
  70      SZ 150 150
c
c ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~                              
c *** END SURFACES *** -----------------------------------------------------

c *** DATA *** ------------------------------------------                       
c ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~                          
c    Physics
c ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  mode  p
  cut:p j 0.005 
c ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~                                            
c Gold                                                      
c ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~   
m1   
     79000 -1.000000                                         
c steel -7.86g/cc ss316 for foils
m2  
c m2
     24052  -0.180000 $Chromium Cr24
     28058  -0.140000 $Nickel Ni28
     42098  -0.030000 $Molybdenum Mo42
     6000   -0.000800 $Carbon C6
     25055  -0.020000 $Manganese Mn25
     15031  -0.000450 $Phosphorous P15
     16032  -0.000300 $Sulfur S16
     14028  -0.000300 $Silicon Si14
     7014  -0.001000 $Nitrogen N7
     26056  -0.619950 $Iron Fe26
m4  
c m4
     1001 -0.142857
     6000 -0.857143
c Al -2.698900 g/cm3 for rail support
m5  
c m5
     24052  -0.00800
     29063  -0.00400
     26056  -0.00700
     12024  -0.01200
     25055  -0.00150
     28058  -0.00050
     14028  -0.00800
     22048  -0.00150
     30064  -0.00250
     40090  -0.00250
     13027  -0.95250
c Al -2.698900 g/cm3 for detector 6061 Al 
m12  
     12024  -0.00900
     14028  -0.00700
     26056  -0.00600
     29063  -0.00300
     24052  -0.00250
     30064  -0.00200
     22048  -0.00100
     25055  -0.00050
     13027  -0.96900
c Wood -0.640 g/cm3
m6  
c m6
     1001  -0.059642
     6000  -0.497018
     7014  -0.004970
     8016  -0.427435
     12024 -0.001988
     16032 -0.004970
     19039 -0.001988
     20040 -0.001988
c steel -8.00g/cc ss304
m7  
c m7
     6000   -0.000400
     14028  -0.005000
     15031  -0.000230
     16032  -0.000150
     24052  -0.190000
     25055  -0.010000
     26056  -0.701730
     28058  -0.092500
m8   $ -11.35 g/cm3 
c     82000.50c -1.000000 $ Lead 
     82204  -0.0140000
     82206  -0.2410000
     82207  -0.2210000
     82208  -0.5240000
m10   $ -5.323 g/cm3 Ge
     32070 0.2051
     32072 0.2745
     32073 0.0776
     32074 0.367
     32076 0.0757
m11   $Mylar -1.38g/cm3
     1001 -0.041960
     6000 -0.625016
     8016 -0.333024
m13   $Brass -8.07g/cm3
     26056 -0.000868
     29063 -0.665381
     30064 -0.325697
     50120 -0.002672
     82208 -0.005382
m14   $Concrete Ordinary NBS03 -2.35g/cm3
     1001  -0.008483
     1002  -0.000002
     6000  -0.050064
     8016  -0.472200
     12000 -0.024183
     13027 -0.036063
     14000 -0.145100
     16000 -0.002970
     19000 -0.001697
     20000 -0.246924
     26000 -0.011031
c ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
c    Source
c ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
c Co-60 Source
  sdef PAR=P ERG=D1 POS=0 0 90.71
  SI1 L 1.1732 1.3325
  SP1 0.5 0.5
  NPS  1E8
  FILES 21 DUMN1
  print
  prdmp 4J -1
