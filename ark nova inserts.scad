altura_total = 47.5;
grosor_pared_largo = 12.15;  // 12.15 zoo cards, 5.6 other cards
grosor_pared_ancho = 8.6;  // 8.6 zoo cards, 5.6 other cards

altura_mazo = 36; // 6.9 actions, 4.25 conservation projects, 3.85 final scoring, 36 zoo
espacio_superior = 4;

ancho_rail = 25; // 25 zoo cards, 20 other cards

ancho_carta = 64;
largo_carta = 88.5;

ancho_base = ancho_carta + 2*grosor_pared_ancho;
largo_base = largo_carta + 2*grosor_pared_largo;
altura_base = altura_total - altura_mazo - espacio_superior;

cube([ancho_base, largo_base, altura_base]);

altura_rail = altura_mazo + espacio_superior;

translate([0, 0, altura_base]) 
    cube([ancho_rail, grosor_pared_largo, altura_rail]);
    
translate([ancho_base - ancho_rail, 0, altura_base]) 
    cube([ancho_rail, grosor_pared_largo, altura_rail]);
    
translate([0, largo_base - grosor_pared_largo, altura_base]) 
    cube([ancho_rail, grosor_pared_largo, altura_rail]);
    
translate([ancho_base - ancho_rail, largo_base - grosor_pared_largo, altura_base]) 
    cube([ancho_rail, grosor_pared_largo, altura_rail]);


translate([0, 0, altura_base]) 
    cube([grosor_pared_ancho, ancho_rail, altura_rail]);
    
translate([ancho_base - grosor_pared_ancho, 0, altura_base]) 
    cube([grosor_pared_ancho, ancho_rail, altura_rail]);
    
translate([0, largo_base - ancho_rail, altura_base]) 
    cube([grosor_pared_ancho, ancho_rail, altura_rail]);
    
translate([ancho_base - grosor_pared_ancho, largo_base - ancho_rail, altura_base]) 
    cube([grosor_pared_ancho, ancho_rail, altura_rail]);
