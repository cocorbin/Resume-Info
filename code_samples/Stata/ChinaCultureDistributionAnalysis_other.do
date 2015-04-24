clear all

set matsize 10000

set maxvar 2500

use "~/chinamerged.dta"

quietly destring, replace

log using "~/chinalog3.smcl"
 
# delimit ;

note: Total Employed by Education, Culture, Art, Radio, Film, or TV ;

tabstat l102040 l102041 l102042, s(mean min max p5 p10 p25 p50 p75 p90 p95) 
save ;

putexcel A2=matrix(r(StatTotal), names) using culturedistributionanalysis.xlsx,
sheet("Educ Cult Art Film") ;
putexcel B2=("Total Pop") C2=("Male Pop") D2=("Female Pop") using culturedistributionanalysis.xlsx,
sheet("Educ Cult Art Film") modify ;

clear results ;

tabstat l102040 l102041 l102042, s(sd v sk k cv) save;

putexcel A14=matrix(r(StatTotal), rownames) using culturedistributionanalysis.xlsx,
sheet("Educ Cult Art Film") modify ;
putexcel B13=("-----") C13=("-----") D13=("-----") using culturedistributionanalysis.xlsx,
sheet("Educ Cult Art Film") modify ;

clear results ;


note: Total employed in Movie and Television Production ;

tabstat l401286 l401287 l401288, s(mean min max p5 p10 p25 p50 p75 p90 p95) save ;

putexcel A2=matrix(r(StatTotal), names) using culturedistributionanalysis.xlsx, 
sheet("Movie and Television Production") modify;
putexcel B2=("Total Pop") C2=("Male Pop") D2=("Female Pop") using culturedistributionanalysis.xlsx, 
sheet("Movie and Television Production") modify ;

clear results ;

tabstat l401286 l401287 l401288, s(sd v sk k cv) save ;

putexcel A14=matrix(r(StatTotal), rownames) using culturedistributionanalysis.xlsx, 
sheet("Movie and Television Production") modify ;
putexcel B13=("-----") C13=("-----") D13=("-----") using culturedistributionanalysis.xlsx, 
sheet("Movie and Television Production") modify ;

clear results ;



tabstat l401292 l401293 l401294, s(mean min max p5 p10 p25 p50 p75 p90 p95) save ;
tabstat l401292 l401293 l401294, s(sd v sk k cv) save ;
														
tabstat l402058 l402059 l402060, s(mean min max p5 p10 p25 p50 p75 p90 p95) save ;
tabstat l402058 l402059 l402060, s(sd v sk k cv);																												

tabstat l402190 l402191 l402192, s(mean min max p5 p10 p25 p50 p75 p90 p95) save ;
tabstat l402190 l402191 l402192, s(sd v sk k cv) save ;	

tabstat l402193 l402194 l402195, s(mean min max p5 p10 p25 p50 p75 p90 p95) save ;
tabstat l402193 l402194 l402195, s(sd v sk k cv) save ;

tabstat l402184 l402185 l402186, s(mean min max p5 p10 p25 p50 p75 p90 p95) save ;
tabstat l402184 l402185 l402186, s(sd v sk k cv) save ;

tabstat l402094 l402095 l402096, s(mean min max p5 p10 p25 p50 p75 p90 p95) save ;
tabstat l402094 l402095 l402096, s(sd v sk k cv) save ;

tabstat l402055 l402055 l402055, s(mean min max p5 p10 p25 p50 p75 p90 p95) save ;
tabstat l402055 l402056 l402057, s(sd v sk k cv) save ;

tabstat l402052 l402053 l402054, s(mean min max p5 p10 p25 p50 p75 p90 p95) save ;
tabstat l402052 l402053 l402054, s(sd v sk k cv) save ;

tabstat l401307 l401308 l401309, s(mean min max p5 p10 p25 p50 p75 p90 p95) save ;
tabstat l401307 l401308 l401309, s(sd v sk k cv) save ;

tabstat l401301 l401302 l401303, s(mean min max p5 p10 p25 p50 p75 p90 p95) save ;
tabstat l401301 l401302 l401303, s(sd v sk k cv) save ;

tabstat l401295 l401296 l401297, s(mean min max p5 p10 p25 p50 p75 p90 p95) save ;
tabstat l401295 l401296 l401297, s(sd v sk k cv) save ;

tabstat l401280 l401281 l401282, s(mean min max p5 p10 p25 p50 p75 p90 p95) save ;
tabstat l401280 l401281 l401282, s(sd v sk k cv) save ;

tabstat l401262 l401263 l401264, s(mean min max p5 p10 p25 p50 p75 p90 p95) save ;
tabstat l401262 l401263 l401264, s(sd v sk k cv) save ;

tabstat l401259 l401260 l401261, s(mean min max p5 p10 p25 p50 p75 p90 p95) save ;
tabstat l401259 l401260 l401261, s(sd v sk k cv) save ;

tabstat l401253 l401254 l401255, s(mean min max p5 p10 p25 p50 p75 p90 p95) save ;
tabstat l401253 l401254 l401255, s(sd v sk k cv) save ;

tabstat l401082 l401083 l401084, s(mean min max p5 p10 p25 p50 p75 p90 p95) save ;
tabstat l401082 l401083 l401084, s(sd v sk k cv) ;

tabstat l102025 l102026 l102027, s(mean min max p5 p10 p25 p50 p75 p90 p95) ;
tabstat l102025 l102026 l102027, s(sd v sk k cv) ;

#delimit ;
foreach x in l102040 l102041 l102042 l401286 l401287 l401288 l401292 l401293 l401294
l402058 l402059 l402060 l402190 l402191 l402192 l402193 l402194 l402195 l402184 
l402185 l402186 l402094 l402095 l402096 l402055 l402056 l402057 l402052 l402053 
l402054 l401307 l401308 l401309 l401301 l401302 l401303 l401295 l401296 l401297 
l401280 l401281 l401282 l401262 l401263 l401264 l401259 l401260 l401261 l401253 
l401254 l401255 l401082 l401083 l401084 l102025 l102026 l102027 Photographycamerawashing 
Museum Library MusicalInstrumentPiano SportingGoodsStore ArtTraining ChaintypeHotels 
Travel TempleChurch HistoricSite Inn MediaPublishing DesignAdvertisingPlanning KTV 
Bowling DiscoBallroom Cinema FishingClub Zoo Golf Dancehall Park Gallery RecreationCenter 
FitnessCenter Bar Skatingrink Equestrian Bookstore Tennis Nightclub Videostores 
AmusementPark ExhibitionConference { ;
kdensity `x' ;
graph export "/Users/cocorbin/Desktop/Arts Memo/Density_`x'.png" ;
};
													
tabstat	Photographycamerawashing Museum	Library MusicalInstrumentPiano 
SportingGoodsStore ArtTraining, s(mean min max p5 p10 p25 p50 p75 p90 p95) ;

tabstat ChaintypeHotels Travel TempleChurch HistoricSite Inn 
ExhibitionConference, s(mean min max p5 p10 p25 p50 p75 p90 p95) ; 

tabstat	Photographycamerawashing Museum	Library MusicalInstrumentPiano 
SportingGoodsStore ArtTraining, s(sd v sk k cv) ;

tabstat ChaintypeHotels Travel TempleChurch HistoricSite Inn ExhibitionConference, 
s(sd v sk k cv) ;  

tabstat MediaPublishing	DesignAdvertisingPlanning KTV Bowling DiscoBallroom Cinema,
s(mean min max p5 p10 p25 p50 p75 p90 p95) ;

tabstat FishingClub Zoo	Golf Dancehall Park Gallery RecreationCenter, 
s(mean min max p5 p10 p25 p50 p75 p90 p95) ;

tabstat MediaPublishing	DesignAdvertisingPlanning KTV Bowling DiscoBallroom Cinema, 
s(sd v sk k cv) ; 	

tabstat FishingClub Zoo	Golf Dancehall Park	Gallery	RecreationCenter, 
s(sd v sk k cv) ; 

tabstat	FitnessCenter Bar Skatingrink Equestrian Bookstore Tennis, 
s(mean min max p5 p10 p25 p50 p75 p90 p95) ;

tabstat Nightclub Videostores AmusementPark, 
s(mean min max p5 p10 p25 p50 p75 p90 p95) ;	
													
tabstat	FitnessCenter Bar Skatingrink Equestrian Bookstore Tennis, 
s(sd v sk k cv) ;

tabstat	Nightclub Videostores AmusementPark, 
s(sd v sk k cv) ;

gen Mich_cult_tot = (l102040 + l401286 + l401292 + l402058 + l402190 + l402193 + 
l402184 + l402094 + l402055 + l402052 + l401307 + l401301 + l401295 + l401280 + 
l401262 + l401259 + l401252 + l401082 + l102025) ;

gen DiWu_cult_tot = (Photographycamerawashing + Museum + Library + MusicalInstrumentPiano 
+ SportingGoodsStore + ArtTraining + ChaintypeHotels + Travel + TempleChurch + HistoricSite 
+ Inn + MediaPublishing	+ DesignAdvertisingPlanning + KTV + Bowling + DiscoBallroom 
+ Cinema + FishingClub + Zoo + Golf + Dancehall + Park + Gallery + RecreationCenter 
+ FitnessCenter + Bar + Skatingrink + Equestrian + Bookstore + Tennis + Nightclub 
+ Videostores + AmusementPark + ExhibitionConference) ;

gen cult_tot = (Mich_cult_tot + DiWu_cult_tot) ; 

gen pop_k = (l101004 / 1000) ;
gen lpop_k = log(pop_k) ;
gen lcult_tot = log(cult_tot) ;
gen cult_pp = (cult_tot / pop_k) ;
gen lcult_pp = (lcult_tot / pop_k) ;
gen lcult_lpp = (lcult_tot / lpop_k) ;

#delimit ;
tabstat Mich_cult_tot DiWu_cult_tot cult_tot,
s(mean min max p5 p10 p25 p50 p75 p90 p95) save ;


tabstat Mich_cult_tot DiWu_cult_tot cult_tot, 
s(sd v sk k cv) save ;

putexcel A2=matrix(r(StatTotal), names) using tryagain.xlsx, sheet("tried2") modify ;
clear results ;

tabstat cult_pp lcult_pp lcult_lpp,
s(mean min max p5 p10 p25 p50 p75 p90 p95) save ;

putexcel A2=matrix(r(StatTotal), names) using tryagain.xlsx, sheet("tried3") modify ;
clear results ;

tabstat cult_pp lcult_pp lcult_lpp, 
s(sd v sk k cv) save ;
putexcel A2=matrix(r(StatTotal), names) using tryagain.xlsx, sheet("tried4") modify ;
clear results ;

 
	
#delimit cr

log close

