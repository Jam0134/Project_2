SELECT 
charachters.name As "Charachter",
charachters.height As "Height",
charachters.birth_year As "Birth Year",
charachters.homeworld As "Home Planet",
charachters.species As "Species",
species.classification As "Classification",
species.language As "Language",
planets.rotation_period As "Rotation Period",
planets.orbital_period As "Orbital Period",
planets.diameter As "Diameter",
planets.terrain,
CASE 
WHEN planets.name = 'NA' THEN 'Unknown'
ELSE planets.name
END AS Planet

FROM charachters

Left Join species On
	charachters.homeworld = species.homeworld
Left Join planets On
	species.homeworld = planets.name

Where planets.name is not null

Order by 1
	


	