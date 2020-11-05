SELECT 
charachters.name As "Charachter",
charachters.height As "Height",
charachters.birth_year As "Birth Year",
charachters.homeworld As "Home Planet",
charachters.species As "Species",
species.classification As "Classification",
species.language As "Language",
planets.name As "Planet",
planets.rotation_period As "Rotation Period",
planets.orbital_period As "Orbital Period",
planets.diameter As "Diameter",
planets.terrain


FROM charachters

Left Join species On
	charachters.homeworld = species.homeworld
Left Join planets On
	species.homeworld = planets.name
	
/* Where birth_year not like 'NA' */
	
	