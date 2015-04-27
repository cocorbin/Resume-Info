clear all

cd "~"

/////** INSTALL NECESSARY PACKAGES **/////

net from http://www.mtm.uoi.gr
net install sbe23_1, from(http://www.stata-journal.com/software/sj8-4) replace
net install mvmeta, from(http://www.mrc-bsu.cam.ac.uk/IW_Stata/meta) replace
net install network_graphs, from (http://www.mtm.uoi.gr) replace
net install tab_chi, from (http://www.stata.com/users/njc) replace
ssc install markov

/////** FIRST USING STRONG TIE DATA FOR GENTRIFICATION PERIOD 0 **/////

clear
log using "~/net_analysislog1.smcl"
import excel "~/StrongTies_P0.xlsx", sheet("Sheet1") firstrow
gen id = _n 
encode ID, generate(name) 
drop ID 
sort Clique

/////** GENERATE MEAN PROBABILITIES OF INTERACTION **/////

#delimit ;
drop if Luke ==0 & MrsBowden ==0 & MrGreene ==0 & Roseanne ==0 & 
Louise ==0 & Jay ==0 & Slim ==0 & Gabriel ==0 & Theresa ==0 & Ororo ==0 & Abe ==0 
& Sammy ==0 & Russ ==0 & Jimmy ==0 & Carl ==0 & Miles ==0 & Dwayne ==0 & 
Gunny ==0 & Moses ==0 & Frost ==0 & Jules ==0 & Remy ==0 & Kurt ==0 & 
Gibbons ==0 & Jordan ==0 & Stella ==0 & Joe ==0 & Junior ==0 & Rhodey ==0 & 
Jericho ==0 & Micheal ==0 & Bishop ==0 & Mack ==0 & Jess ==0 & Valerie ==0 & 
Raza ==0 ;
egen interactions = rowtotal(Luke MrsBowden MrGreene Roseanne Louise Jay Slim 
Gabriel Theresa Ororo Abe Sammy Russ Jimmy Carl Miles Dwayne Gunny Moses Frost 
Jules Remy Kurt Gibbons Jordan Stella Joe Junior Rhodey Jericho Micheal Bishop 
Mack Jess Valerie Raza) ;
tabstat interactions, by(name) ;
tabstat Luke MrsBowden MrGreene Roseanne Louise Jay Slim Gabriel 
Theresa Ororo Abe Sammy Russ Jimmy Carl Miles Dwayne Gunny Moses Frost Jules 
Remy Kurt Gibbons Jordan Stella Joe Junior Rhodey Jericho Micheal Bishop Mack 
Jess Valerie Raza, by(name) ;

#delimit cr


/////** GENERATE MIXING AND INTERACTION FREQUENCIES & PROBABILITIES **/////

xtset name Clique
xttab Clique
xttab name
markov Clique

log close
translate "~/net_analysislog1.smcl" "~/net_analysislog1.txt"

/////** FIRST USING STRONG TIE DATA FOR GENTRIFICATION PERIOD 1 **/////

clear all

log using "~/net_analysislog2.smcl"

import excel "~/StrongTies_P0.xlsx", sheet("Sheet1") firstrow
gen id = _n 
encode ID, generate(name) 
drop ID 
sort Clique

/////** GENERATE MEAN PROBABILITIES OF INTERACTION **/////

#delimit ;
drop if Luke ==0 & MrsBowden ==0 & MrGreene ==0 & Roseanne ==0 & 
Louise ==0 & Jay ==0 & Slim ==0 & Gabriel ==0 & Theresa ==0 & Ororo ==0 & 
Abe ==0 & Sammy ==0 & Russ ==0 & Jimmy ==0 & Carl ==0 & Miles ==0 & Dwayne ==0 & 
Gunny ==0 & Moses ==0 & Frost ==0 & Jules ==0 & Remy ==0 & Kurt ==0 & 
Gibbons ==0 & Jordan ==0 & Stella ==0 & Joe ==0 & Junior ==0 & Rhodey ==0 & 
Jericho ==0 & Micheal ==0 & Bishop ==0 & Mack ==0 & Jess ==0 & Valerie ==0 & 
Raza ==0 ;
egen interactions = rowtotal(Luke MrsBowden MrGreene Roseanne Louise Jay Slim 
Gabriel Theresa Ororo Abe Sammy Russ Jimmy Carl Miles Dwayne Gunny Moses Frost 
Jules Remy Kurt Gibbons Jordan Stella Joe Junior Rhodey Jericho Micheal Bishop 
Mack Jess Valerie Raza) ;
tabstat interactions, by(name) ;
tabstat Luke MrsBowden MrGreene Roseanne Louise Jay Slim Gabriel 
Theresa Ororo Abe Sammy Russ Jimmy Carl Miles Dwayne Gunny Moses Frost Jules 
Remy Kurt Gibbons Jordan Stella Joe Junior Rhodey Jericho Micheal Bishop Mack 
Jess Valerie Raza, by(name) ;

#delimit cr


/////** GENERATE MIXING AND INTERACTION FREQUENCIES & PROBABILITIES **/////

xtset name Clique
xttab Clique
xttab name
markov Clique

log close
translate "~/net_analysislog2.smcl" "~/net_analysislog2.txt"

/////** FIRST USING STRONG TIE DATA FOR GENTRIFICATION PERIOD 2 **/////

clear all

log using "~/net_analysislog3.smcl"

import excel "~/StrongTies_P0.xlsx", sheet("Sheet1") firstrow
gen id = _n 
encode ID, generate(name) 
drop ID 
sort Clique

/////** GENERATE MEAN PROBABILITIES OF INTERACTION **/////

#delimit ;
drop if Luke ==0 & MrsBowden ==0 & MrGreene ==0 & Roseanne ==0 & 
Louise ==0 & Jay ==0 & Slim ==0 & Gabriel ==0 & Theresa ==0 & Ororo ==0 & Abe ==0 
& Sammy ==0 & Russ ==0 & Jimmy ==0 & Carl ==0 & Miles ==0 & Dwayne ==0 & 
Gunny ==0 & Moses ==0 & Frost ==0 & Jules ==0 & Remy ==0 & Kurt ==0 & 
Gibbons ==0 & Jordan ==0 & Stella ==0 & Joe ==0 & Junior ==0 & Rhodey ==0 & 
Jericho ==0 & Micheal ==0 & Bishop ==0 & Mack ==0 & Jess ==0 & Valerie ==0 & 
Raza ==0 ;
egen interactions = rowtotal(Luke MrsBowden MrGreene Roseanne Louise Jay Slim 
Gabriel Theresa Ororo Abe Sammy Russ Jimmy Carl Miles Dwayne Gunny Moses Frost 
Jules Remy Kurt Gibbons Jordan Stella Joe Junior Rhodey Jericho Micheal Bishop 
Mack Jess Valerie Raza) ;
tabstat interactions, by(name) ;
tabstat Luke MrsBowden MrGreene Roseanne Louise Jay Slim Gabriel 
Theresa Ororo Abe Sammy Russ Jimmy Carl Miles Dwayne Gunny Moses Frost Jules 
Remy Kurt Gibbons Jordan Stella Joe Junior Rhodey Jericho Micheal Bishop Mack 
Jess Valerie Raza, by(name) ;

#delimit cr



/////** GENERATE MIXING AND INTERACTION FREQUENCIES & PROBABILITIES **/////
 
xtset name Clique
xttab Clique
xttab name
markov Clique

log close
translate "~/net_analysislog3.smcl" "~/net_analysislog3.txt"

/////** NOW USING WEAK TIE DATA FOR GENTRIFICATION PERIOD 0 **/////

clear
log using "~/net_analysislog4.smcl"
import excel "~/WeakTies_P0.xlsx", sheet("Sheet1") firstrow
gen id = _n 
encode ID, generate(name) 
drop ID 
sort Clique

/////** GENERATE MEAN PROBABILITIES OF INTERACTION **/////

#delimit ;
drop if Luke ==0 & MrsBowden ==0 & MrGreene ==0 & Roseanne ==0 & 
Louise ==0 & Jay ==0 & Slim ==0 & Gabriel ==0 & Theresa ==0 & Ororo ==0 & Abe ==0 
& Sammy ==0 & Russ ==0 & Jimmy ==0 & Carl ==0 & Miles ==0 & Dwayne ==0 & 
Gunny ==0 & Moses ==0 & Frost ==0 & Jules ==0 & Remy ==0 & Kurt ==0 & 
Gibbons ==0 & Jordan ==0 & Stella ==0 & Joe ==0 & Junior ==0 & Rhodey ==0 & 
Jericho ==0 & Micheal ==0 & Bishop ==0 & Mack ==0 & Jess ==0 & Valerie ==0 & 
Raza ==0 ;
egen interactions = rowtotal(Luke MrsBowden MrGreene Roseanne Louise Jay Slim 
Gabriel Theresa Ororo Abe Sammy Russ Jimmy Carl Miles Dwayne Gunny Moses Frost 
Jules Remy Kurt Gibbons Jordan Stella Joe Junior Rhodey Jericho Micheal Bishop 
Mack Jess Valerie Raza) ;
tabstat interactions, by(name) ;
tabstat Luke MrsBowden MrGreene Roseanne Louise Jay Slim Gabriel 
Theresa Ororo Abe Sammy Russ Jimmy Carl Miles Dwayne Gunny Moses Frost Jules 
Remy Kurt Gibbons Jordan Stella Joe Junior Rhodey Jericho Micheal Bishop Mack 
Jess Valerie Raza, by(name) ;

#delimit cr


/////** GENERATE MIXING AND INTERACTION FREQUENCIES & PROBABILITIES **/////

xtset name Clique
xttab Clique
xttab name
markov Clique

log close
translate "~/net_analysislog4.smcl" "~/net_analysislog4.txt"

/////**  USING WEAK TIE DATA FOR GENTRIFICATION PERIOD 1 **/////

clear all

log using "~/net_analysislog5.smcl"

import excel "~/WeakTies_P0.xlsx", sheet("Sheet1") firstrow
gen id = _n 
encode ID, generate(name) 
drop ID 
sort Clique

/////** GENERATE MEAN PROBABILITIES OF INTERACTION **/////

#delimit ;
drop if Luke ==0 & MrsBowden ==0 & MrGreene ==0 & Roseanne ==0 & 
Louise ==0 & Jay ==0 & Slim ==0 & Gabriel ==0 & Theresa ==0 & Ororo ==0 & 
Abe ==0 & Sammy ==0 & Russ ==0 & Jimmy ==0 & Carl ==0 & Miles ==0 & Dwayne ==0 & 
Gunny ==0 & Moses ==0 & Frost ==0 & Jules ==0 & Remy ==0 & Kurt ==0 & 
Gibbons ==0 & Jordan ==0 & Stella ==0 & Joe ==0 & Junior ==0 & Rhodey ==0 & 
Jericho ==0 & Micheal ==0 & Bishop ==0 & Mack ==0 & Jess ==0 & Valerie ==0 & 
Raza ==0 ;
egen interactions = rowtotal(Luke MrsBowden MrGreene Roseanne Louise Jay Slim 
Gabriel Theresa Ororo Abe Sammy Russ Jimmy Carl Miles Dwayne Gunny Moses Frost 
Jules Remy Kurt Gibbons Jordan Stella Joe Junior Rhodey Jericho Micheal Bishop 
Mack Jess Valerie Raza) ;
tabstat interactions, by(name) ;
tabstat Luke MrsBowden MrGreene Roseanne Louise Jay Slim Gabriel 
Theresa Ororo Abe Sammy Russ Jimmy Carl Miles Dwayne Gunny Moses Frost Jules 
Remy Kurt Gibbons Jordan Stella Joe Junior Rhodey Jericho Micheal Bishop Mack 
Jess Valerie Raza, by(name) ;

#delimit cr


/////** GENERATE MIXING AND INTERACTION FREQUENCIES & PROBABILITIES **/////

xtset name Clique
xttab Clique
xttab name
markov Clique

log close
translate "~/net_analysislog5.smcl" "~/net_analysislog5.txt"

/////**  USING WEAK TIE DATA FOR GENTRIFICATION PERIOD 2 **/////

clear all

log using "~/net_analysislog6.smcl"

import excel "~/WeakTies_P0.xlsx", sheet("Sheet1") firstrow
gen id = _n 
encode ID, generate(name) 
drop ID 
sort Clique

/////** GENERATE MEAN PROBABILITIES OF INTERACTION **/////

#delimit ;
drop if Luke ==0 & MrsBowden ==0 & MrGreene ==0 & Roseanne ==0 & 
Louise ==0 & Jay ==0 & Slim ==0 & Gabriel ==0 & Theresa ==0 & Ororo ==0 & Abe ==0 
& Sammy ==0 & Russ ==0 & Jimmy ==0 & Carl ==0 & Miles ==0 & Dwayne ==0 & 
Gunny ==0 & Moses ==0 & Frost ==0 & Jules ==0 & Remy ==0 & Kurt ==0 & 
Gibbons ==0 & Jordan ==0 & Stella ==0 & Joe ==0 & Junior ==0 & Rhodey ==0 & 
Jericho ==0 & Micheal ==0 & Bishop ==0 & Mack ==0 & Jess ==0 & Valerie ==0 & 
Raza ==0 ;
egen interactions = rowtotal(Luke MrsBowden MrGreene Roseanne Louise Jay Slim 
Gabriel Theresa Ororo Abe Sammy Russ Jimmy Carl Miles Dwayne Gunny Moses Frost 
Jules Remy Kurt Gibbons Jordan Stella Joe Junior Rhodey Jericho Micheal Bishop 
Mack Jess Valerie Raza) ;
tabstat interactions, by(name) ;
tabstat Luke MrsBowden MrGreene Roseanne Louise Jay Slim Gabriel 
Theresa Ororo Abe Sammy Russ Jimmy Carl Miles Dwayne Gunny Moses Frost Jules 
Remy Kurt Gibbons Jordan Stella Joe Junior Rhodey Jericho Micheal Bishop Mack 
Jess Valerie Raza, by(name) ;

#delimit cr


/////** GENERATE MIXING AND INTERACTION FREQUENCIES & PROBABILITIES **/////
 
xtset name Clique
xttab Clique
xttab name
markov Clique

log close
translate "~/net_analysislog6.smcl" "~/net_analysislog6.txt"

/////**  USING NEGATIVE TIE DATA FOR GENTRIFICATION PERIOD 1 **/////

clear all

log using "~/net_analysislog7.smcl"

import excel "~/NegTies_P1.xlsx", sheet("Sheet1") firstrow
gen id = _n 
encode ID, generate(name) 
drop ID 
sort Clique

/////** GENERATE MEAN PROBABILITIES OF INTERACTION **/////

#delimit ;
drop if Luke ==0 & MrsBowden ==0 & MrGreene ==0 & Roseanne ==0 & 
Louise ==0 & Jay ==0 & Slim ==0 & Gabriel ==0 & Theresa ==0 & Ororo ==0 & 
Abe ==0 & Sammy ==0 & Russ ==0 & Jimmy ==0 & Carl ==0 & Miles ==0 & Dwayne ==0 & 
Gunny ==0 & Moses ==0 & Frost ==0 & Jules ==0 & Remy ==0 & Kurt ==0 & 
Gibbons ==0 & Jordan ==0 & Stella ==0 & Joe ==0 & Junior ==0 & Rhodey ==0 & 
Jericho ==0 & Micheal ==0 & Bishop ==0 & Mack ==0 & Jess ==0 & Valerie ==0 & 
Raza ==0 ;
egen interactions = rowtotal(Luke MrsBowden MrGreene Roseanne Louise Jay Slim 
Gabriel Theresa Ororo Abe Sammy Russ Jimmy Carl Miles Dwayne Gunny Moses Frost 
Jules Remy Kurt Gibbons Jordan Stella Joe Junior Rhodey Jericho Micheal Bishop 
Mack Jess Valerie Raza) ;
tabstat interactions, by(name) ;
tabstat Luke MrsBowden MrGreene Roseanne Louise Jay Slim Gabriel 
Theresa Ororo Abe Sammy Russ Jimmy Carl Miles Dwayne Gunny Moses Frost Jules 
Remy Kurt Gibbons Jordan Stella Joe Junior Rhodey Jericho Micheal Bishop Mack 
Jess Valerie Raza, by(name) ;

#delimit cr


/////** GENERATE MIXING AND INTERACTION FREQUENCIES & PROBABILITIES **/////

xtset name Clique
xttab Clique
xttab name
markov Clique

log close
translate "~/net_analysislog7.smcl" "~/net_analysislog7.txt"

/////**  USING WEAK TIE DATA FOR GENTRIFICATION PERIOD 2 **/////

clear all

log using "~/net_analysislog8.smcl"

import excel "~/NegTies_P2.xlsx", sheet("Sheet1") firstrow
gen id = _n 
encode ID, generate(name) 
drop ID 
sort Clique

/////** GENERATE MEAN PROBABILITIES OF INTERACTION **/////

#delimit ;
drop if Luke ==0 & MrsBowden ==0 & MrGreene ==0 & Roseanne ==0 & 
Louise ==0 & Jay ==0 & Slim ==0 & Gabriel ==0 & Theresa ==0 & Ororo ==0 & Abe ==0 
& Sammy ==0 & Russ ==0 & Jimmy ==0 & Carl ==0 & Miles ==0 & Dwayne ==0 & 
Gunny ==0 & Moses ==0 & Frost ==0 & Jules ==0 & Remy ==0 & Kurt ==0 & 
Gibbons ==0 & Jordan ==0 & Stella ==0 & Joe ==0 & Junior ==0 & Rhodey ==0 & 
Jericho ==0 & Micheal ==0 & Bishop ==0 & Mack ==0 & Jess ==0 & Valerie ==0 & 
Raza ==0 ;
egen interactions = rowtotal(Luke MrsBowden MrGreene Roseanne Louise Jay Slim 
Gabriel Theresa Ororo Abe Sammy Russ Jimmy Carl Miles Dwayne Gunny Moses Frost 
Jules Remy Kurt Gibbons Jordan Stella Joe Junior Rhodey Jericho Micheal Bishop 
Mack Jess Valerie Raza) ;
tabstat interactions, by(name) ;
tabstat Luke MrsBowden MrGreene Roseanne Louise Jay Slim Gabriel 
Theresa Ororo Abe Sammy Russ Jimmy Carl Miles Dwayne Gunny Moses Frost Jules 
Remy Kurt Gibbons Jordan Stella Joe Junior Rhodey Jericho Micheal Bishop Mack 
Jess Valerie Raza, by(name) ;

#delimit cr


/////** GENERATE MIXING AND INTERACTION FREQUENCIES & PROBABILITIES **/////
 
xtset name Clique
xttab Clique
xttab name
markov Clique

log close



