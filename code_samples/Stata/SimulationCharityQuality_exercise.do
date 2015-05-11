clear all
set obs 100000
gen id = _n

///*** x corresponds to charity quality ***///

gen x = rbinomial(2,.333)
gen r = rbinomial(1,.301)

gen treatment = rbinomial(2,.333)

gen h = .
replace h = rbinomial(1,.375) if x ==0 & treat ==0
replace h = rbinomial(1,.35) if x ==0 & treat ==1
replace h = rbinomial(1,.315) if x ==0 & treat ==2
replace h = rbinomial(1,.39) if x ==1 & treat ==0
replace h = rbinomial(1,.36) if x ==1 & treat ==1
replace h = rbinomial(1,.33) if x ==1 & treat ==2
replace h = rbinomial(1,.42) if x ==2 & treat ==0
replace h = rbinomial(1,.4) if x ==2 & treat ==1
replace h = rbinomial(1,.38) if x ==2 & treat ==2

gen g = .
replace g = rbinomial(1,.0375) if x ==0 & treat ==0 & h ==1
replace g = rbinomial(1,.03) if x ==0 & treat ==1 & h ==1
replace g = rbinomial(1,.0275) if x ==0 & treat ==2 & h ==1
replace g = rbinomial(1,.06) if x ==1 & treat ==0 & h ==1
replace g = rbinomial(1,.05) if x ==1 & treat ==1 & h ==1
replace g = rbinomial(1,.04) if x ==1 & treat ==2 & h ==1
replace g = rbinomial(1,.075) if x ==2 & treat ==0 & h ==1
replace g = rbinomial(1,.07) if x ==2 & treat ==1 & h ==1
replace g = rbinomial(1,.08) if x ==2 & treat ==2 & h ==1


gen W = rnormal(100000, 10000)

///*** Dummy Variables Corresponding to size of donation ***///

gen donated_less10 = .
replace donated_less10 = rbinomial(1,.02) if x ==0 & treat ==0 & g ==1
replace donated_less10 = rbinomial(1,.01) if x ==0 & treat ==1 & g ==1
replace donated_less10 = rbinomial(1,.015) if x ==0 & treat ==2 & g ==1
replace donated_less10 = rbinomial(1,.0225) if x ==1 & treat ==0 & g ==1
replace donated_less10 = rbinomial(1,.0125) if x ==1 & treat ==1 & g ==1
replace donated_less10 = rbinomial(1,.0175) if x ==1 & treat ==2 & g ==1
replace donated_less10 = rbinomial(1,.025) if x ==2 & treat ==0 & g ==1
replace donated_less10 = rbinomial(1,.015) if x ==2 & treat ==1 & g ==1
replace donated_less10 = rbinomial(1,.02) if x ==2 & treat ==2 & g ==1

gen donated_10 = .
replace donated_10 = rbinomial(1,.003) if x ==0 & treat ==0 & g ==1
replace donated_10 = rbinomial(1,.001) if x ==0 & treat ==1 & g ==1
replace donated_10 = rbinomial(1,.002) if x ==0 & treat ==2 & g ==1
replace donated_10 = rbinomial(1,.01) if x ==1 & treat ==0 & g ==1
replace donated_10 = rbinomial(1,.006) if x ==1 & treat ==1 & g ==1
replace donated_10 = rbinomial(1,.008) if x ==1 & treat ==2 & g ==1
replace donated_10 = rbinomial(1,.02) if x ==2 & treat ==0 & g ==1
replace donated_10 = rbinomial(1,.015) if x ==2 & treat ==1 & g ==1
replace donated_10 = rbinomial(1,.0175) if x ==2 & treat ==2 & g ==1

gen donated_20 = .
replace donated_20 = rbinomial(1,.004) if x ==0 & treat ==0 & g ==1
replace donated_20 = rbinomial(1,.002) if x ==0 & treat ==1 & g ==1
replace donated_20 = rbinomial(1,.003) if x ==0 & treat ==2 & g ==1
replace donated_20 = rbinomial(1,.005) if x ==1 & treat ==0 & g ==1
replace donated_20 = rbinomial(1,.0025) if x ==1 & treat ==1 & g ==1
replace donated_20 = rbinomial(1,.0035) if x ==1 & treat ==2 & g ==1
replace donated_20 = rbinomial(1,.022) if x ==2 & treat ==0 & g ==1
replace donated_20 = rbinomial(1,.018) if x ==2 & treat ==1 & g ==1
replace donated_20 = rbinomial(1,.02) if x ==2 & treat ==2 & g ==1

gen donated_50 = .
replace donated_50 = rbinomial(1,.004) if x ==0 & treat ==0 & g ==1
replace donated_50 = rbinomial(1,.002) if x ==0 & treat ==1 & g ==1
replace donated_50 = rbinomial(1,.003) if x ==0 & treat ==2 & g ==1
replace donated_50 = rbinomial(1,.012) if x ==1 & treat ==0 & g ==1
replace donated_50 = rbinomial(1,.00075) if x ==1 & treat ==1 & g ==1
replace donated_50 = rbinomial(1,.005) if x ==1 & treat ==2 & g ==1
replace donated_50 = rbinomial(1,.0125) if x ==2 & treat ==0 & g ==1
replace donated_50 = rbinomial(1,.015) if x ==2 & treat ==1 & g ==1
replace donated_50 = rbinomial(1,.01) if x ==2 & treat ==2 & g ==1

gen donated_100 = .
replace donated_100 = rbinomial(1,.0004) if x ==0 & treat ==0 & g ==1
replace donated_100 = rbinomial(1,.0002) if x ==0 & treat ==1 & g ==1
replace donated_100 = rbinomial(1,.0003) if x ==0 & treat ==2 & g ==1
replace donated_100 = rbinomial(1,.0012) if x ==1 & treat ==0 & g ==1
replace donated_100 = rbinomial(1,.0009) if x ==1 & treat ==1 & g ==1
replace donated_100 = rbinomial(1,.0005) if x ==1 & treat ==2 & g ==1
replace donated_100 = rbinomial(1,.002) if x ==2 & treat ==0 & g ==1
replace donated_100 = rbinomial(1,.0035) if x ==2 & treat ==1 & g ==1
replace donated_100 = rbinomial(1,.001) if x ==2 & treat ==2 & g ==1

gen donated = .
replace donated = 0 if g ==0
replace donated = (1+int((10-1))*runiform()) if donated_less10 ==1
replace donated = 10 if donated_10 ==1
replace donated = (11+int((20-10))*runiform()) if donated_20 ==1
replace donated = (21+int((50-21))*runiform()) if donated_50 ==1
replace donated = (51+int((1000-51))*runiform()) if donated_50 ==1
replace donated = (-1 * donated)

drop donated_less10 donated_10 donated_20 donated_50 donated_100

///*** Quality indexed altruism score ***///

gen alpha = .
replace alpha = rnormal(9,5) if x ==0
replace alpha = rnormal(12,4.5) if x ==1
replace alpha = rnormal(15,4) if x ==2

///*** Quality indexed social cost  ***///

gen social_cost = .
replace social_cost = rnormal(1.5,.8) if x ==0
replace social_cost = rnormal(2,.7) if x ==1
replace social_cost = rnormal(4,.5) if x ==2
replace social_cost = (social_cost * donated) if g ==1

///*** generate Y variable corresponding to total utility in log scale ***///

gen Y = .
replace Y = ((W - donated) + (alpha * donated) - social_cost) 
gen y = log(Y)


bys W: egen mean_y = mean(y)

///*** Generate and save graphs, plots, & distributions ***///

#delimit ; 
twoway (scatter y W if g ==1, sort msize(vtiny)) 
(lfit y W if g ==1) (scatter mean_y W if g ==0, sort msize(vtiny)) 
(lfit y W if g ==0) ;

graph export "~/utilitytowages.png" ;

histogram y, normal kdensity by(g, total style(combine)) ;
graph export "~/histogram.png" ;

histogram y, normal kdensity by(x, total style(combine)) ;
graph export "~/histogram2.png" ;


twoway (scatter y donated, sort msize(vtiny)) 
(lfit y donated) ;
graph export "~/scatter3.png" ;

twoway (scatter y donated if g ==1, by(x) sort msize(vtiny)) 
(lfit y donated if g ==1) ;
graph export "~/scatter1.png" ;

twoway (scatter y donated if g ==1, by(treatment) sort msize(vtiny)) 
(lfit y donated if g ==1), by(treatment x) ;
graph export "~/scatter2.png" ;

///*** create log composed of tables of summary statistics and ATE ***/// 
 
log using "~/part2.log" ;
tabstat y mean_y W donated social_cost h g, 
by(treatment) labelwidth(24) c(stats) stat(n mean sd min max q) ;
tabstat y mean_y W donated social_cost h g, 
by(x) c(stats) labelwidth(24) stat(n mean sd min max q) ;
#delimit cr

teffects ipw (g) (x)

bys treatment: teffects ipw (g) (x)

bys treatment: teffects ipw (donated) (x)

log close

