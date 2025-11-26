c simulation for gamma ray experiment
c *** CELLS *** --------------------------------------------------------------  
c ----------------------------------------------------------------------------
c detector
 300  10 -5.323   (-9201: -9301: -9401) #305 #301 #307  imp:p=1     $ detector
 301   0          (-9501: -9601) #307  imp:p=1                      $ cold channel
 305 10 -5.323    (-95: -96) #301 #307  imp:p=1                     $ cold channel contact
 306 10 -5.323    (-92: -93: -94) #300 #301 #305 #307 imp:p=1        $detector contact
 307 13 -8.07      -9602: -9603   imp:p=1                           $ cold pin
c aluminum cap
   302   12 -2.6989      -98 97  imp:p=1  $
c mount cap
 303   11 -1.38  -9001  imp:p=1                                    $ mount cup shield Mylar
 304   12 -2.6989  -9002 9003 #307 9602 imp:p=1                   $ mount cup wall&base Al 
c Part B after aluminum End cap
 308   12 -2.6989     -9701 9801 98 #3081 imp:p=1  $
c Parts after part B
 3081   7 -8.00     -9702 imp:p=1  $
 3082   7 -8.00     -9703 imp:p=1  $
 3083   7 -8.00     -9704 9705 imp:p=1  $
 3084  12 -2.698900 -9705 imp:p=1 $ added density inside cooler
c --- Added Steel Cart Cells (supporting the detector) ---
c  Detector (center of main cylinder) is at 114.3 cm (vertical, i.e. y),
c  and it sits 12.5 cm above the top of the cart.
c  Cart horizontal dimensions (in x and z): width = 45.72 cm 
c (x from -22.86 to +22.86), length = 60.96 cm.
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

c Au foil
c 0.25in radius, 0.004in thickness
c 100 RCC 0 0 103.3 0 0 0.01016 0.635
c ------------------------------------------------------ 
c end cap window
   97   RCC 0 0 103.94 0 0 13.4 3.37          $ inner cylinder 
   98   RCC 0 0 103.79 0 0 13.4 3.8           $ outer cylinder 
c mount cap
   9001   RCC 0 0 104.24 0 0 0.003 2.521      $shield:Mylar  
   9002   RCC 0 0 104.243001 0 0 9.4 2.921001 $ mount cap and base outer 
   9003   RCC 0 0 104.243001 0 0 9.08 2.445001 
 c $ mount cap and base inner L=9.4-0.32=9.08 r=crystal r=2.445
c HPGe (92-94) for contact layer; (9201-9401) for crystal
   92   TZ  0 0 105.043002 1.645  0.8 0.8     
   93   RCC 0 0 104.243002 0 0 0.8 1.645      
   94   RCC 0 0 105.043002 0 0 2.68 2.445       $ 
   9201   TZ  0 0 105.043002 1.645  0.73 0.73   $inner rounded corner 
   9301   RCC 0 0 104.313002 0 0 0.73 1.645     $inner top cylinder 
   9401   RCC 0 0 105.043002 0 0 3.68001 2.375  $bottom cylinder 
c cold channel (95 96) for contact layer; (9501 9601) for hole; (9602 9603) cold pin
c 
c top position=104.243+(L_crystal-L_hole+r_hole)=104.243+3.48-2.86+0.55=105.413
   95   RCC 0 0 105.413 0 0 2.31001 0.55003             $outer cylinder 
   96   S   0  0 105.413 0.55003                        $bottom corner outer
   9501   RCC 0 0 105.413 0 0 2.31 0.55                 $hole 
   9601   S   0  0 105.413 0.55                         $bottom corner inner
c cold pin 
   9602   RCC 0 0 105.1805001 0 0 13.9994998 0.3175 
   9603   S   0  0 105.1805001 0.3175                    $ cold pin top
c Part B after end cap: 
   9701   RCC 0 0 117.08 0 0 11.6 3.75                  $outer cylinder 
   9801   RCC 0 0 117.21 0 0 11.34 3.62                $inner cylinder 
c Parts after part B
   9702   RCC 0 0 119.18 0 0 22.9 1.59                  $long connector 
   9703   RCC 0 0 142.080001 0 0 9.9 4.6                     $flange 
   9704   RPP -9.0 13.0 -13.8 9.1 151.980002 179.480002 $outer box x= y= z=27.5
   9705   RPP -8.0 12.0 -12.8 8.1 152.980002 178.480002 $inner box thickness=1
c *** STEEL CART SURFACES (added) ***
   10000   RPP -22.86 22.86 101.6 101.8 122.985 183.945   $ Bottom level
   10001   RPP -22.86 22.86 60.4 60.6 122.985 183.945   $ Middle level
   10002   RPP -22.86 22.86 19.2 19.4 122.985 183.945   $ Top level
c *** FLOOR (added) ***
   10003   RCC 0 114.3 150 0 20 0 66.8   $ r=66.8, L=20, y from 114.3 to 134.3
c                                                                               
  70      SZ 150 150
c                                                                               
c ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~                              
c *** END SURFACES *** -----------------------------------------------------

c *** DATA *** ------------------------------------------                       
c ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~                              
c TRANSFORMATIONS                                                               
c ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~                          
c    Physics                                                                    
c ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  mode  p e
c  PHYS:N J 20                                                                  
c  PHYS:P 10 j j j j 
  PHYS:P 10 1 1 j 1  
c  cut:p j 0.005 
c  MPHYS
c ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~                          
c    Materials                                                                  
c ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~                          
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
m8$ -11.35 g/cm3 
c     82000.50c -1.000000 $ Lead 
     82204  -0.0140000
     82206  -0.2410000
     82207  -0.2210000
     82208  -0.5240000
m10  $ -5.323 g/cm3 Ge
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
     8017  -0.000191
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
c  sdef PAR=P ERG=0.356 CEL=100 AXS=0 0 1 POS=0 0 103.3 RAD=d1 EXT=d2
c  SI1 0 0.635 $ radial sampling range: 0 to Rmax
c  SP1 -21 1 $ radial sampling weighting: r^1 for cylinder
c  SI2 0 0.01016 $ axial sampling range: 0 to hmax
c  SP2 -21 0 $ weighting for axial sampling: here constant
c Cs-137 Source
  sdef PAR=P ERG=0.6617 POS=0 0 90.71
c Co-60 Source
c  sdef PAR=P ERG=D1 POS=0 0 90.71
  SI1 L 1.1732 1.3325
  SP1 0.5 0.5
  NPS  1E8
  FILES 21 DUMN1                                                               
  print                                                                         
c  DBCN                                                                         
  prdmp 4J -1                                                                   
c ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
c    Tallies                                                                    
c ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~                          
c  F4:p  300
c  E4 0.05 8546i 2
c  FT4 GEB 0.4156 0.0393 0 $FWHM=a+b*sqrt(E+cE^2) 0.85-122 1.85-1330
  F8:p  300
c  E8 0.05 999i 1
  E8 0.0 5000i 5.0
  FT8 GEB 0.00041555 0.0012438 0
c ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
c *** END DATA *** ----------------------------------------------------------   
c ********** END OF FILE **********                                             
