clear all

#delimit ;
infile id nearc2 nearc4 educ age fatheduc motheduc weight momdad14 sinmom14 
step14 reg661 reg662 reg663 reg664 reg665 reg666 reg667 reg668 reg669 south66 
black smsa south smsa66 wage enroll KWW IQ married libcrd14 exper lwage expersq 
using "~/ProblemSet5Data/CARD.raw" ;


log using "/Users/cocorbin/Desktop/PS5Q5_1.smcl" ;
 note: There is no effect on the coefficients or p values associated with the 
main explanatory variables of education, workexp, wrkexpsq.  However,  
Standard errors are reduced significantly.  Heteroskedastic S.E. are   
justified by the expectation that errors are correlated with ability,   
which may also be correlated with wages and educational attainment.   
Part B finds that nearc4 explains 32% of variance in educ ;


reg lwage educ exper expersq black south smsa smsa66 reg661 reg662 reg663 
reg664 reg665 reg666 reg667 reg668, noheader ;
reg lwage educ exper expersq black south smsa smsa66 reg661 reg662 reg663 
reg664 reg665 reg666 reg667 reg668, robust noheader ;
reg lwage educ exper expersq black south smsa smsa66 reg661 reg662 reg663 
reg664 reg665 reg666 reg667 reg668 nearc4, robust noheader ;
log close ;


log using "~/PS5Q5_2.smcl" ;

note: Using IV the 95% CI has a significantly large range than when using OLS
Comparing with robust SE finds, a better fit for IV as compared to homoskedastic SE
Supporting the assumption that SE are likely heteroskedastic in this sample ;

ivregress 2sls lwage exper expersq black south smsa smsa66 reg661 reg662 reg663 
reg664 reg665 reg666 reg667 reg668 (educ = nearc4), noheader ;
ivregress 2sls lwage exper expersq black south smsa smsa66 reg661 reg662 reg663 
reg664 reg665 reg666 reg667 reg668 (educ = nearc2), noheader ;
ivregress 2sls lwage exper expersq black south smsa smsa66 reg661 reg662 reg663 
reg664 reg665 reg666 reg667 reg668 (educ = nearc4), robust noheader ;
ivregress 2sls lwage exper expersq black south smsa smsa66 reg661 reg662 reg663 
reg664 reg665 reg666 reg667 reg668 (educ = nearc2), robust noheader ;

log close ;


log using "~/PS5Q5_3.smcl" ;

note: Using Both nearc4 and nearc as instruments makes the difference between using  
Robust SE or Homoskedastic SE. Educ is reported as having twice as strong an effect 
on wages when using nearc2 as an instrument, while using both nearc4 and nearc2
increases the effect of educ relative to using only nearc4, but reduces the 
effect relative to using only nearc2.  Robust estimates continue to support 
assumption of heterogenity of SE ;

ivregress 2sls lwage exper expersq black south smsa smsa66 reg661 reg662 reg663 
reg664 reg665 reg666 reg667 reg668 (educ = nearc4 nearc2), robust noheader ;
ivregress 2sls lwage exper expersq black south smsa smsa66 reg661 reg662 reg663 
reg664 reg665 reg666 reg667 reg668 (educ = nearc4 nearc2), noheader ;
log close ;
translate "/Users/cocorbin/Desktop/PS5Q5_3.smcl"
 "/Users/cocorbin/Desktop/PS5Q5_3.log" ;
 
log using "/Users/cocorbin/Desktop/PS5Q5_4.smcl" ;


drop if IQ == . | IQ ==0 ;
 
note: Regression results initially suggest a statistically significant correlation
between nearc4 and educ.  After controlling for regions, the correlation
is much reduced, and is not statistcally significant ;

#delimit cr

reg IQ nearc4, nohea

reg IQ nearc4, robust nohea

reg IQ nearc4 smsa66 reg661 reg662 reg669, nohea
 
reg IQ nearc4 smsa66 reg661 reg662 reg669, robust nohea

log close
