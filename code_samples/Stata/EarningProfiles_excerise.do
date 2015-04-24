* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

/* Read in Data from IPUMS */

cd /Users/cocorbin/Desktop/computing 

set more off

clear
quietly infix             ///
  int     year     1-4    ///
  byte    datanum  5-6    ///
  double  serial   7-14   ///
  float   hhwt     15-24  ///
  byte    gq       25-25  ///
  int     pernum   26-29  ///
  float   perwt    30-39  ///
  byte    sex      40-40  ///
  int     age      41-43  ///
  int     birthyr  44-47  ///
  byte    racwht   48-48  ///
  byte    educ     49-50  ///
  int     educd    51-53  ///
  long    inctot   54-60  ///
  long    incwage  61-66  ///
  long    incearn  67-73  ///
  using `"usa_00002.dat"'

replace hhwt    = hhwt    / 100
replace perwt   = perwt   / 100

format serial  %8.0f
format hhwt    %10.2f
format perwt   %10.2f

label var year    `"Census year"'
label var datanum `"Data set number"'
label var serial  `"Household serial number"'
label var hhwt    `"Household weight"'
label var gq      `"Group quarters status"'
label var pernum  `"Person number in sample unit"'
label var perwt   `"Person weight"'
label var sex     `"Sex"'
label var age     `"Age"'
label var birthyr `"Year of birth"'
label var racwht  `"Race: white"'
label var educ    `"Educational attainment [general version]"'
label var educd   `"Educational attainment [detailed version]"'
label var inctot  `"Total personal income"'
label var incwage `"Wage and salary income"'
label var incearn `"Total personal earned income"'

label define year_lbl 1850 `"1850"'
label define year_lbl 1860 `"1860"', add
label define year_lbl 1870 `"1870"', add
label define year_lbl 1880 `"1880"', add
label define year_lbl 1900 `"1900"', add
label define year_lbl 1910 `"1910"', add
label define year_lbl 1920 `"1920"', add
label define year_lbl 1930 `"1930"', add
label define year_lbl 1940 `"1940"', add
label define year_lbl 1950 `"1950"', add
label define year_lbl 1960 `"1960"', add
label define year_lbl 1970 `"1970"', add
label define year_lbl 1980 `"1980"', add
label define year_lbl 1990 `"1990"', add
label define year_lbl 2000 `"2000"', add
label define year_lbl 2001 `"2001"', add
label define year_lbl 2002 `"2002"', add
label define year_lbl 2003 `"2003"', add
label define year_lbl 2004 `"2004"', add
label define year_lbl 2005 `"2005"', add
label define year_lbl 2006 `"2006"', add
label define year_lbl 2007 `"2007"', add
label define year_lbl 2008 `"2008"', add
label define year_lbl 2009 `"2009"', add
label define year_lbl 2010 `"2010"', add
label define year_lbl 2011 `"2011"', add
label define year_lbl 2012 `"2012"', add
label define year_lbl 2013 `"2013"', add
label values year year_lbl

label define gq_lbl 0 `"Vacant unit"'
label define gq_lbl 1 `"Households under 1970 definition"', add
label define gq_lbl 2 `"Additional households under 1990 definition"', add
label define gq_lbl 3 `"Group quarters--Institutions"', add
label define gq_lbl 4 `"Other group quarters"', add
label define gq_lbl 5 `"Additional households under 2000 definition"', add
label define gq_lbl 6 `"Fragment"', add
label values gq gq_lbl

label define sex_lbl 1 `"Male"'
label define sex_lbl 2 `"Female"', add
label values sex sex_lbl

label define age_lbl 000 `"Less than 1 year old"'
label define age_lbl 001 `"1"', add
label define age_lbl 002 `"2"', add
label define age_lbl 003 `"3"', add
label define age_lbl 004 `"4"', add
label define age_lbl 005 `"5"', add
label define age_lbl 006 `"6"', add
label define age_lbl 007 `"7"', add
label define age_lbl 008 `"8"', add
label define age_lbl 009 `"9"', add
label define age_lbl 010 `"10"', add
label define age_lbl 011 `"11"', add
label define age_lbl 012 `"12"', add
label define age_lbl 013 `"13"', add
label define age_lbl 014 `"14"', add
label define age_lbl 015 `"15"', add
label define age_lbl 016 `"16"', add
label define age_lbl 017 `"17"', add
label define age_lbl 018 `"18"', add
label define age_lbl 019 `"19"', add
label define age_lbl 020 `"20"', add
label define age_lbl 021 `"21"', add
label define age_lbl 022 `"22"', add
label define age_lbl 023 `"23"', add
label define age_lbl 024 `"24"', add
label define age_lbl 025 `"25"', add
label define age_lbl 026 `"26"', add
label define age_lbl 027 `"27"', add
label define age_lbl 028 `"28"', add
label define age_lbl 029 `"29"', add
label define age_lbl 030 `"30"', add
label define age_lbl 031 `"31"', add
label define age_lbl 032 `"32"', add
label define age_lbl 033 `"33"', add
label define age_lbl 034 `"34"', add
label define age_lbl 035 `"35"', add
label define age_lbl 036 `"36"', add
label define age_lbl 037 `"37"', add
label define age_lbl 038 `"38"', add
label define age_lbl 039 `"39"', add
label define age_lbl 040 `"40"', add
label define age_lbl 041 `"41"', add
label define age_lbl 042 `"42"', add
label define age_lbl 043 `"43"', add
label define age_lbl 044 `"44"', add
label define age_lbl 045 `"45"', add
label define age_lbl 046 `"46"', add
label define age_lbl 047 `"47"', add
label define age_lbl 048 `"48"', add
label define age_lbl 049 `"49"', add
label define age_lbl 050 `"50"', add
label define age_lbl 051 `"51"', add
label define age_lbl 052 `"52"', add
label define age_lbl 053 `"53"', add
label define age_lbl 054 `"54"', add
label define age_lbl 055 `"55"', add
label define age_lbl 056 `"56"', add
label define age_lbl 057 `"57"', add
label define age_lbl 058 `"58"', add
label define age_lbl 059 `"59"', add
label define age_lbl 060 `"60"', add
label define age_lbl 061 `"61"', add
label define age_lbl 062 `"62"', add
label define age_lbl 063 `"63"', add
label define age_lbl 064 `"64"', add
label define age_lbl 065 `"65"', add
label define age_lbl 066 `"66"', add
label define age_lbl 067 `"67"', add
label define age_lbl 068 `"68"', add
label define age_lbl 069 `"69"', add
label define age_lbl 070 `"70"', add
label define age_lbl 071 `"71"', add
label define age_lbl 072 `"72"', add
label define age_lbl 073 `"73"', add
label define age_lbl 074 `"74"', add
label define age_lbl 075 `"75"', add
label define age_lbl 076 `"76"', add
label define age_lbl 077 `"77"', add
label define age_lbl 078 `"78"', add
label define age_lbl 079 `"79"', add
label define age_lbl 080 `"80"', add
label define age_lbl 081 `"81"', add
label define age_lbl 082 `"82"', add
label define age_lbl 083 `"83"', add
label define age_lbl 084 `"84"', add
label define age_lbl 085 `"85"', add
label define age_lbl 086 `"86"', add
label define age_lbl 087 `"87"', add
label define age_lbl 088 `"88"', add
label define age_lbl 089 `"89"', add
label define age_lbl 090 `"90 (90+ in 1980 and 1990)"', add
label define age_lbl 091 `"91"', add
label define age_lbl 092 `"92"', add
label define age_lbl 093 `"93"', add
label define age_lbl 094 `"94"', add
label define age_lbl 095 `"95"', add
label define age_lbl 096 `"96"', add
label define age_lbl 097 `"97"', add
label define age_lbl 098 `"98"', add
label define age_lbl 099 `"99"', add
label define age_lbl 100 `"100 (100+ in 1960-1970)"', add
label define age_lbl 101 `"101"', add
label define age_lbl 102 `"102"', add
label define age_lbl 103 `"103"', add
label define age_lbl 104 `"104"', add
label define age_lbl 105 `"105"', add
label define age_lbl 106 `"106"', add
label define age_lbl 107 `"107"', add
label define age_lbl 108 `"108"', add
label define age_lbl 109 `"109"', add
label define age_lbl 110 `"110"', add
label define age_lbl 111 `"111"', add
label define age_lbl 112 `"112 (112+ in the 1980 internal data)"', add
label define age_lbl 113 `"113"', add
label define age_lbl 114 `"114"', add
label define age_lbl 115 `"115 (115+ in the 1990 internal data)"', add
label define age_lbl 116 `"116"', add
label define age_lbl 117 `"117"', add
label define age_lbl 118 `"118"', add
label define age_lbl 119 `"119"', add
label define age_lbl 120 `"120"', add
label define age_lbl 121 `"121"', add
label define age_lbl 122 `"122"', add
label define age_lbl 123 `"123"', add
label define age_lbl 124 `"124"', add
label define age_lbl 125 `"125"', add
label define age_lbl 126 `"126"', add
label define age_lbl 129 `"129"', add
label define age_lbl 130 `"130"', add
label define age_lbl 135 `"135"', add
label values age age_lbl

label define racwht_lbl 1 `"No"'
label define racwht_lbl 2 `"Yes"', add
label values racwht racwht_lbl

label define educ_lbl 00 `"N/A or no schooling"'
label define educ_lbl 01 `"Nursery school to grade 4"', add
label define educ_lbl 02 `"Grade 5, 6, 7, or 8"', add
label define educ_lbl 03 `"Grade 9"', add
label define educ_lbl 04 `"Grade 10"', add
label define educ_lbl 05 `"Grade 11"', add
label define educ_lbl 06 `"Grade 12"', add
label define educ_lbl 07 `"1 year of college"', add
label define educ_lbl 08 `"2 years of college"', add
label define educ_lbl 09 `"3 years of college"', add
label define educ_lbl 10 `"4 years of college"', add
label define educ_lbl 11 `"5+ years of college"', add
label values educ educ_lbl

label define educd_lbl 000 `"N/A or no schooling"'
label define educd_lbl 001 `"N/A"', add
label define educd_lbl 002 `"No schooling completed"', add
label define educd_lbl 010 `"Nursery school to grade 4"', add
label define educd_lbl 011 `"Nursery school, preschool"', add
label define educd_lbl 012 `"Kindergarten"', add
label define educd_lbl 013 `"Grade 1, 2, 3, or 4"', add
label define educd_lbl 014 `"Grade 1"', add
label define educd_lbl 015 `"Grade 2"', add
label define educd_lbl 016 `"Grade 3"', add
label define educd_lbl 017 `"Grade 4"', add
label define educd_lbl 020 `"Grade 5, 6, 7, or 8"', add
label define educd_lbl 021 `"Grade 5 or 6"', add
label define educd_lbl 022 `"Grade 5"', add
label define educd_lbl 023 `"Grade 6"', add
label define educd_lbl 024 `"Grade 7 or 8"', add
label define educd_lbl 025 `"Grade 7"', add
label define educd_lbl 026 `"Grade 8"', add
label define educd_lbl 030 `"Grade 9"', add
label define educd_lbl 040 `"Grade 10"', add
label define educd_lbl 050 `"Grade 11"', add
label define educd_lbl 060 `"Grade 12"', add
label define educd_lbl 061 `"12th grade, no diploma"', add
label define educd_lbl 062 `"High school graduate or GED"', add
label define educd_lbl 063 `"Regular high school diploma"', add
label define educd_lbl 064 `"GED or alternative credential"', add
label define educd_lbl 065 `"Some college, but less than 1 year"', add
label define educd_lbl 070 `"1 year of college"', add
label define educd_lbl 071 `"1 or more years of college credit, no degree"', add
label define educd_lbl 080 `"2 years of college"', add
label define educd_lbl 081 `"Associate's degree, type not specified"', add
label define educd_lbl 082 `"Associate's degree, occupational program"', add
label define educd_lbl 083 `"Associate's degree, academic program"', add
label define educd_lbl 090 `"3 years of college"', add
label define educd_lbl 100 `"4 years of college"', add
label define educd_lbl 101 `"Bachelor's degree"', add
label define educd_lbl 110 `"5+ years of college"', add
label define educd_lbl 111 `"6 years of college (6+ in 1960-1970)"', add
label define educd_lbl 112 `"7 years of college"', add
label define educd_lbl 113 `"8+ years of college"', add
label define educd_lbl 114 `"Master's degree"', add
label define educd_lbl 115 `"Professional degree beyond a bachelor's degree"', add
label define educd_lbl 116 `"Doctoral degree"', add
label define educd_lbl 999 `"Missing"', add
label values educd educd_lbl

label define incearn_lbl 0000000 `"0000000"'
label values incearn incearn_lbl

/* Restrict observations to white males of working age */

keep if racwht==2
keep if sex ==1
drop if age < 18
drop if age > 69
drop if year < 2006
drop if year > 2010

/* Replace less than High School graduation education levels = for all education levels < 6 */

replace educ = (educ-5)
replace educ = 0 if educ < 0

/* Generate a variable corresponding to amount of work experience equal to age less childhood and education */


gen wrkexp = (age - (17+educ))
replace wrkexp = (wrkexp+1) if educ==0

/* Relabel educ to reflect changes above */

label define educ_lbl 00 `"N/A or no schooling"', modify
label define educ_lbl 01 `"HS Graduate"', modify
label define educ_lbl 02 `"1 year of college"', modify
label define educ_lbl 03 `"2 years of college"', modify
label define educ_lbl 04 `"3 years of college"', modify
label define educ_lbl 05 `"4 years of college"', modify
label define educ_lbl 06 `"5+ years of college"', modify

/* Generate log of income, mean log of income, and mean by wrkexp and educ groups */ 

foreach X in inctot incwage incearn {
gen log_`X' = log(`X')
egen meaned_`X' = mean(log_`X')
bys educ age: egen agemeaned_`X' = mean(log_`X')
bys educ wrkexp: egen wrkexpmeaned_`X' = mean(log_`X')
}

/* Generate variables measuring variance of earnings by wrkexp level */

by wrkexp: egen abc = sd(log_incearn)
by wrkexp: gen var_log_incearn = abc^2
drop abc


/* Generate graphs and save */

twoway (connected agemeaned_incearn age if educ ==1, msize(vtiny)) (connected agemeaned_incearn age if educ ==0, msize(vtiny)) (connected agemeaned_incearn age if educ ==2, msize(vtiny) msymbol(square)) (connected agemeaned_incearn age if educ ==3, msize(vtiny) msymbol(plus)) (connected agemeaned_incearn age if educ ==4, msize(vtiny) msymbol(smdiamond)) (connected agemeaned_incearn age if educ ==5, msize(tiny) msymbol(triangle)) (connected agemeaned_incearn age if educ ==6, msize(vtiny) msymbol(diamond)), ytitle(mean log earned income) ylabel(#10) xtitle(age) xlabel(#10) legend(order(1 "High School Drop Out" 2 "High School Graduate" 3 "1 year of college" 4 "2 years of college" 5 "3 years of college" 6 "4 years of college" 7 "5+ years of college"))
graph save Graph_incearn_age "/Users/cocorbin/Desktop/computing/incearnage.png"

twoway (connected  wrkexpmeaned_incearn  wrkexp if educ ==1, msize(vtiny)) (connected  wrkexpmeaned_incearn  wrkexp if educ ==0, msize(vtiny)) (connected  wrkexpmeaned_incearn  wrkexp if educ ==2, msize(vtiny) msymbol(square)) (connected  wrkexpmeaned_incearn  wrkexp if educ ==3, msize(vtiny) msymbol(plus)) (connected  wrkexpmeaned_incearn  wrkexp if educ ==4, msize(vtiny) msymbol(smdiamond)) (connected  wrkexpmeaned_incearn  wrkexp if educ ==5, msize(tiny) msymbol(triangle)) (connected  wrkexpmeaned_incearn  wrkexp if educ ==6, msize(vtiny) msymbol(diamond)), ytitle(mean log earned income) ylabel(#10) xtitle( wrkexp) xlabel(#10) legend(order(1 "High School Drop Out" 2 "High School Graduate" 3 "1 year of college" 4 "2 years of college" 5 "3 years of college" 6 "4 years of college" 7 "5+ years of college"))
graph save Graph_wrkexp_incearn "/Users/cocorbin/Downloads/incearnwrkexp.png"

twoway (connected var_log_incearn wrkexp, sort), ytitle(variance in earnings across wrkexp) ylabel(#10) xtitle(wrkexp) xlabel(#10)
graph save Graph_variance_wrkexp "/Users/cocorbin/Downloads/variancewrkexp.png"

twoway (connected agemeaned_incwage age if educ ==1, msize(vtiny)) (connected agemeaned_incwage age if educ ==0, msize(vtiny)) (connected agemeaned_incwage age if educ ==2, msize(vtiny) msymbol(square)) (connected agemeaned_incwage age if educ ==3, msize(vtiny) msymbol(plus)) (connected agemeaned_incwage age if educ ==4, msize(vtiny) msymbol(smdiamond)) (connected agemeaned_incwage age if educ ==5, msize(tiny) msymbol(triangle)) (connected agemeaned_incwage age if educ ==6, msize(vtiny) msymbol(diamond)), ytitle(mean log wage income) ylabel(#10) xtitle(age) xlabel(#10) legend(order(1 "High School Drop Out" 2 "High School Graduate" 3 "1 year of college" 4 "2 years of college" 5 "3 years of college" 6 "4 years of college" 7 "5+ years of college"))
graph save Graph_incwage_age "/Users/cocorbin/Desktop/computing/incwageage.png"

twoway (connected wrkexpmeaned_incwage wrkexp if educ ==1, msize(vtiny)) (connected wrkexpmeaned_incwage wrkexp if educ ==0, msize(vtiny)) (connected wrkexpmeaned_incwage wrkexp if educ ==2, msize(vtiny) msymbol(square)) (connected wrkexpmeaned_incwage wrkexp if educ ==3, msize(vtiny) msymbol(plus)) (connected wrkexpmeaned_incwage wrkexp if educ ==4, msize(vtiny) msymbol(smdiamond)) (connected wrkexpmeaned_incwage wrkexp if educ ==5, msize(tiny) msymbol(triangle)) (connected wrkexpmeaned_incwage wrkexp if educ ==6, msize(vtiny) msymbol(diamond)), ytitle(mean log wage income) ylabel(#10) xtitle( wrkexp) xlabel(#10) legend(order(1 "High School Drop Out" 2 "High School Graduate" 3 "1 year of college" 4 "2 years of college" 5 "3 years of college" 6 "4 years of college" 7 "5+ years of college"))
graph save Graph_wrkexp_incwage "/Users/cocorbin/Downloads/incwagewrkexp.png"




