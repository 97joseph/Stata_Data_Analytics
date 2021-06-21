 . codebook hhid hhsize age_ranking age pcode gender_c father mother clustnum
 
 . regress amt_rec hhid, noconstant hascons tsscons
 

 
  ___  ____  ____  ____  ____ (R)
 /__    /   ____/   /   ____/
___/   /   /___/   /   /___/   15.0   Copyright 1985-2017 StataCorp LLC
  Statistics/Data Analysis            StataCorp
                                      4905 Lakeway Drive
                                      College Station, Texas 77845 USA
                                      800-STATA-PC        http://www.stata.com
                                      979-696-4600        stata@stata.com
                                      979-696-4601 (fax)

Single-user Stata perpetual license:
       Serial number:  301506215585
         Licensed to:  www.Downloadly.ir
                       Iran Will Defeat US

Notes:
      1.  Unicode is supported; see help unicode_advice.

. use "E:\ONLINE WORKING\Stata_Data_Analytics\Merged_Final.dta"

.  . codebook hhid hhsize age_ranking age pcode gender_c father mother clustnum
>  gender

-------------------------------------------------------------------------------
hhid                                                Household identification No
-------------------------------------------------------------------------------

                  type:  numeric (long)

                 range:  [1001,360017]                units:  1
         unique values:  8,810                    missing .:  3/44,439

                  mean:    198948
              std. dev:    101537

           percentiles:        10%       25%       50%       75%       90%
                             50005    115009    212015    285015    329006

-------------------------------------------------------------------------------
hhsize                                                              (unlabeled)
-------------------------------------------------------------------------------

                  type:  numeric (float)

                 range:  [1,31]                       units:  1
         unique values:  27                       missing .:  27/44,439

                  mean:   7.16203
              std. dev:   3.93821

           percentiles:        10%       25%       50%       75%       90%
                                 3         4         6         9        12

-------------------------------------------------------------------------------
age_ranking                                                         (unlabeled)
-------------------------------------------------------------------------------

                  type:  numeric (float)

                 range:  [1,31]                       units:  1
         unique values:  31                       missing .:  27/44,439

                  mean:   4.10862
              std. dev:   3.09252

           percentiles:        10%       25%       50%       75%       90%
                                 1         2         3         6         8

-------------------------------------------------------------------------------
age                                                             5 :Age in years
-------------------------------------------------------------------------------

                  type:  numeric (int)

                 range:  [-4,110]                     units:  1
         unique values:  107                      missing .:  27/44,439

                  mean:    25.694
              std. dev:   19.1804

           percentiles:        10%       25%       50%       75%       90%
                                 4        10        22        38        54

-------------------------------------------------------------------------------
pcode                                                            1 :Person code
-------------------------------------------------------------------------------

                  type:  numeric (byte)

                 range:  [-1,42]                      units:  1
         unique values:  34                       missing .:  5/44,439

                  mean:    4.0539
              std. dev:   3.06515

           percentiles:        10%       25%       50%       75%       90%
                                 1         2         3         5         8

-------------------------------------------------------------------------------
gender_c                                                         4 :Gender code
-------------------------------------------------------------------------------

                  type:  string (str2)

         unique values:  3                        missing "":  27/44,439

            tabulation:  Freq.  Value
                            27  ""
                            11  "-1"
                        23,049  "F"
                        21,352  "M"

-------------------------------------------------------------------------------
father                                                      8 :Father present ?
-------------------------------------------------------------------------------

                  type:  numeric (byte)

                 range:  [-4,99]                      units:  1
         unique values:  22                       missing .:  27/44,439

                  mean:   61.1879
              std. dev:   43.9044

           percentiles:        10%       25%       50%       75%       90%
                                 1         1        88        99        99

-------------------------------------------------------------------------------
mother                                                      9 :Mother present ?
-------------------------------------------------------------------------------

                  type:  numeric (byte)

                 range:  [-4,99]                      units:  1
         unique values:  31                       missing .:  27/44,439

                  mean:   44.2665
              std. dev:    45.813

           percentiles:        10%       25%       50%       75%       90%
                                 1         2         4        88        99

-------------------------------------------------------------------------------
clustnum                                                         Cluster number
-------------------------------------------------------------------------------

                  type:  numeric (int)

                 range:  [1,360]                      units:  1
         unique values:  358                      missing .:  0/44,439

                  mean:   198.922
              std. dev:    101.54

           percentiles:        10%       25%       50%       75%       90%
                                50       115       212       285       329

-------------------------------------------------------------------------------
gender                                                                3 :Gender
-------------------------------------------------------------------------------

                  type:  string (str2)

         unique values:  3                        missing "":  38,444/44,439

            tabulation:  Freq.  Value
                        38,444  ""
                            30  "-1"
                         2,939  "F"
                         3,026  "M"

. regress amt_rec hhid, noconstant hascons tsscons
(note: hascons false)

      Source |       SS           df       MS      Number of obs   =     3,491
-------------+----------------------------------   F(1, 3489)      =     38.10
       Model |  83632140.7         1  83632140.7   Prob > F        =    0.0000
    Residual |  7.6590e+09     3,489  2195195.87   R-squared       =    0.0108
-------------+----------------------------------   Adj R-squared   =    0.0105
       Total |  7.7427e+09     3,490  2218530.24   Root MSE        =    1481.6

------------------------------------------------------------------------------
     amt_rec |      Coef.   Std. Err.      t    P>|t|     [95% Conf. Interval]
-------------+----------------------------------------------------------------
        hhid |  -.0014585   .0002363    -6.17   0.000    -.0019218   -.0009952
       _cons |   835.7355   52.56608    15.90   0.000     732.6721    938.7989
------------------------------------------------------------------------------

. . regress totminc hhid, noconstant hascons tsscons
(note: hascons false)

      Source |       SS           df       MS      Number of obs   =    43,505
-------------+----------------------------------   F(1, 43503)     =   1703.26
       Model |  3.2018e+10         1  3.2018e+10   Prob > F        =    0.0000
    Residual |  8.1778e+11    43,503  18798236.3   R-squared       =    0.0377
-------------+----------------------------------   Adj R-squared   =    0.0377
       Total |  8.4980e+11    43,504  19533789.4   Root MSE        =    4335.7

------------------------------------------------------------------------------
     totminc |      Coef.   Std. Err.      t    P>|t|     [95% Conf. Interval]
-------------+----------------------------------------------------------------
        hhid |  -.0085093   .0002062   -41.27   0.000    -.0089134   -.0081051
       _cons |   3559.578   46.13167    77.16   0.000     3469.159    3649.997
------------------------------------------------------------------------------

. . logistic totminc age

Logistic regression                             Number of obs     =     43,484
                                                LR chi2(1)        =       0.96
                                                Prob > chi2       =     0.3270
Log likelihood = -767.14386                     Pseudo R2         =     0.0006

------------------------------------------------------------------------------
     totminc | Odds Ratio   Std. Err.      z    P>|z|     [95% Conf. Interval]
-------------+----------------------------------------------------------------
         age |   1.005021   .0052062     0.97   0.334     .9948683    1.015277
       _cons |   348.2362   54.50119    37.40   0.000      256.245    473.2519
------------------------------------------------------------------------------
Note: _cons estimates baseline odds.

.  regress totminc hhid, noconstant  tsscons

      Source |       SS           df       MS      Number of obs   =    43,505
-------------+----------------------------------   F(0, 43504)     =      0.00
       Model |           0         0           .   Prob > F        =         .
    Residual |  9.2970e+11    43,504  21370489.6   R-squared       =         .
-------------+----------------------------------   Adj R-squared   =         .
       Total |  8.4980e+11    43,504  19533789.4   Root MSE        =    4622.8

------------------------------------------------------------------------------
     totminc |      Coef.   Std. Err.      t    P>|t|     [95% Conf. Interval]
-------------+----------------------------------------------------------------
        hhid |   .0056934   .0000991    57.48   0.000     .0054992    .0058875
------------------------------------------------------------------------------

. regress clustnum totminc

      Source |       SS           df       MS      Number of obs   =    43,505
-------------+----------------------------------   F(1, 43503)     =   1703.27
       Model |  16662457.9         1  16662457.9   Prob > F        =    0.0000
    Residual |   425573767    43,503  9782.63034   R-squared       =    0.0377
-------------+----------------------------------   Adj R-squared   =    0.0377
       Total |   442236225    43,504  10165.4153   Root MSE        =    98.907

------------------------------------------------------------------------------
    clustnum |      Coef.   Std. Err.      t    P>|t|     [95% Conf. Interval]
-------------+----------------------------------------------------------------
     totminc |   -.004428   .0001073   -41.27   0.000    -.0046383   -.0042177
       _cons |   207.9546   .5144757   404.21   0.000     206.9462    208.9629
------------------------------------------------------------------------------

. 
