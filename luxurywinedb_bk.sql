-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: luxurywinedb
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tb_administradores`
--

DROP TABLE IF EXISTS `tb_administradores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_administradores` (
  `id_administrador` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_admistrador` varchar(50) NOT NULL,
  `apellido_administrador` varchar(50) NOT NULL,
  `correo_administrador` varchar(100) NOT NULL,
  `alias_administrador` varchar(100) NOT NULL,
  `clave_administrador` varchar(100) NOT NULL,
  `fecha_registro` date NOT NULL DEFAULT current_timestamp(),
  `id_nivel` int(11) NOT NULL,
  PRIMARY KEY (`id_administrador`),
  UNIQUE KEY `correo_administrador` (`correo_administrador`),
  UNIQUE KEY `alias_administrador` (`alias_administrador`),
  KEY `fk_nivel_admin` (`id_nivel`),
  CONSTRAINT `fk_nivel_admin` FOREIGN KEY (`id_nivel`) REFERENCES `tb_niveles_administradores` (`id_nivel`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_administradores`
--

LOCK TABLES `tb_administradores` WRITE;
/*!40000 ALTER TABLE `tb_administradores` DISABLE KEYS */;
INSERT INTO `tb_administradores` VALUES (1,'Juan','Perez','juan.perez@example.com','juanperez','clave123','2024-03-06',1),(2,'Maria','Gomez','maria.gomez@example.com','mariagomez','clave456','2024-03-06',2),(3,'Luis','Martinez','luis.martinez@example.com','luismartinez','clave789','2024-03-06',1),(4,'Ana','Rodriguez','ana.rodriguez@example.com','anarodriguez','clave101','2024-03-06',1),(5,'Carlos','Lopez','carlos.lopez@example.com','carloslopez','clave112','2024-03-06',2),(6,'Laura','Sanchez','laura.sanchez@example.com','laurasanchez','clave131','2024-03-06',2),(7,'Pedro','Gonzalez','pedro.gonzalez@example.com','pedrogonzalez','clave415','2024-03-06',1),(8,'Sofia','Diaz','sofia.diaz@example.com','sofiadiaz','clave161','2024-03-06',2),(9,'Diego','Hernandez','diego.hernandez@example.com','diegohernandez','clave718','2024-03-06',1),(10,'Paula','Perez','paula.perez@example.com','paulaperez','clave919','2024-03-06',1),(11,'Miguel','Gomez','miguel.gomez@example.com','miguelgomez','clave202','2024-03-06',2),(12,'Elena','Martinez','elena.martinez@example.com','elenamartinez','clave212','2024-03-06',2),(13,'Andrea','Rodriguez','andrea.rodriguez@example.com','andrearodriguez','clave525','2024-03-06',1),(14,'David','Lopez','david.lopez@example.com','davidlopez','clave282','2024-03-06',2),(15,'Carmen','Sanchez','carmen.sanchez@example.com','carmensanchez','clave292','2024-03-06',2),(16,'Javier','Gonzalez','javier.gonzalez@example.com','javiergonzalez','clave646','2024-03-06',1),(17,'Natalia','Diaz','natalia.diaz@example.com','nataliadiaz','clave313','2024-03-06',2),(18,'Roberto','Hernandez','roberto.hernandez@example.com','robertohernandez','clave323','2024-03-06',2),(19,'Silvia','Perez','silvia.perez@example.com','silviaperez','clave757','2024-03-06',1),(20,'Mario','Gomez','mario.gomez@example.com','mariogomez','clave434','2024-03-06',2),(21,'Isabel','Martinez','isabel.martinez@example.com','isabelmartinez','clave444','2024-03-06',1),(22,'Lucia','Rodriguez','lucia.rodriguez@example.com','luciarodriguez','clave868','2024-03-06',1),(23,'Santiago','Lopez','santiago.lopez@example.com','santiagolopez','clave555','2024-03-06',2),(24,'Raquel','Sanchez','raquel.sanchez@example.com','raquelsanchez','clave565','2024-03-06',2);
/*!40000 ALTER TABLE `tb_administradores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_categorias`
--

DROP TABLE IF EXISTS `tb_categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_categorias` (
  `id_categoria` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_categoria` varchar(50) NOT NULL,
  `descripcion_categoria` varchar(250) NOT NULL,
  `imagen_categoria` varchar(150) NOT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_categorias`
--

LOCK TABLES `tb_categorias` WRITE;
/*!40000 ALTER TABLE `tb_categorias` DISABLE KEYS */;
INSERT INTO `tb_categorias` VALUES (1,'Vinos tintos','Variedades de vinos tintos de diferentes cepas y regiones.','vinos_tintos.jpg'),(2,'Vinos blancos','Selección de vinos blancos de diversas cepas y estilos.','vinos_blancos.jpg'),(3,'Vinos rosados','Amplia variedad de vinos rosados con distintos perfiles de sabor.','vinos_rosados.jpg'),(4,'Champagnes','Champagnes de alta calidad para celebraciones y ocasiones especiales.','champagnes.jpg'),(5,'Espumosos','Selección de vinos espumosos de diferentes procedencias y estilos.','espumosos.jpg'),(6,'Vinos orgánicos','Vinos producidos de forma orgánica, respetando el medio ambiente.','vinos_organicos.jpg'),(7,'Vinos biodinámicos','Vinos elaborados siguiendo los principios de la agricultura biodinámica.','vinos_biodinamicos.jpg'),(8,'Vinos de crianza','Vinos de crianza en barrica con distintos tiempos y maderas.','vinos_crianza.jpg'),(9,'Vinos reserva','Vinos reserva con una cuidada elaboración y envejecimiento.','vinos_reserva.jpg'),(10,'Vinos gran reserva','Selección de vinos gran reserva de añadas excepcionales.','vinos_gran_reserva.jpg'),(11,'Vinos jóvenes','Vinos jóvenes frescos y afrutados para disfrutar en cualquier ocasión.','vinos_jovenes.jpg'),(12,'Vinos de autor','Vinos de autor elaborados por reconocidos enólogos.','vinos_autor.jpg'),(13,'Vinos de pago','Vinos de pago con características únicas y singulares.','vinos_pago.jpg'),(14,'Vinos monovarietales','Vinos elaborados con una sola variedad de uva para resaltar sus características.','vinos_monovarietales.jpg'),(15,'Vinos de terruño','Vinos que expresan la influencia del terruño en su sabor y aroma.','vinos_terruno.jpg'),(16,'Vinos de reserva especial','Vinos de reserva especial con características excepcionales.','vinos_reserva_especial.jpg'),(17,'Vinos dulces naturales','Vinos dulces naturales con una concentración natural de azúcares.','vinos_dulces_naturales.jpg'),(18,'Vinos fortificados','Vinos fortificados con mayor graduación alcohólica y sabores intensos.','vinos_fortificados.jpg'),(19,'Vinos de hielo','Vinos de hielo elaborados con uvas congeladas para concentrar su dulzor.','vinos_hielo.jpg'),(20,'Vinos de cosecha tardía','Vinos de cosecha tardía con un perfil dulce y complejo.','vinos_cosecha_tardia.jpg'),(21,'Vinos de postre','Vinos para acompañar postres y quesos con sus sabores agridulces.','vinos_postre.jpg'),(22,'Vinos espumosos rosados','Vinos espumosos rosados con elegancia y frescura.','vinos_espumosos_rosados.jpg'),(23,'Vinos pet-nat','Vinos pet-nat (pétillant naturel) con fermentación natural y burbujas sutiles.','vinos_pet_nat.jpg'),(24,'Vinos naranjas','Vinos blancos fermentados con sus pieles para obtener aromas y sabores distintivos.','vinos_naranjas.jpg'),(25,'Vinos de barrica','Vinos que han sido envejecidos en barricas de roble para desarrollar su sabor y aroma característicos.','vinos_barrica.jpg');
/*!40000 ALTER TABLE `tb_categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_clientes`
--

DROP TABLE IF EXISTS `tb_clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_clientes` (
  `id_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_cliente` varchar(50) NOT NULL,
  `apellido_cliente` varchar(50) NOT NULL,
  `dui_cliente` varchar(10) NOT NULL,
  `correo_cliente` varchar(100) NOT NULL,
  `telefono_cliente` varchar(9) NOT NULL,
  `direccion_cliente` varchar(250) NOT NULL,
  `clave_cliente` varchar(100) NOT NULL,
  `estado_cliente` enum('Activo','Inactivo') NOT NULL DEFAULT 'Inactivo',
  `fecha_registro` date NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id_cliente`),
  UNIQUE KEY `dui_cliente` (`dui_cliente`),
  UNIQUE KEY `correo_cliente` (`correo_cliente`),
  UNIQUE KEY `telefono_cliente` (`telefono_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_clientes`
--

LOCK TABLES `tb_clientes` WRITE;
/*!40000 ALTER TABLE `tb_clientes` DISABLE KEYS */;
INSERT INTO `tb_clientes` VALUES (1,'Juan','Pérez','12345789-0','juan@example.com','6566-9000','Calle Principal #123','clave123','Activo','2024-03-06'),(2,'María','Gómez','98765321-0','maria@example.com','6890-9800','Avenida Central #456','clave456','Activo','2024-03-06'),(3,'Pedro','Martínez','11111111-2','pedro@example.com','7215-0999','Calle Secundaria #789','clave789','Activo','2024-03-06'),(4,'Ana','López','22222122-0','ana@example.com','6890-1110','Calle Lateral #321','clave321','Activo','2024-03-06'),(5,'Carlos','Hernández','33333323-0','carlos@example.com','6199-9000','Avenida Principal #654','clave654','Activo','2024-03-06'),(6,'Luis','Díaz','44491444-0','luis@example.com','7894-9000','Calle del Centro #987','clave987','Activo','2024-03-06'),(7,'Laura','Torres','55555555-0','laura@example.com','6122-9000','Calle Nueva #1234','clave1234','Activo','2024-03-06'),(8,'Sofía','Ramírez','66666666-0','sofia@example.com','6740-8000','Calle Vieja #5678','clave5678','Activo','2024-03-06'),(9,'Alejandro','Sánchez','77777777-0','alejandro@example.com','8770-9000','Avenida Moderna #9012','clave9012','Activo','2024-03-06'),(10,'Fernanda','García','88888888-0','fernanda@example.com','6110-9001','Avenida Antigua #3456','clave3456','Activo','2024-03-06'),(11,'Javier','Rodríguez','99999999-0','javier@example.com','6891-9100','Calle Tranquila #7890','clave7890','Activo','2024-03-06'),(12,'Gabriela','Pérez','10101101-0','gabriela@example.com','6890-7160','Calle Luminosa #12345','clave12345','Activo','2024-03-06'),(13,'Martín','Gómez','12121121-0','martin@example.com','6890-1880','Avenida Estrellada #67890','clave67890','Activo','2024-03-06'),(14,'Valentina','Martínez','13133131-0','valentina@example.com','6770-9000','Calle Estrellada #23456','clave23456','Activo','2024-03-06'),(15,'Diego','Hernández','14141441-0','diego@example.com','6310-9000','Avenida del Río #78901','clave78901','Activo','2024-03-06'),(16,'Camila','Díaz','15151151-0','camila@example.com','6812-9000','Calle del Sol #34567','clave34567','Activo','2024-03-06'),(17,'Mateo','Torres','11616161-0','mateo@example.com','6110-9000','Calle de la Luna #89012','clave89012','Activo','2024-03-06'),(18,'Isabella','Ramírez','17117171-0','isabella@example.com','9890-9000','Avenida del Viento #45678','clave45678','Activo','2024-03-06'),(19,'Daniel','Sánchez','18181881-0','daniel@example.com','6890-9090','Calle del Mar #123456','clave123456','Activo','2024-03-06'),(20,'Lucía','García','19191191-0','lucia@example.com','6890-9780','Calle de la Playa #678901','clave678901','Activo','2024-03-06'),(21,'Emilio','Rodríguez','20220202-0','emilio@example.com','6891-9000','Avenida del Cielo #234567','clave234567','Activo','2024-03-06'),(22,'Valeria','Pérez','21212112-0','valeria@example.com','6990-9000','Calle del Infierno #789012','clave789012','Activo','2024-03-06'),(23,'Lucas','Gómez','22222222-1','lucas@example.com','6890-9100','Calle del Paraíso #345678','clave345678','Activo','2024-03-06'),(24,'Mariana','Martínez','22323232-0','mariana@example.com','6790-9000','Calle del Edén #890123','clave890123','Activo','2024-03-06'),(25,'Matías','Hernández','24242442-0','matias@example.com','7890-9000','Avenida de los Ángeles #1234567','clave1234567','Activo','2024-03-06'),(26,'Amanda','Díaz','25252522-0','amanda@example.com','6890-9190','Calle de los Sueños #6789012','clave6789012','Activo','2024-03-06');
/*!40000 ALTER TABLE `tb_clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_detallesordenes`
--

DROP TABLE IF EXISTS `tb_detallesordenes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_detallesordenes` (
  `id_detalle` int(11) NOT NULL AUTO_INCREMENT,
  `id_orden` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad_producto` int(11) DEFAULT NULL CHECK (`cantidad_producto` > 0),
  `total_a_pagar` decimal(5,2) NOT NULL CHECK (`total_a_pagar` > 0),
  PRIMARY KEY (`id_detalle`),
  KEY `fk_orden_detalle` (`id_orden`),
  KEY `fk_orden_productos` (`id_producto`),
  CONSTRAINT `fk_orden_detalle` FOREIGN KEY (`id_orden`) REFERENCES `tb_ordenes` (`id_orden`),
  CONSTRAINT `fk_orden_productos` FOREIGN KEY (`id_producto`) REFERENCES `tb_productos` (`id_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_detallesordenes`
--

LOCK TABLES `tb_detallesordenes` WRITE;
/*!40000 ALTER TABLE `tb_detallesordenes` DISABLE KEYS */;
INSERT INTO `tb_detallesordenes` VALUES (1,1,1,2,20.50),(2,2,3,3,15.75),(3,3,2,1,35.25),(4,4,1,4,10.25),(5,5,4,2,30.00),(6,6,3,3,31.50),(7,7,5,1,12.75),(8,8,2,1,11.50),(9,9,1,2,20.50),(10,10,3,1,15.75),(11,11,2,3,35.25),(12,12,1,1,10.25),(13,13,4,2,30.00),(14,14,3,3,31.50),(15,15,5,1,12.75),(16,16,2,1,11.50),(17,17,1,2,20.50),(18,18,3,1,15.75),(19,19,2,3,35.25),(20,20,1,1,10.25),(21,21,4,2,30.00),(22,22,3,3,31.50),(23,23,5,1,12.75),(24,24,2,1,11.50),(25,25,1,2,20.50);
/*!40000 ALTER TABLE `tb_detallesordenes` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER actualizar_existencias_detalle
AFTER INSERT ON tb_detallesordenes
FOR EACH ROW
BEGIN
UPDATE tb_productos SET existencias_producto = existencias_producto - NEW.cantidad_producto
WHERE id_producto = NEW.id_producto;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `tb_marcas`
--

DROP TABLE IF EXISTS `tb_marcas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_marcas` (
  `id_marca` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_marca` varchar(75) NOT NULL,
  `logo_marca` varchar(150) NOT NULL,
  PRIMARY KEY (`id_marca`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_marcas`
--

LOCK TABLES `tb_marcas` WRITE;
/*!40000 ALTER TABLE `tb_marcas` DISABLE KEYS */;
INSERT INTO `tb_marcas` VALUES (1,'Bodegas Torres','torres_logo.jpg'),(2,'Bodegas Vega Sicilia','vega_sicilia_logo.jpg'),(3,'Château Margaux','chateau_margaux_logo.jpg'),(4,'Opus One Winery','opus_one_logo.jpg'),(5,'Domaine de la Romanée-Conti','romanee_conti_logo.jpg'),(6,'Sassicaia','sassicaia_logo.jpg'),(7,'Penfolds','penfolds_logo.jpg'),(8,'Château Lafite Rothschild','lafite_rothschild_logo.jpg'),(9,'Château Haut-Brion','haut_brion_logo.jpg'),(10,'Château d\'Yquem','chateau_dyquem_logo.jpg'),(11,'Gaja','gaja_logo.jpg'),(12,'Antinori','antinori_logo.jpg'),(13,'Mouton Rothschild','mouton_rothschild_logo.jpg'),(14,'Bollinger','bollinger_logo.jpg'),(15,'Louis Roederer','louis_roederer_logo.jpg'),(16,'Moët & Chandon','moet_chandon_logo.jpg'),(17,'Château Latour','chateau_latour_logo.jpg'),(18,'Cloudy Bay','cloudy_bay_logo.jpg'),(19,'Krug','krug_logo.jpg'),(20,'Dom Pérignon','dom_perignon_logo.jpg'),(21,'Penfolds','penfolds_logo.jpg'),(22,'Château Cheval Blanc','cheval_blanc_logo.jpg'),(23,'Château Petrus','petrus_logo.jpg'),(24,'Château Palmer','palmer_logo.jpg'),(25,'Château d\'Issan','chateau_dissan_logo.jpg');
/*!40000 ALTER TABLE `tb_marcas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_niveles_administradores`
--

DROP TABLE IF EXISTS `tb_niveles_administradores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_niveles_administradores` (
  `id_nivel` int(11) NOT NULL AUTO_INCREMENT,
  `nivel` varchar(100) NOT NULL,
  PRIMARY KEY (`id_nivel`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_niveles_administradores`
--

LOCK TABLES `tb_niveles_administradores` WRITE;
/*!40000 ALTER TABLE `tb_niveles_administradores` DISABLE KEYS */;
INSERT INTO `tb_niveles_administradores` VALUES (1,'Administrador Principal'),(2,'Trabajador');
/*!40000 ALTER TABLE `tb_niveles_administradores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_ordenes`
--

DROP TABLE IF EXISTS `tb_ordenes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_ordenes` (
  `id_orden` int(11) NOT NULL AUTO_INCREMENT,
  `id_cliente` int(11) NOT NULL,
  `estado_orden` enum('Entregada','Anulada','Finalizada','Pendiente') NOT NULL,
  `fecha_registro` date NOT NULL DEFAULT current_timestamp(),
  `direccion_orden` varchar(250) NOT NULL,
  PRIMARY KEY (`id_orden`),
  KEY `fk_orden_cliente` (`id_cliente`),
  CONSTRAINT `fk_orden_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `tb_clientes` (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_ordenes`
--

LOCK TABLES `tb_ordenes` WRITE;
/*!40000 ALTER TABLE `tb_ordenes` DISABLE KEYS */;
INSERT INTO `tb_ordenes` VALUES (1,1,'Entregada','2024-03-06','Calle Principal #123'),(2,2,'Pendiente','2024-03-06','Avenida Central #456'),(3,3,'Finalizada','2024-03-06','Calle Secundaria #789'),(4,4,'Entregada','2024-03-06','Calle Lateral #321'),(5,5,'Pendiente','2024-03-06','Avenida Principal #654'),(6,6,'Finalizada','2024-03-06','Calle del Centro #987'),(7,7,'Entregada','2024-03-06','Calle Nueva #1234'),(8,8,'Pendiente','2024-03-06','Calle Vieja #5678'),(9,9,'Finalizada','2024-03-06','Avenida Moderna #9012'),(10,10,'Entregada','2024-03-06','Avenida Antigua #3456'),(11,11,'Pendiente','2024-03-06','Calle Tranquila #7890'),(12,12,'Finalizada','2024-03-06','Calle Luminosa #12345'),(13,13,'Entregada','2024-03-06','Avenida Estrellada #67890'),(14,14,'Pendiente','2024-03-06','Calle Estrellada #23456'),(15,15,'Finalizada','2024-03-06','Avenida del Río #78901'),(16,16,'Entregada','2024-03-06','Calle del Sol #34567'),(17,17,'Pendiente','2024-03-06','Calle de la Luna #89012'),(18,18,'Finalizada','2024-03-06','Avenida del Viento #45678'),(19,19,'Entregada','2024-03-06','Calle del Mar #123456'),(20,20,'Pendiente','2024-03-06','Calle de la Playa #678901'),(21,21,'Finalizada','2024-03-06','Avenida del Cielo #234567'),(22,22,'Entregada','2024-03-06','Calle del Infierno #789012'),(23,23,'Pendiente','2024-03-06','Calle del Paraíso #345678'),(24,24,'Finalizada','2024-03-06','Calle del Edén #890123'),(25,25,'Entregada','2024-03-06','Avenida de los Ángeles #1234567');
/*!40000 ALTER TABLE `tb_ordenes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_productos`
--

DROP TABLE IF EXISTS `tb_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_productos` (
  `id_producto` int(11) NOT NULL AUTO_INCREMENT,
  `id_marca` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `id_administrador` int(11) NOT NULL,
  `nombre_producto` varchar(50) NOT NULL,
  `descripcion_producto` varchar(250) NOT NULL,
  `precio_producto` decimal(8,2) NOT NULL CHECK (`precio_producto` > 0),
  `imagen_producto` varchar(100) NOT NULL,
  `estado_producto` enum('En venta','No disponible') NOT NULL,
  `existencias_producto` int(11) NOT NULL CHECK (`existencias_producto` >= 0),
  `fecha_registro` date NOT NULL DEFAULT current_timestamp(),
  `descuento_producto` decimal(4,2) DEFAULT NULL CHECK (`descuento_producto` < 100),
  PRIMARY KEY (`id_producto`),
  KEY `fk_producto_marca` (`id_marca`),
  KEY `fk_producto_categoria` (`id_categoria`),
  CONSTRAINT `fk_producto_categoria` FOREIGN KEY (`id_categoria`) REFERENCES `tb_categorias` (`id_categoria`),
  CONSTRAINT `fk_producto_marca` FOREIGN KEY (`id_marca`) REFERENCES `tb_marcas` (`id_marca`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_productos`
--

LOCK TABLES `tb_productos` WRITE;
/*!40000 ALTER TABLE `tb_productos` DISABLE KEYS */;
INSERT INTO `tb_productos` VALUES (1,1,1,1,'Vino Tinto Reserva','Vino tinto reserva de la marca Bodegas Torres.',30.00,'vino_tinto_reserva.jpg','En venta',100,'2024-03-06',0.00),(2,2,1,2,'Vino Tinto Gran Reserva','Vino tinto gran reserva de la marca Bodegas Vega Sicilia.',50.00,'vino_tinto_gran_reserva.jpg','En venta',75,'2024-03-06',0.00),(3,3,1,3,'Champagne Brut','Champagne brut de la marca Moët & Chandon.',40.00,'champagne_brut.jpg','En venta',50,'2024-03-06',0.00),(4,4,2,4,'Vino Blanco Joven','Vino blanco joven de la marca Penfolds.',25.00,'vino_blanco_joven.jpg','En venta',120,'2024-03-06',0.00),(5,5,3,5,'Rosado Semidulce','Vino rosado semidulce de la marca Cloudy Bay.',35.00,'rosado_semidulce.jpg','En venta',80,'2024-03-06',0.00),(6,6,4,6,'Cava Extra Seco','Cava extra seco de la marca Freixenet.',20.00,'cava_extra_seco.jpg','En venta',90,'2024-03-06',0.00),(7,7,5,7,'Vino Dulce Natural','Vino dulce natural de la marca Château d\'Yquem.',60.00,'vino_dulce_natural.jpg','En venta',40,'2024-03-06',0.00),(8,8,1,8,'Vino Tinto Crianza','Vino tinto crianza de la marca Château Margaux.',45.00,'vino_tinto_crianza.jpg','En venta',60,'2024-03-06',0.00),(9,9,2,9,'Vino Blanco Reserva','Vino blanco reserva de la marca Antinori.',55.00,'vino_blanco_reserva.jpg','En venta',70,'2024-03-06',0.00),(10,10,3,10,'Rosado Brut Nature','Vino rosado brut nature de la marca Château Latour.',30.00,'rosado_brut_nature.jpg','En venta',85,'2024-03-06',0.00),(11,11,4,11,'Champagne Rosé','Champagne rosé de la marca Louis Roederer.',65.00,'champagne_rose.jpg','En venta',55,'2024-03-06',0.00),(12,12,5,12,'Vino Dulce de Hielo','Vino dulce de hielo de la marca Gaja.',75.00,'vino_dulce_hielo.jpg','En venta',30,'2024-03-06',0.00),(13,13,1,13,'Vino Tinto Roble','Vino tinto roble de la marca Bodegas Muga.',35.00,'vino_tinto_roble.jpg','En venta',65,'2024-03-06',0.00),(14,14,2,14,'Vino Blanco Joven','Vino blanco joven de la marca Bollinger.',30.00,'vino_blanco_joven.jpg','En venta',95,'2024-03-06',0.00),(15,15,3,15,'Rosado Semiseco','Vino rosado semiseco de la marca Château Palmer.',40.00,'rosado_semiseco.jpg','En venta',75,'2024-03-06',0.00),(16,16,4,16,'Cava Brut Nature','Cava brut nature de la marca Louis Roederer.',25.00,'cava_brut_nature.jpg','En venta',100,'2024-03-06',0.00),(17,17,5,17,'Vino Dulce Vendimia Tardía','Vino dulce vendimia tardía de la marca Bodegas Torres.',55.00,'vino_dulce_vendimia_tardia.jpg','En venta',45,'2024-03-06',0.00),(18,18,1,18,'Vino Tinto Crianza','Vino tinto crianza de la marca Domaine de la Romanée-Conti.',75.00,'vino_tinto_crianza.jpg','En venta',60,'2024-03-06',0.00),(19,19,2,19,'Vino Blanco Semidulce','Vino blanco semidulce de la marca Krug.',50.00,'vino_blanco_semidulce.jpg','En venta',80,'2024-03-06',0.00),(20,20,3,20,'Rosado Brut','Vino rosado brut de la marca Opus One Winery.',60.00,'rosado_brut.jpg','En venta',70,'2024-03-06',0.00),(21,21,4,21,'Champagne Extra Brut','Champagne extra brut de la marca Penfolds.',80.00,'champagne_extra_brut.jpg','En venta',50,'2024-03-06',0.00),(22,22,5,22,'Vino Dulce Pedro Ximénez','Vino dulce Pedro Ximénez de la marca Château Haut-Brion.',90.00,'vino_dulce_pedro_ximenez.jpg','En venta',40,'2024-03-06',0.00),(23,23,1,23,'Vino Tinto Gran Reserva','Vino tinto gran reserva de la marca Mouton Rothschild.',100.00,'vino_tinto_gran_reserva.jpg','En venta',30,'2024-03-06',0.00),(24,24,2,24,'Vino Blanco Barrica','Vino blanco barrica de la marca Château Cheval Blanc.',70.00,'vino_blanco_barrica.jpg','En venta',40,'2024-03-06',0.00),(25,25,5,25,'Vino Rosado Espumoso','Vino rosado espumoso de la marca Château d\'Issan.',45.00,'vino_rosado_espumoso.jpg','En venta',55,'2024-03-06',0.00);
/*!40000 ALTER TABLE `tb_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_valoraciones`
--

DROP TABLE IF EXISTS `tb_valoraciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_valoraciones` (
  `id_valoracion` int(11) NOT NULL AUTO_INCREMENT,
  `id_detalle` int(11) NOT NULL,
  `calificacion_producto` int(11) DEFAULT NULL,
  `comentario_producto` varchar(250) DEFAULT NULL,
  `fecha_valoracion` date NOT NULL DEFAULT current_timestamp(),
  `estado_comentario` enum('Habilitado','Deshabilitado') NOT NULL,
  PRIMARY KEY (`id_valoracion`),
  KEY `fk_orden_valoracion` (`id_detalle`),
  CONSTRAINT `fk_orden_valoracion` FOREIGN KEY (`id_detalle`) REFERENCES `tb_detallesordenes` (`id_detalle`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_valoraciones`
--

LOCK TABLES `tb_valoraciones` WRITE;
/*!40000 ALTER TABLE `tb_valoraciones` DISABLE KEYS */;
INSERT INTO `tb_valoraciones` VALUES (1,1,5,'Excelente producto, muy satisfecho con la calidad.','2024-03-06','Habilitado'),(2,2,4,'Buena relación calidad-precio, recomendaría este vino.','2024-03-06','Habilitado'),(3,3,5,'Me encantó este champagne, definitivamente volveré a comprarlo.','2024-03-06','Habilitado'),(4,4,4,'Buen vino blanco, fresco y ligero.','2024-03-06','Deshabilitado'),(5,5,5,'El rosado es delicioso, perfecto para una tarde de verano.','2024-03-06','Habilitado'),(6,6,4,'Buen cava, muy refrescante.','2024-03-06','Habilitado'),(7,7,3,'Regular, esperaba más sabor.','2024-03-06','Habilitado'),(8,8,4,'Buen precio para la calidad.','2024-03-06','Deshabilitado'),(9,9,5,'Fantástico vino tinto.','2024-03-06','Habilitado'),(10,10,4,'Buen sabor y aroma.','2024-03-06','Habilitado'),(11,11,3,'Aceptable, pero esperaba más.','2024-03-06','Habilitado'),(12,12,5,'Increíble calidad, repetiré la compra.','2024-03-06','Habilitado'),(13,13,4,'Muy buen vino, excelente relación calidad-precio.','2024-03-06','Habilitado'),(14,14,5,'El mejor vino que he probado, altamente recomendado.','2024-03-06','Habilitado'),(15,15,4,'Buen producto, entrega rápida.','2024-03-06','Habilitado'),(16,16,3,'Regular, no cumplió completamente mis expectativas.','2024-03-06','Habilitado'),(17,17,5,'Fantástico sabor y presentación.','2024-03-06','Habilitado'),(18,18,4,'Buena calidad, recomendado.','2024-03-06','Deshabilitado'),(19,19,5,'Excelente vino, muy contento con la compra.','2024-03-06','Habilitado'),(20,20,4,'Buen producto, envío rápido.','2024-03-06','Habilitado'),(21,21,3,'No fue lo que esperaba.','2024-03-06','Habilitado'),(22,22,5,'Muy buen vino, lo recomendaría.','2024-03-06','Habilitado'),(23,23,4,'Buen producto, buen servicio.','2024-03-06','Deshabilitado'),(24,24,5,'Gran vino, volveré a comprar.','2024-03-06','Habilitado'),(25,25,4,'Muy satisfecho con la compra.','2024-03-06','Habilitado');
/*!40000 ALTER TABLE `tb_valoraciones` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-06 12:13:26
