% Maine Population 1790 - 2010
% Source: http://maineanencyclopedia.com/population-since-1741/
 
% Year, Maine Population, US Population
population = [
1790 	96540 	3929214 
1800 	151719 	5308483 	
1810 	228705 	7239881 	
1820 	298335 	9638453 	
1830 	399455 	12866020 	
1840 	501793 	17069453 	
1850 	583169 	23191876 
1860 	628279 	31443321 	
1870 	626915 	39818449 	
1880 	648936 	50155783 	
1890 	661086 	62947714 	
1900 	694466 	75994575 	
1910 	742371 	91972266 	
1920 	768014 	105710620 	
1930 	797423 	122775046 	
1940 	847226 	131669275 
1950 	913774 	150697361 
1960 	969000 	 179323175 
1970 	994000 	 203302031 
1980 	1124660  226545805 
1990 	1227928 	 248709873 
2000 	1274923  281421906 
2010 	1328361 	 308745538
2014 	1330089	 318857056
];
 
% the years
cdate = population(:, 1);
 
% Maine's population
pop = population(:, 2);

plot(cdate, pop, '-p')

xlabel('Year', 'Fontsize', 14)
ylabel('Maine population', 'FontSize', 14)
title('Maine Population 1790 - 2010', 'FontSize', 14)

grid on
xlim([1790 2010])
set(gca, 'XTick',[1790:20:2010])

