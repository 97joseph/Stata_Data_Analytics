log using "C:\Users\Administrator\Desktop\Final Part2\data\Final_Part2_Log.smcl", replace

*Data cleaning
use "C:\Users\Administrator\Desktop\Final Part2\data\M8_HROST.dta" 
bys hhid: gen hhsize=_N
order hhid hhsize
sort hhid age
bys hhid: gen age_ranking=_n
order hhid hhsize age_ranking age
sort hhid pcode clustnum
keep hhid hhsize age_ranking age pcode gender_c father mother clustnum 
save "C:\Users\Administrator\Desktop\Final Part2\data\New\HROST.dta",replace
clear all

use "C:\Users\Administrator\Desktop\Final Part2\data\HHINCTL.dta" 
keep hhnwage hhgwage totm_cas hhid totminc clustnum 
sort hhid clustnum
save "C:\Users\Administrator\Desktop\Final Part2\data\New\HIncome.dta",replace
clear all

use "C:\Users\Administrator\Desktop\Final Part2\data\HHSIZE.dta" 
sort hhid clustnum
save "C:\Users\Administrator\Desktop\Final Part2\data\New\HSize.dta",replace
clear all

use "C:\Users\Administrator\Desktop\Final Part2\data\M6_ANTH_sim.dta"
keep hhid agem pcode clustnum gender weight height haz waz whz
sort hhid pcode clustnum
save "C:\Users\Administrator\Desktop\Final Part2\data\New\HAnth.dta",replace
clear all

use "C:\Users\Administrator\Desktop\Final Part2\data\SAMPLE04.dta" 
keep clustnum metro hhnump hhnumr hhall 
sort clustnum
save "C:\Users\Administrator\Desktop\Final Part2\data\New\SAMPLE.dta",replace
clear all

use "C:\Users\Administrator\Desktop\Final Part2\data\M5_INES.dta"
sort hhid pcode clustnum
save "C:\Users\Administrator\Desktop\Final Part2\data\New\Income_other.dta",replace
clear all


*Merge datasets

*merging roster and anthropometric
use "C:\Users\Administrator\Desktop\Final Part2\data\New\HROST.dta" 
merge hhid pcode clustnum using "C:\Users\Administrator\Desktop\Final Part2\data\New\HAnth.dta"
drop _merge
save "C:\Users\Administrator\Desktop\Final Part2\data\New\Merged_1.dta",replace
clear all

*merging Income
use "C:\Users\Administrator\Desktop\Final Part2\data\New\Merged_1.dta"
sort hhid clustnum
merge hhid clustnum using "C:\Users\Administrator\Desktop\Final Part2\data\New\HIncome.dta"
drop _merge
save "C:\Users\Administrator\Desktop\Final Part2\data\New\Merged_2.dta",replace
clear all

*merging Household size
use "C:\Users\Administrator\Desktop\Final Part2\data\New\Merged_2.dta"
sort hhid clustnum
merge hhid clustnum using "C:\Users\Administrator\Desktop\Final Part2\data\New\HSize.dta"
drop _merge
save "C:\Users\Administrator\Desktop\Final Part2\data\New\Merged_3.dta",replace
clear all

*merging sample information(metro)
use "C:\Users\Administrator\Desktop\Final Part2\data\New\Merged_3.dta"
sort clustnum
merge clustnum using "C:\Users\Administrator\Desktop\Final Part2\data\New\SAMPLE.dta"
drop _merge
save "C:\Users\Administrator\Desktop\Final Part2\data\New\Merged_4.dta",replace
clear all

*merging other income
use "C:\Users\Administrator\Desktop\Final Part2\data\New\Merged_4.dta"
sort hhid pcode clustnum
merge hhid pcode clustnum using "C:\Users\Administrator\Desktop\Final Part2\data\New\Income_other.dta"
save "C:\Users\Administrator\Desktop\Final Part2\data\New\Merged_Final.dta",replace
clear all


log close
