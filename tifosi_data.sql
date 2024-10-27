USE tifosi;

INSERT INTO `focaccia` VALUES (NULL,'Mozaccia',9.8),(NULL,'Gorgonzollaccia',10.8),(NULL,'Raclaccia',8.9),(NULL,'Emmentalaccia',9.8),(NULL,'Tradizione',8.9),(NULL,'Hawaienne',11.2),(NULL,'Américaine',10.8),(NULL,'Paysanne',12.8);

INSERT INTO `boisson` VALUES (NULL,'Coca-cola zéro'),(NULL,'Coca-cola original'),(NULL,'Fanta citron'),(NULL,'Fanta orange'),(NULL,'Capri-sun'),(NULL,'Pepsi'),(NULL,'Pepsi Max Zéro'),(NULL,'Lipton Zéro citron'),(NULL,'Lipton Peach'),(NULL,'Monster energy ultra gold'),(NULL,'Monster energy ultra blue'),(NULL,'Eau de source');

INSERT INTO `ingredient` VALUES (NULL,'Ail'),(NULL,'Ananas'),(NULL,'Artichaut'),(NULL,'Bacon'),(NULL,'Base tomate'),(NULL,'Base crème'),(NULL,'Champignon'),(NULL,'Chevre'),(NULL,'Cresson'),(NULL,'Emmental'),(NULL,'Gorgonzola'),(NULL,'Jambon cuit'),(NULL,'Jambon fumé'),(NULL,'Oeuf'),(NULL,'Oignon'),(NULL,'Olive noire'),(NULL,'Olive verte'),(NULL,'Parmesan'),(NULL,'Piment'),(NULL,'Poivre'),(NULL,'Pomme de terre'),(NULL,'Raclette'),(NULL,'Salami'),(NULL,'Tomate cerise');

INSERT INTO `marque` VALUES (NULL,'Coca-cola'),(NULL,'Cristalline'),(NULL,'Monster'),(NULL,'Pepsico');

INSERT INTO `comprend` VALUES (1,1),(2,1),(3,1),(8,1),(6,2),(1,3),(8,3),(6,4),(7,4),(1,5),(2,5),(3,5),(5,5),(6,5),(7,5),(4,6),(8,6),(1,7),(2,7),(3,7),(4,7),(5,7),(8,7),(8,8),(1,9),(2,9),(3,9),(4,9),(5,9),(6,9),(7,9),(8,9),(4,10),(2,11),(5,12),(1,13),(8,13),(8,14),(4,15),(1,16),(2,16),(5,16),(6,16),(7,16),(8,16),(5,17),(1,18),(2,18),(3,18),(4,18),(5,18),(6,18),(7,18),(8,18),(6,19),(1,20),(2,20),(3,20),(4,20),(5,20),(6,20),(7,20),(8,20),(7,21),(8,21),(3,22);

INSERT INTO `appartient` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(12,2),(10,3),(11,3),(6,4),(7,4),(8,4),(9,4);