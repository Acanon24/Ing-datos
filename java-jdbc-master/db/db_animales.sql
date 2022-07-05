CREATE SCHEMA db_animales;
USE db_animales;

--
-- Base de datos: `db_animales`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alimentaciones`
--

CREATE TABLE IF NOT EXISTS `alimentaciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `alimentaciones`
--

INSERT INTO `alimentaciones` (`id`, `nombre`) VALUES
(1, 'Herbivore'),
(2, 'Carnivore'),
(3, 'Omnivore'),
(4, 'Insectivore'),
(5, 'Insectivore Herbivore'),
(6, 'Insectivore Carnivore'),
(7, 'Herbivore Insectivore'),
(8, 'Carnivore Insectivore');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `animales`
--

CREATE TABLE IF NOT EXISTS `animales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(40) NOT NULL,
  `nombre_cientifico` varchar(40) NOT NULL,
  `peso_kg` double NOT NULL,
  `anios` int(11) NOT NULL,
  `id_habitad` int(11) NOT NULL,
  `id_locomocion` int(11) NOT NULL,
  `id_alimentacion` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_habitad` (`id_habitad`),
  KEY `id_locomocion` (`id_locomocion`),
  KEY `id_alimentacion` (`id_alimentacion`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=132 ;

--
-- Volcado de datos para la tabla `animales`
--

INSERT INTO `animales` (`id`, `nombre`, `nombre_cientifico`, `peso_kg`, `anios`, `id_habitad`, `id_locomocion`, `id_alimentacion`) VALUES
(1, 'Whale Blue', 'Balaenoptera musculus', 181568, 110, 1, 1, 1),
(2, 'Shark whale', 'Rhincodon typus', 16341.12, 59, 1, 1, 2),
(3, 'Elephant African', 'Loxodonta africana', 5900, 24, 2, 2, 1),
(4, 'Elephant Indian', 'Elephas maximus', 4000, 70, 2, 2, 1),
(5, 'Giraffe male', 'Giraffa camelopardalis', 800, 25, 2, 2, 1),
(6, 'Mule', 'Equus asinus X Equus caballus', 680.88, 20, 2, 2, 1),
(7, 'Camel', 'Camelus bactrianus', 550, 45, 2, 3, 1),
(8, 'Horse', 'Equus caballus', 453.92, 35, 2, 2, 1),
(9, 'Cow', 'Bos taurus', 453.92, 17, 2, 2, 1),
(10, 'Dolphin Bottlenose', 'Tursiops truncatus', 400, 30, 1, 1, 2),
(11, 'Donkey', 'Equus asinus', 363.14, 20, 2, 2, 1),
(12, 'Tapir', 'Tapirus terrestris', 317.74, 30, 2, 2, 1),
(13, 'Shark Hammerhead', 'Sphyrna zygaena', 272.35, 18, 1, 1, 2),
(14, 'Seal fur', 'Callorhinus ursinus', 272.35, 13, 1, 1, 2),
(15, 'Manatee', 'Trichechus manatus', 250, 15, 3, 1, 1),
(16, 'Bear Grizzly', 'Ursus horribilis', 230, 25, 2, 2, 3),
(17, 'Alligator American', 'Alligator mississipiensis', 226.96, 56, 4, 4, 2),
(18, 'Sturgeon Atlantic', 'Acipenser sturio', 226.96, 50, 5, 1, 2),
(19, 'Lion', 'Panthera leo', 200, 20, 2, 2, 2),
(20, 'Bear American Black', 'Ursus americanus', 175, 25, 2, 2, 3),
(21, 'Ostrich', 'Struthio camelus', 125, 50, 2, 2, 1),
(22, 'Crocodile Saltwater', 'Crocodylus porosus', 113.4, 13, 1, 1, 2),
(23, 'Pig', 'Sus scrofa', 102, 16, 2, 2, 3),
(24, 'Sheep', 'Ovis aries', 79.44, 15, 2, 2, 1),
(25, 'Dog Saint Bernard', 'Canis familiaris', 72.63, 20, 2, 2, 2),
(26, 'Human', 'Homo sapiens', 69, 72, 2, 2, 3),
(27, 'Deer white-tailed', 'Odocoileus virginianus', 51.2, 12, 2, 2, 1),
(28, 'Tuna', 'Thunnus thynnus', 45.36, 7, 1, 1, 2),
(29, 'Salamander Japanese', 'Megolobatrachus japonicus', 40.85, 60, 4, 5, 4),
(30, 'Carp', 'Cyprinus carpio', 38, 6, 4, 1, 1),
(31, 'Dog Foxhound', 'Canis familiaris', 29.5, 23, 2, 2, 2),
(32, 'Goat Milch', 'Capra hircus', 28, 15, 2, 2, 1),
(33, 'Sting Ray', 'Dasyatis americana', 27.24, 5, 1, 1, 2),
(34, 'Dog Pointer', 'Canis familiaris', 24.97, 18, 2, 2, 2),
(35, 'Kangaroo Red', 'Macropus rufus', 24, 17, 2, 2, 1),
(36, 'Cod Atlantic', 'Gadus callarias', 22.7, 13, 1, 1, 2),
(37, 'Dog Collie', 'Canis familiaris', 22.7, 20, 2, 2, 2),
(38, 'Pike Northern', 'Esox lucius', 19.06, 24, 4, 1, 2),
(39, 'Trout brown', 'Salmo trutta', 18.16, 18, 4, 1, 2),
(40, 'Dog Basset Hound', 'Canis familiaris', 18.16, 22, 2, 2, 2),
(41, 'Turkey', 'Meleagris gallopavo', 18.16, 12, 2, 6, 1),
(42, 'Porcupine', 'Erethizon dorsatum', 18.16, 11, 2, 2, 1),
(43, 'Trout Rainbow', 'Salmo gairdneri', 18.16, 4, 4, 1, 2),
(44, 'Gar longnose', 'Lepisosteus osseus', 18, 30, 4, 1, 2),
(45, 'Beaver', 'Castor canadensis', 13, 16, 4, 4, 1),
(46, 'Dog Irish Terrier', 'Canis familiaris', 11.8, 19, 2, 2, 2),
(47, 'Dog Beagle', 'Canis familiaris', 11.35, 20, 2, 2, 2),
(48, 'Bass Large Mouth Black', 'Micropterus salmoides', 10.1, 11, 4, 1, 2),
(49, 'Dog Whippet', 'Canis familiaris', 9.99, 20, 2, 2, 2),
(50, 'Dog Boston Terrier', 'Canis familiaris', 9.08, 12, 2, 2, 2),
(51, 'Nutria', 'Myocastor coypus', 9.08, 4, 2, 5, 1),
(52, 'Dog Fox Terrier', 'Canis familiaris', 7.26, 18, 2, 2, 2),
(53, 'Armadillo Nine-banded', 'Dasypus novemcinctus', 6.81, 13, 2, 2, 5),
(54, 'Fox Arctic', 'Alopex lagopus', 6, 8, 2, 2, 2),
(55, 'Woodchuck (Groundhog)', 'Marmota monax', 4.54, 10, 2, 2, 1),
(56, 'Rabbit Domestic', 'Lepus cuniculus', 4.09, 6, 2, 2, 1),
(57, 'Chicken', 'Gallus gallus domesticus', 3.86, 15, 2, 6, 1),
(58, 'Dog Pekingese', 'Canis familiaris', 3.63, 16, 2, 2, 2),
(59, 'Haddock', 'Melanogrammus aeglefinus', 3.3, 15, 1, 1, 2),
(60, 'Cat domestic', 'Felis catus', 3.3, 15, 2, 2, 2),
(61, 'Salmon Chum', 'Oncorhynchus keta', 2.72, 4, 3, 1, 2),
(62, 'Vulture Turkey', 'Cathartes aura', 2.27, 118, 2, 7, 2),
(63, 'Opossum Large American', 'Didelphis marsupialis', 2.27, 7, 2, 8, 3),
(64, 'Flounder Winter', 'Pseudopleuronectes americanus', 2.27, 1, 1, 1, 2),
(65, 'Pheasant Ringnecked', 'Phasianus colchicus', 2.04, 27, 2, 9, 1),
(66, 'Perch', 'Perca fluviatilis', 1.95, 10, 4, 1, 2),
(67, 'Duck Mallard', 'Anas platyrhynchos', 1.7, 19, 4, 10, 5),
(68, 'Mackerel Spanish', 'Scomberomorus maculatus', 1.59, 5, 1, 1, 2),
(69, 'Platypus Duck-billed', 'Ornithorhynchus anatinus', 1.25, 15, 4, 1, 6),
(70, 'Sea lamprey', 'Petromyzon marinus', 1.14, 7, 3, 1, 2),
(71, 'Bullhead Brown', 'Ictalurus nebulosus', 1.13, 9, 4, 1, 2),
(72, 'Mink American', 'Mustela vison', 1.05, 10, 2, 2, 2),
(73, 'Falcon Peregrin', 'Falco peregrinus', 0.96, 12, 2, 7, 2),
(74, 'Goshawk', 'Accipiter gentilis', 0.96, 13, 2, 7, 2),
(75, 'Bat Flying fox', 'Pteropus vampyrus', 0.9, 17, 2, 7, 3),
(76, 'Duck Wood', 'Aix sponsa', 0.68, 5, 4, 10, 7),
(77, 'Buzzard', 'Buteo buteo', 0.66, 100, 2, 7, 2),
(78, 'Bass Rock', 'Ambloplites rupestris', 0.57, 8, 4, 1, 2),
(79, 'Squirrel Gray', 'Sciurus carolinensis', 0.55, 15, 2, 11, 1),
(80, 'Guinea Pig', 'Cavia cobaya', 0.45, 8, 2, 2, 1),
(81, 'Rat Norway', 'Rattus norvegicus', 0.45, 4, 2, 2, 3),
(82, 'Gull Herring', 'Larus argentatus', 0.38, 44, 6, 9, 2),
(83, 'Crow Hooded', 'Corvus cornix', 0.36, 4, 2, 7, 3),
(84, 'Rook', 'Frugilegus', 0.34, 7, 2, 7, 3),
(85, 'Pumpkinseed', 'Lepomis gibbosus', 0.31, 3, 4, 1, 2),
(86, 'Pigeon', 'Columba livia', 0.27, 16, 2, 9, 1),
(87, 'Guinea fowl', 'Numida melearis', 0.25, 30, 2, 9, 1),
(88, 'Quail Bobwhite', 'Colinus virginianus', 0.17, 8, 2, 6, 5),
(89, 'Magpie Black-billed', 'Pica pica', 0.15, 12, 2, 7, 3),
(90, 'European Jackdaw', 'Monedula', 0.14, 4, 2, 7, 3),
(91, 'Hamster', 'Cricetus cricetus', 0.12, 2, 2, 2, 1),
(92, 'Kestrel lesser', 'Falco naumanni', 0.11, 5, 2, 7, 2),
(93, 'Hawk Night', 'Chordeles minor', 0.11, 4, 2, 9, 2),
(94, 'Chipmunk Eastern', 'Tamias striatus', 0.1, 5, 2, 2, 1),
(95, 'Bat little brown', 'Myotis lucifugus', 0.1, 10, 2, 7, 4),
(96, 'Starling Common', 'Sturnus vulgaris', 0.09, 7, 2, 7, 3),
(97, 'Frog leopard', 'Rana pipiens', 0.04, 6, 4, 12, 2),
(98, 'Weasel least', 'Mustela rixosa', 0.04, 20, 2, 2, 2),
(99, 'Mouse White-footed', 'Peromyscus leucopus', 0.02, 1, 2, 13, 3),
(100, 'Mouse House', 'Mus musculus', 0.02, 4, 2, 2, 1),
(101, 'Canary', 'Serinus canarius', 0.02, 24, 2, 7, 7),
(102, 'Hummingbird', 'Archilochus colubris', 0.01, 8, 2, 7, 3),
(103, 'Hummingbird Cuban bee', 'Mellisuga helenae', 0.01, 3, 2, 7, 1),
(104, 'Shrew Musked', 'Sorex cinereus', 0.01, 1, 2, 2, 8),
(105, 'Shrew dwarf', 'Suncus etruscus', 0.01, 5, 2, 2, 4),
(106, 'Goby Philippine', 'Pandaka pygmaea', 0.001, 1, 1, 1, 2),
(107, 'Goldfish', 'Carassius auratus', 0.001, 20, 4, 1, 2),
(108, 'Toad American', 'Bufo americanus', 0.001, 36, 2, 14, 4),
(109, 'Frog Bull', 'Rana catesbeiana', 0.001, 15, 4, 15, 8),
(110, 'Eel American', 'Anguilla rostrata', 0.001, 10, 3, 1, 2),
(111, 'Penguin Adelie', 'Pygoscelis', 0.001, 5, 1, 5, 2),
(112, 'Robin', 'Turdus migratorius', 0.001, 12, 2, 9, 4),
(113, 'Kiwi', 'Apteryx australis', 0.001, 20, 2, 16, 4),
(114, 'Fighting Fish Siamese', 'Betta splendens', 0.001, 10, 4, 1, 3),
(115, 'Skate', 'Raja macrorhynchus', 0.001, 7, 1, 1, 2),
(116, 'Quail Japanese/European', 'Coturnix coturnix', 0.001, 5, 2, 7, 1),
(117, 'Gila Monster', 'Heloderma suspectum', 0.001, 25, 2, 2, 2),
(118, 'Chameleon', 'Anolis carolinensis', 0.001, 7, 2, 2, 4),
(119, 'Cobra Indian', 'Naja naja atra', 0.001, 12, 2, 17, 2),
(120, 'Boa Constrictor', 'Constrictor constrictor', 0.001, 23, 2, 17, 2),
(121, 'Guppy', 'Lebistes reticulatus', 0.001, 2, 4, 1, 2),
(122, 'Salamander Tiger', 'Ambystome mecicanum', 0.001, 11, 2, 2, 3),
(123, 'Swordtail Mexican', 'Xiphophorus helleri', 0.001, 4, 4, 1, 2),
(124, 'Stickleback three spine', 'Gasterosteus aculeatus', 0.001, 1, 4, 1, 2),
(125, 'Sea horse', 'Hippocampus hudsonius', 0.001, 4, 1, 1, 2),
(126, 'Hellbender', 'Cryptobranchus alleganiensis', 0.001, 15, 4, 1, 3),
(127, 'Herring Atlantic', 'Clupea harengus', 0.001, 12, 1, 1, 2),
(128, 'Chameleon Madagascar', 'Evoluticavda', 0.001, 8, 2, 2, 4),
(129, 'Frog Cuban', 'Sminthillud limbatus', 0.001, 3, 2, 2, 4),
(130, 'Molly', 'Molliensia sphenops', 0.001, 7, 4, 1, 2),
(131, 'Dogfish Pacific Spiny', 'Squalus suckleyi', 0.001, 3, 1, 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habitads`
--

CREATE TABLE IF NOT EXISTS `habitads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `habitads`
--

INSERT INTO `habitads` (`id`, `nombre`) VALUES
(1, 'Marine'),
(2, 'Terrestrial'),
(3, 'Marine Aquatic'),
(4, 'Aquatic'),
(5, 'Aquatic Marine'),
(6, 'Terrestrial Marine');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `locomociones`
--

CREATE TABLE IF NOT EXISTS `locomociones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Volcado de datos para la tabla `locomociones`
--

INSERT INTO `locomociones` (`id`, `nombre`) VALUES
(1, 'Swimming'),
(2, 'Walking'),
(3, 'Walking Gallop'),
(4, 'Walking Swimming'),
(5, 'Swimming Walking'),
(6, 'Walking Flight'),
(7, 'Flight'),
(8, 'Walk ing'),
(9, 'Flight Walking'),
(10, 'Flight Swimming'),
(11, 'Climbing Walking'),
(12, 'Hopping Swimming'),
(13, 'Running'),
(14, 'Jumping'),
(15, 'Jumping Swimming'),
(16, 'Walking Running'),
(17, 'Crawling');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `animales`
--
ALTER TABLE `animales`
  ADD CONSTRAINT `animales_ibfk_3` FOREIGN KEY (`id_alimentacion`) REFERENCES `alimentaciones` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `animales_ibfk_1` FOREIGN KEY (`id_habitad`) REFERENCES `habitads` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `animales_ibfk_2` FOREIGN KEY (`id_locomocion`) REFERENCES `locomociones` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
