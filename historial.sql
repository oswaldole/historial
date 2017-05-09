-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 01-06-2015 a las 19:42:27
-- Versión del servidor: 5.6.12-log
-- Versión de PHP: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `historial`
--
CREATE DATABASE IF NOT EXISTS `historial` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `historial`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alimentadores`
--

CREATE TABLE IF NOT EXISTS `alimentadores` (
  `id_falimentadores` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `turno` char(1) NOT NULL,
  `ficha` int(11) NOT NULL,
  `alimentador` char(10) NOT NULL,
  `perdida_pro` tinyint(1) NOT NULL,
  `descripcion_falla` text NOT NULL,
  `diagnostico_falla` text NOT NULL,
  `accion_correctiva` text NOT NULL,
  `observacion` text NOT NULL,
  `tiempo_perdido` int(11) DEFAULT '0',
  PRIMARY KEY (`id_falimentadores`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `alimentadores`
--

INSERT INTO `alimentadores` (`id_falimentadores`, `fecha`, `turno`, `ficha`, `alimentador`, `perdida_pro`, `descripcion_falla`, `diagnostico_falla`, `accion_correctiva`, `observacion`, `tiempo_perdido`) VALUES
(1, '2014-01-24', 'Z', 5034, 'B1', 0, 'Prueba', 'Prueba', 'Prueba', 'Prueba', 0),
(2, '2014-02-13', 'Z', 4748, 'C1', 1, 'sdasdasda', 'kjsjdsa', 'wdqwdsdasdada', 'sdasdasdasd', 50),
(3, '2014-04-11', 'Z', 0, 'A1', 0, 'ikik', 'ujujuj', 'ujuj', 'uguu', 0),
(4, '2014-04-15', 'Z', 0, 'C1', 1, '', '', '', '', 0),
(5, '2014-05-07', '3', 4462, 'A1', 0, 'Alarma por alta temperatura en la zona del frente.', 'Problemas de ajuste.', 'Se chequean presiones, actuadores, filtros del motor de enfriamiento y todo se encuentra bien, solo se ajusta el màx. del enfriamiento de 20 a 25%, con esto llega al SP y queda en control.', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `archas`
--

CREATE TABLE IF NOT EXISTS `archas` (
  `id_farcha` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `turno` char(1) NOT NULL,
  `ficha` int(11) NOT NULL,
  `archa` char(10) NOT NULL,
  `perdida_pro` tinyint(1) NOT NULL,
  `descripcion_falla` text NOT NULL,
  `diagnostico_falla` text NOT NULL,
  `accion_correctiva` text NOT NULL,
  `observacion` text NOT NULL,
  `tiempo_perdido` int(11) DEFAULT '0',
  PRIMARY KEY (`id_farcha`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `archas_deco`
--

CREATE TABLE IF NOT EXISTS `archas_deco` (
  `id_farchad` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `turno` char(1) NOT NULL,
  `ficha` int(11) NOT NULL,
  `archa_deco` char(10) NOT NULL,
  `perdida_pro` tinyint(1) NOT NULL,
  `descripcion_falla` text NOT NULL,
  `diagnostico_falla` text NOT NULL,
  `accion_correctiva` text NOT NULL,
  `observacion` text NOT NULL,
  `tiempo_perdido` int(11) DEFAULT '0',
  PRIMARY KEY (`id_farchad`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `despaletizadores`
--

CREATE TABLE IF NOT EXISTS `despaletizadores` (
  `id_fdespaletizador` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `turno` char(1) NOT NULL,
  `ficha` int(11) NOT NULL,
  `despaletizador` char(10) NOT NULL,
  `perdida_pro` tinyint(1) NOT NULL,
  `descripcion_falla` text NOT NULL,
  `diagnostico_falla` text NOT NULL,
  `accion_correctiva` text NOT NULL,
  `observacion` text NOT NULL,
  `tiempo_perdido` int(11) DEFAULT '0',
  PRIMARY KEY (`id_fdespaletizador`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `falla_aguat`
--

CREATE TABLE IF NOT EXISTS `falla_aguat` (
  `id_faguat` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `turno` char(1) NOT NULL,
  `ficha` int(11) NOT NULL,
  `cuarto` char(10) NOT NULL,
  `perdida_pro` tinyint(1) NOT NULL,
  `descripcion_falla` text NOT NULL,
  `diagnostico_falla` text NOT NULL,
  `accion_correctiva` text NOT NULL,
  `observacion` text NOT NULL,
  `tiempo_perdido` int(11) DEFAULT '0',
  PRIMARY KEY (`id_faguat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horno`
--

CREATE TABLE IF NOT EXISTS `horno` (
  `id_fhorno` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `turno` char(1) NOT NULL,
  `ficha` int(11) NOT NULL,
  `horno` char(1) NOT NULL,
  `perdida_pro` tinyint(1) NOT NULL,
  `descripcion_falla` text NOT NULL,
  `diagnostico_falla` text NOT NULL,
  `accion_correctiva` text NOT NULL,
  `observacion` text NOT NULL,
  `tiempo_perdido` int(11) DEFAULT '0',
  PRIMARY KEY (`id_fhorno`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Volcado de datos para la tabla `horno`
--

INSERT INTO `horno` (`id_fhorno`, `fecha`, `turno`, `ficha`, `horno`, `perdida_pro`, `descripcion_falla`, `diagnostico_falla`, `accion_correctiva`, `observacion`, `tiempo_perdido`) VALUES
(7, '2014-01-17', 'Z', 5034, 'B', 1, 'Prueba', 'Prueba', 'Prueba', 'Prueba', 50),
(8, '2014-03-07', '0', 5034, '0', 0, '', '', '', '', 0),
(9, '2014-04-03', '0', 0, '0', 0, '', '', '', '', 0),
(10, '2014-04-12', '1', 4462, 'B', 0, 'Técnico indica que la barra de nivel se està moviendo mucho.', 'Alta presión en el refinador.', 'Se abre un poco el damper del refinador, se ajustan tornillos que sujetan la barra de nivel y se corrige la falla.', 'Se trabajó con el técnico el Sr. Cordero.', 0),
(11, '2014-04-30', '1', 4462, 'B', 0, '', '', 'Se ajusta tensiòn y sensibilidad a la barra de nivel, aun queda variando un poco el nivel.', '', 0),
(12, '2014-05-01', '1', 4462, 'B', 0, 'No se puede navegar para cambiar las variables de aire y gas en el controlador del F&P.', 'Controlador del F&P, con teclas de navegación dañadas.', 'Se intercambia pantalla con la del boosting que es solo lectura y quedan bien.', '', 0),
(13, '2014-05-02', '1', 4462, 'B', 0, '', '', 'Se ajusta tensión y sensibilidad a la barra de nivel, pero aun se presenta alarma ocasional por bajo y alto nivel.', '', 0),
(14, '2014-05-04', '2', 4462, 'F', 0, 'Variación de la presión de gas.', 'Actuador con fusible mecánico suelto.', 'Se coloca tornillo al fusible mecànico, se lubrica motor. Trabaja bien por un rato pero luego presenta variaciòn aunque el actuador responde a la salida del controlador, hay que chequear transmisor o regulador.', '', 0),
(15, '2014-05-13', '1', 5004, 'B', 0, 'variacion de lectura de la termocupla de la corona #3', '', 'se realiza limpieza en los contactos, pero la falla continua.', 'Se debe bajar la termocupla para evaluar si se encuentra averiada.\r\n', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hornospre`
--

CREATE TABLE IF NOT EXISTS `hornospre` (
  `id_fhornopre` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `turno` char(1) NOT NULL,
  `ficha` int(11) NOT NULL,
  `hornopre` char(1) NOT NULL,
  `perdida_pro` tinyint(1) NOT NULL,
  `descripcion_falla` text NOT NULL,
  `diagnostico_falla` text NOT NULL,
  `accion_correctiva` text NOT NULL,
  `observacion` text NOT NULL,
  `tiempo_perdido` int(11) DEFAULT '0',
  PRIMARY KEY (`id_fhornopre`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Volcado de datos para la tabla `hornospre`
--

INSERT INTO `hornospre` (`id_fhornopre`, `fecha`, `turno`, `ficha`, `hornopre`, `perdida_pro`, `descripcion_falla`, `diagnostico_falla`, `accion_correctiva`, `observacion`, `tiempo_perdido`) VALUES
(8, '2014-02-25', '0', 5034, '0', 1, 'prueba', 'prueba', 'prueba', 'prueba', 5),
(9, '2014-03-12', 'Z', 5005, 'E', 0, 'Horno siempre se mantiene encendido y no se apaga al llegar al sp lo que ocasiona daño de las piezas de molderias y el horno como tal ', 'Se consigue que la válvula de gas se mantiene activa incluso cuando el controlador corta la alimentación de la bobina de la misma ', 'Se le cambia el diafragma con el resorte y el piloto de la misma se realiza prueba con el mismo sp del controlador y trabaja ok ', 'queda pendiente hacerle mantenimiento a el mismo ya que vibra mucho el motor ', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maquinasis`
--

CREATE TABLE IF NOT EXISTS `maquinasis` (
  `id_fmaquinasis` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `turno` char(1) NOT NULL,
  `ficha` int(11) NOT NULL,
  `maquina` char(10) NOT NULL,
  `perdida_pro` tinyint(1) NOT NULL,
  `descripcion_falla` text NOT NULL,
  `diagnostico_falla` text NOT NULL,
  `accion_correctiva` text NOT NULL,
  `observacion` text NOT NULL,
  `tiempo_perdido` int(11) DEFAULT '0',
  PRIMARY KEY (`id_fmaquinasis`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=78 ;

--
-- Volcado de datos para la tabla `maquinasis`
--

INSERT INTO `maquinasis` (`id_fmaquinasis`, `fecha`, `turno`, `ficha`, `maquina`, `perdida_pro`, `descripcion_falla`, `diagnostico_falla`, `accion_correctiva`, `observacion`, `tiempo_perdido`) VALUES
(1, '2014-02-24', 'Z', 5005, 'F1', 0, 'filtros de todos los panel ESO se encontraban sucio', 'falta de mantenimiento de los filtros de los paneles ESO', 'Se realizo mantenimiento de todos los filtos', 'eso se realizo en todas las maquinas IS de los paneles SERVO de la planta 4', 0),
(2, '2014-02-24', 'Z', 5004, 'C3', 0, 'Problema con el horno de precalentamiento de molden ', 'El motor de aire no se encontraba funcionando', 'Se saca el motor se encontraba el pricionero que sostiene la turbina aislado se coloca otro y quedo bien, se realiza prueba y quedo bien.', '', 0),
(3, '2014-02-25', 'Z', 5005, 'C2', 0, 'Se detiene la Bailarina o scoop', 'Se dispara el variador y emite la falla 01', 'ajustar las conexiones de control y de potencia ', '', 0),
(4, '2014-02-25', 'Z', 5004, 'C1', 0, 'Problema con el vacio en la seccion #10', 'Se realiza prueba con el probado se nota que no hay señal, se revisa la tarjeta de salida de la COM-SOC II y esta buena.', 'Se cambia el conector hembra, ya se rpoduce señal en el probador pero a la base no, se cambia el mismo y tambien la valvula de vacio. Se realizo prueba y queda bien', '', 0),
(6, '2014-02-28', '1', 4462, 'C1', 0, 'Motor de la giratoria parado.', 'Cuchilla dañada.', 'Se puentea cuchilla y arranca sin problemas.', 'Se trabajò. con los Sres. Ontiveros, Lima y Briceño. Queda pendiente cambiar la cuchilla.', 0),
(7, '2014-02-28', '1', 4462, 'F1', 0, 'Motor empujador de la secc. 2 no retrae.', 'Cabezal del empujador dañado.', 'Se cambia cabezal y queda operativo.', 'Falla mecànica.', 0),
(8, '2014-03-05', 'Z', 5005, 'C3', 0, 'El enfriamiento de el transportador frontal se encuentra en 20 "H2O y no varia por el MCS. y no pasa a automático Se trata de realizar ajustes por el MCS sin resultados ', 'La variable de campo esta muy por encima del sp, razón por la cual no se pasa a automático, ', 'Se coloca manualmente el actuador en el mínimo de apertura luego se pasa a automático en el selector, y por el MCS se coloca en automático también entrando en control la variable ', 'Se trabaja con el señor Yoel Briceño ', 0),
(9, '2014-03-06', '1', 4594, 'D2', 0, 'Empujador de la seccion 6 parado en falla.', 'Cable del potencia dañado,', 'Se cambia motor y cable del empujador de la seccion 6 y se arranca la seccion.', 'Se trabaja con el Sr Lima.', 0),
(10, '2014-03-06', 'Z', 4939, 'D1', 0, 'Seccion 5 problema en los mecanismo ', 'bloque 018 valvula 4 dañada', 'Se cambia queda operativo.', '', 0),
(11, '2014-03-07', 'Z', 4939, 'D1', 0, 'Motor parado zona 2 ', 'por bajo nivel de resolver', 'se cambia motor y cables y queda operativo', 'Queda pendiente en una parada de seccion montar la tapa protectora que los tecnicos la tienen.', 0),
(12, '2014-03-12', 'Z', 5005, 'F1', 0, 'no hay aire de maquina en la sección 6 ', 'válvula pegada no acciona el pistón que deja pasar el aire de enfriamiento de maquina ', 'se cambia la válvula y se resuelve el problema ', 'esto es recurrente por el tipo de válvula los operadores suelen colocarle alambre a la válvula para mantenerla activa ', 0),
(13, '2014-04-01', 'Z', 4939, 'D2', 0, 'Valvula zona 4 dañada', 'Se coloca conector a termocupla de temperaturas de premoldes, se hacen pruebas pero el personal no queda conforme mañana se probara el udc con la maleta de pruebas. se trabaja con el Sr. Lima', '', '', 0),
(14, '2014-04-01', 'Z', 4939, 'D1', 0, 'Termocupla de premolde dañada', '', 'Se cambia la termocupla', 'Queda pendiente probar con el UDC', 0),
(15, '2014-04-02', 'Z', 4939, 'D1', 0, 'Cooling wind no corta', 'falla en la valvula', 'Se cambia válvula de cooling wind sección 9 por no hacer el corte del aire.', '', 0),
(16, '2014-04-02', 'Z', 4939, 'D2', 0, 'Seccion parada por choque de mecanismo', 'Se revisa Bloque de válvula de la sección 4 por presentar fallo en los accionamientos debido a que había mucha fuga de aire en el mismo', 'Falta un tornillo de agarre del bloque se le coloca y se soluciona la falla.', '', 0),
(17, '2014-04-02', 'Z', 4939, 'D2', 0, '', '', ' Se cambia filtro de enfriamiento de Com-Soc II de la D1 y D2', '', 0),
(18, '2014-04-11', '1', 4462, 'D1', 0, 'Motor empujador de la secc. 2 parado.', 'Low Level Resolver', 'Se cambia motor y cables, pero la falla continúa, se coloca cable cable largo de resolver, se deja por fuera en prueba, queda pendiente canalizar si la falla no se repite.', 'Se trabajò con los Sres. Marquez y Ontiveros.', 0),
(19, '2014-04-12', '1', 4462, 'D2', 0, 'No funciona el abre corona en la secc. 4.', 'Bloque de válvulas dañado, error en válvula 11.', 'Se cambia bloque de válvulas y queda trabajando bien.', 'Se trabaja con el Sr. Alvarenga.', 0),
(20, '2014-04-12', '1', 4462, 'C2', 0, 'Motor de la bailarina parada.', 'Variador Commander en falla.', 'Se ajusta tarjeta de control del variador, se resetea, se arranca el motor y ajusta tiempo de entrega en el keypad.', 'Esto se realizò el dìa 11/04/14', 0),
(21, '2014-04-13', '1', 4462, 'E3', 0, 'Inicialmente falla en enfriamiento de pistò B en la secc. 2.', 'Salida de Icom dañada.', 'Se observa error en la válvula 302, se determina que el problema es el Icom, se cambió el conector de la válvula ya que le faltaba el diodo y esto hace que se dañe la salida del Icom, se cambió el Icom y desaparece el error, se prueba manual pero no funciona el enfriamiento de pistòn A (Vàlvula 301), se encuentra vàlvula ross pegada se activa manual con una llave allen y se despega, se prueba y queda trabajando, se arranca la secc y no cierra el molde, se cambia bloque de válvulas, se arranca, pero luego se produce un error en la válvula 6 subida de pistón, se cambia nuevamente el bloque y queda operativa la secc.', 'Se trabajó con el Sr. Alvarenga.', 0),
(22, '2014-04-13', '1', 4462, 'E1', 0, 'No baja el pistón B en la secc. 9.', 'Válvula # 17 del bloque dañada.', 'Se cambia la válvula y se resuelve la falla.', 'Se trabajó con el Sr. Alvarenga.', 0),
(23, '2014-04-14', '2', 4610, 'D1', 0, 'parada programada   cambio  de   tarjeta DMC     ', 'falla  de bajo nivel de resolver ', 'cambio de tarjeta  DMC ', '', 0),
(24, '2014-04-16', 'Z', 4748, 'A1', 0, '', '', '', 'Se bajan y limpian tarjetas DMC y ventiladores de la máquina, se trabaja con Adriana Coiza', 0),
(25, '2014-04-16', 'Z', 4939, 'D2', 0, '', '', 'Se baja las tajetas DCM, Amplifier y ventiladores de enfriasmiento del panel ESO se trabaja con Cruz, Jairo y Adriana', '', 0),
(26, '2014-04-23', '2', 4636, 'E1', 0, 'Motor de transportador de cruce parado', 'Sistema IDS genera falla 7801 MOTOR OVERCURRENT en el CROSS CONVEYOR, se realiza chequeo del motor encontrando una de las fases en la bornera del motor con cable quemado y a tierra ', 'Se empalma el cable en la Bornera y se aisla nuevamente', 'En esta zona justo donde esta la bornera cae justo los envases que pudieran pasar derecho en el transportador, seria bueno hacerle una proteccion al motor para que esto no vuelva a ocurrir', 0),
(27, '2014-05-01', '1', 4462, 'E1', 0, '', '', 'Por solicitud del técnico se sube presión de enfriamiento de pistón de 52 a 65 Psi.', '', 0),
(28, '2014-05-01', '1', 4462, 'B1', 0, 'No funciona el embudo en la secc. 3 de la Màq. B1.', 'Bloque de válvulas con la válvula 6 pegada.', 'Se cambio el bloque de válvulas.', 'Se trabajó con el Sr. Castillo.', 0),
(29, '2014-05-02', '1', 4462, 'D2', 0, 'No funciona el rechazo de envases pegados.', 'Receptor del làser desalineado.', 'Se alinea receptor, se disminuye un poco el espacio entre envases y se ajusta delay.', '', 0),
(30, '2014-05-02', '1', 4462, 'C1', 0, '1.- Motor empujador de la secc. 1 parado por falla en la retracción.\r\n2.- Motor empujador de la secc. 1 tumba los envases.', '1.- Falso contacto en la válvula respectiva.\r\n2.- Problemas con el resolver.', '1.- Se ajusta conector y queda trabajando bien.\r\n2.- Se ajusta tuning, queda trabajando regular, tiene la inercia al máximo y en la posición home no se estabiliza.', '', 0),
(31, '2014-05-03', '1', 4462, 'D2', 0, '', '', 'Se llama al personal de refrigeraciòn por dañarse aire acondicionado del control de peso de la Màq. D2.', '', 0),
(32, '2014-05-04', '3', 5004, 'C1', 0, 'Problema con el contrololador de inversores ZECCHETTI en la C1', 'Se recibe el turno con problema con el controlador de inversores (ZECCHETTI) de la C1 ya que al momento de arrancar los motores se para a los 10 segundo indicando falla en la parada de emergencia (botton negro) ubicado en la entrada de la kombi izquierdo, se revisa los contactos y la señal del cable (Nº11001) de entrada  que va ubicado en el modulo de entrada A1/2-2 del PLC y están bien, se cambia el modulo y la falla continua, se intercambia la señal (cuyo cable Nº9001) de la parada del lado derecho y ahora genera la alarma se genera de ese lado.', 'Se desconecta el cable Nº11001 y se realiza un puente del cable Nº9001 a la entrada A1/2-2, la alarma se borra y permite que los motores funciones sin inconveniente. ', 'La parada del lado izquierdo no esta funcionando. Se debe revisar el cableado completo del cable Nº11001.', 0),
(33, '2014-05-07', '3', 4462, 'C1', 0, 'No funciona el rechazo de envases pegados.', 'Cabezales del làser desalineados.', 'Se alinea receptor y queda trabajando bien.', '', 0),
(34, '2014-05-07', '3', 4462, 'C3', 0, 'Técnico indica que el vacío se queda pegado ocasionalmente en la secc. 5.', 'Problema mecánico.', 'Se revisa la válvula neumática y trabaja bien, aun así se cambia por otra y el problema continúa.', '', 0),
(35, '2014-05-07', '3', 4462, 'E3', 0, 'No funciona el rechazo de envases pegados.', 'Cabezales desalineados.', 'Se limpia cabezal del receptor, se alinea y queda trabajando bien.', '', 0),
(36, '2014-05-08', '3', 4462, 'C2', 0, 'Paran la secc. 2 y la gota continuò cayendo.', 'Vàlvula del cargagotas pegada.', 'se pulsaron todos los switches que activan el rechazo de la secc. tanto de la Roc Box como Com Soc II, pero continuó igual, se observa la vàlvula cargagotas y si corta la señal pero no se activa, se prueba manual y tampoco funciona ya que se encuentra pegada, se cambia la misma y queda trabajando bien.', '', 0),
(37, '2014-05-08', '3', 4462, 'C1', 0, 'No funciona el cooling wind en la secc. 6.', 'Vàlvula pegada.', 'Se cambia vàlvula y queda operativo.', '', 0),
(38, '2014-05-09', '3', 4462, 'F1', 0, 'Se recibe Màq. parada.', 'Falla de combustiòn en el horno.', 'Se trabaja en arranque de la Màq, se resetea falla de tijeras, primero de following error, luego de drive, se ajusta drive en el panel y cables del motor y se logra arrancar.', '', 0),
(39, '2014-05-09', '3', 4462, 'E2', 0, 'Motor empujador de la secc. 4 parado.', 'Falla de retracciòn.', 'Se cambia vàlvula, conector, se corta parte del cable, se coloca nuevamente el conector y queda trabajando bien.', 'Queda pendiente colocar el protector del conector ya que no se pelò el cable lo suficiente para colocarlo porque se encuentra tostado. ', 0),
(40, '2014-05-09', '3', 4462, 'D2', 0, 'Se bloquea secc. 4 por abrir lento el premolde.', 'Problemas con el bloque de vàlvulas.', 'Se cambia bloque de vàlvulas Nro. 015 y queda trabajando bien.', 'Se trabajò con el Sr. D. Arias.', 0),
(41, '2014-05-09', '3', 4462, 'E1', 0, 'No funciona el vacìo en la secc. 9.', 'Cables de la base en corto.', 'Se limpia conector, se separan los cables que se encontraban en corto y queda operativo.', '', 0),
(42, '2014-05-09', '1', 5004, 'D1', 0, 'Se encontro cable CS2-0212 (ICOM-ROCBOX)', '', 'Se mete cable de la ROC-BOX en la seccion #5 de la D2. Se trabaja con Alejandro M y Carlos M.', '', 0),
(43, '2014-05-09', '1', 5004, 'C1', 0, 'Motor empujador con low level resolver', '', 'Se cambia motor y cable al arrancar el mismo presenta falla por bus de sobre corriente, se cambia el cable de potencia, se realiza prueba y quedo bien.', 'Se trabaja con Alejandro M.', 0),
(44, '2014-05-10', '3', 4462, 'D2', 0, 'Motor empujador de la secc. 8 parado.', 'Falla de drive y DMC.', 'Se trabaja con el Sr. W. Vivas en falla del motor empujador secc. 8 de la Màq. D2, ya el habìa cambiado Drive, Motor, cables y se estaban realizando pruebas con otro cable largo de resolver, pero la falla continúa, el motor estando en run no se mueve y algunas veces da falla de following error. Se cambian DMC y Drive y el motor comienza a trabajar, se monta en la secc, pero no se logra ajustar el tuning ya que le falta fuerza al motor, se prueba en el taller el que estaba inicialmente en la màq. y funciona bien, se monta en la secc. y queda trabajando bien.', '', 0),
(45, '2014-05-12', '1', 5004, 'D1', 0, 'Presenta falla de poco aire de plancha muerta en la seccion #1.', 'El tecnico me indica cambiar la valvula piloto para descartar falla', 'Se cambia la valvula piloto pero aun tiene el mismo problema', 'se debe cambiar o realizar mantenimiento a la valvula mecanica.', 0),
(46, '2014-05-12', '1', 5004, 'D2', 0, 'Problema de con el vacio en las secciones # 2 y 4', '', 'Se cambia las valvulas de vacio.', '', 0),
(47, '2014-05-12', '1', 5004, 'E1', 0, 'Se encuentra averiado el pulsador NO (start) de la COM-SOC II en la seccion #10', '', 'Se cambia el pulsador al momento del cambio de trabajo.', '', 0),
(48, '2014-05-18', '2', 4462, 'D2', 0, 'Roc Box II secc. 2 con boton de parada de emergencia dañado.', 'Roc Box II dañada.', 'Se cambia Roc Box y la que se monta tiene la parada de emegencia activa, se cambia nuevamente y queda trabajando bien.', '', 0),
(49, '2014-05-24', '2', 5004, 'D2', 0, 'Se realiza el apoyo a la falla de la sincronizacion de la maquina D2, que en el panel indicaba que estaba trabajando bien pero físicamente no. ', '', 'se realiza varia pruebas de medicion en la tarjeta (machine syncronization box) se cambia la tarjeta CS2-045 y la falla continua se realiza medicion en los terminales 15 (+RSTDEG), 16 (-RSTDEG), 19 (+RGTIND) y 20 (-RGTIND), y llegan las señales bien a la tarjeta, se chequea el cable CS2-0206 (comunica a la J-BOX TO) y se encontraba la señal abierta en los terminales 15-C,16-D y 19-J,20-K. se Se realiza el apoyo a la falla de la sincronizacion de la maquina D2, que en el panel indicaba que estaba trabajando bien pero físicamente no. cambia el cable y quedo bien. Se trabaja con los Srs. Geman O, Carlos M y Oscar L.', '', 0),
(50, '2014-05-25', '2', 5004, 'F1', 0, 'problema con la valvula 302 en la seccion #5', '', 'finalizando el 1er turno se cambio el bloque por problema de bafle pero la falla era mecanica. el bloque #015 que se llego a colocar no genera señal a la valvula se vuelve a montar el bloque anterior y quedo bien. Se trabaja con el mecanico de turno', '', 0),
(51, '2014-05-25', '2', 5004, 'D2', 0, 'Se recibe el llamado por mal temple en la D2', 'se observa que el motor de combustion del archa se encontraba apagado se realiza medicion a los contactos auxiliares del contactor y tenia falso contacto', 'Se comunica con el electricista a ver si tenia dicho repuesto en el taller me indica que debe tener el Sr. Quevedo, se puentea los cable para que no se apague el motor.\r\nNota: Se debe colocar los contactos auxiliares del contactor allen bradley nuevo.\r\n', '', 0),
(52, '2014-05-29', 'Z', 4678, 'C3', 0, 'El tecnico informa problemas con el manejo en la seccion 2 y 7', 'se consiguen la valvula y la base de de aire guia 2 malas ', 'Se cambia las bases y las valvulas y queda trabajando bien', '', 0),
(53, '2014-05-31', '3', 4462, 'C1', 0, 'No llega tensiòn al machine control panel.', 'Cortocircuito en el CMC.', 'Se desconecta CMC, se carga la Màq. mientras se repara el CMC, luego se conecta y queda funcionando bien.', 'Se trabajò con los Sres. Ontiveros, Lima, Marquez, Vivas y Lezama', 0),
(54, '2014-05-31', '3', 4462, 'C1', 0, 'Màq. parada de manera programada.', 'Salida del pressure switch de aire de Màq. activada.', 'Se desconecta cable en el punto 11 del TB1 del machine control panel, y se arranca la màq.', 'Queda pendiente determinar si el pressure switch del aire de màq. està dañado ya que la presiòn se mantiene en 43 inH2O', 0),
(55, '2014-05-31', '2', 4636, 'C1', 0, '7:00 pm aprox, Inicialmente rechazo de maquina no funciona para ninguna seccion y la maquina no comunica con el MOC', 'Falla del CMC de la maquina y las secciones no enlazan con el MOC', 'Se reinicia el CMC pero el mismo no arranca, se cambia por el que esta en banco de pruebas en el taller y arranca correctamente pero la seccion 3 no enlaza con el sistema y no activa el rechazo de maquina para esta seccion luego de la lubricacion, se reinicia la ComSocI de la seccion 3 y la misma no carga, se realizan varias pruebas cambiando la caja ComSoc en 2 oportunidades y la falla continua, se cambia el CMC por el ubicado en la B1 y las secciones cargan al sistema pero se cae la señal del cargagota, se realizan pruebas encontrando que el CMC montado tumba la tension del cargagota ya que al desconectar la CMC el cargagota trabaja correctamente, se cambia el backplane del cmc y se corrige la falla, la maquina queda trabajando correctamente, mientras esto ocurre se genera un problema mecanico en la cadena del transportador frontal, mecanico queda solucionando el mismo para cargar la maquina', 'Se trabaja con el apoyo de los sres Ontiveros, Lima, Marquez y lezama que se encontraban en planta.', 0),
(56, '2014-06-01', '1', 5004, 'D2', 0, 'Falla en la COM-SOC II', 'se observa que el CPU (08-00-2B-9F-9E-AB) se encuentra en corto', 'se limpia el corto y se quita el corto circuito a la tarjeta, se realiza prueba y quedo bien. Se llega a montar en campo a las 13:15, se trabaja con Jairo R.', '', 0),
(57, '2014-06-03', 'Z', 4678, 'C3', 0, 'La valvula Blanktrip de la seccion 3 presenta problemas ya que el premolde no baja, se revisa y se encuentra la bobina mala pero la mecanica estaba mala.', 'Se consigue la valvula mecanica mala', 'Se cambia la valvula mecanica junto al mecanico de planta y queda trabajando bien', '', 0),
(58, '2014-06-03', 'Z', 4678, 'C1', 0, 'Cilindro de piston cavidad B no sube', 'valvula 8 del bloque de valvula mala', 'Se cambia el bloque y queda trabajando bien', 'El bloque se cambio en 2 oportunidades ya que el primer bloque fallo', 0),
(59, '2014-06-03', 'Z', 4678, 'C1', 0, 'cooling wing no activa', 'cable de la solenoide partido', 'Se conecta nuevamente con un punto de regleta y queda trabajando bien', '', 0),
(60, '2014-06-03', 'Z', 4678, 'C1', 0, 'Resistencias del tuner cardinal en corto, los cables internos quemados', 'Se esta trabajando en la reparacion de las mismas', '', '', 0),
(61, '2014-06-03', 'Z', 5005, 'E2', 0, 'en varias secciones el vació no funciona y una seccion no tiene válvula ', 'las bases deterioradas y otras secciones con válvulas dañadas, la seccion 1 no tiene aire la válvula mecánica no tiene conexión de alimentación de aire comprimido  ', 'se bajan 4 bases se reparan dos y se limpian dos se cambian 6 válvulas y las secciones quedaron operativas ', '', 0),
(62, '2014-06-04', 'Z', 5005, 'E2', 0, 'el rechazo por seccion no funciona correctamente y el rechazo de botellas pegadas tampoco funciona ', 'los tiempos de reject están erróneos y el power assist esta desajustado', 'se ajustan los tiempos por seccion en el orden de la maquina, se chequean y todo bien, se ajusta el delay del power assist y todo ok ', 'se trabaja con alejandro martinez y german ontiveros ', 0),
(63, '2014-06-04', 'Z', 5005, 'F1', 0, 'se detiene la maquina por problemas en el mecanismo de las tijeras al intentar arrancar da falla de bus overcurrent ', 'se ecuentra cable de potencia deteriorado(golpeado o pisado) ', 'se cambia el cable y se arranca sin novedad ', '', 0),
(64, '2014-06-05', 'Z', 4678, 'C1', 0, 'Power Assistant rechazaba envases buenos', 'Cabezal desalineado', 'Se alinea el mismo y queda trabajando bien', '', 0),
(65, '2014-06-07', '2', 5004, 'F1', 0, '- Se recibe el llamado a las 8:10pm que la seccion #1 de la F1 que se paro, se observa que no habia imagen del display de la COM-SOCII,', '', 'se apaga y se vuelve a prender el ICOM y la falla continua, se cambia el mismo y igual, se cambia el cable CS2-0210 (ICOM-COMSOCII) y la falla perciste. Se baja la COM-SOC II se lleva para el taller, se chequea los condensadores de proteccion del CPU (0000F851B839) todos se encontraba en corto se saca la tarjeta de memoria RAM, se vuelve a medir dicho componentes y se quita el corto, se cambia la memoria RAM, se realiza prueba y quedo bien. Se coloca en marcha a las 10:05pm.', '', 0),
(66, '2014-06-07', '1', 4636, 'C1', 0, 'Motor de empujador de la seccion 7 tumba los envases lo que genera mal manejo en el transportador frontal', 'Motor con mucha vibracion', 'Se trata de ajustar el tunning pero sin resultados positivos, se decide cambiar motor y cables, se realiza el cambio con ayuda del tecnico de la maquiba ya que el mecanico se encontraba ocupado en la c3', 'El motor esta bien, aqui fallo nuevamente los cables del cable de resolver que se desprendieron.', 0),
(67, '2014-06-09', 'Z', 4678, 'B1', 0, 'El rechazo de maquina no trabaja correctamente, no rechaza ningun envase', 'CMC mala', 'Se cambia la CMC y queda trabajando correctamente', '', 0),
(68, '2014-06-09', 'Z', 4678, 'C1', 0, 'power assistant no estaba trabajando ', 'power assistant estaba apagado', 'Se prende se limpian los cabezales y queda trabajando correctamente', '', 0),
(69, '2014-06-09', 'Z', 4678, 'C2', 0, 'Transportador de cruce con mucha velocidad y el estaker dejaba un envase', '', 'se le bajan 2 HZ al transportador y queda trabajando bien', '', 0),
(70, '2014-06-09', 'Z', 4678, 'C2', 0, 'problemas con la vaulvula 301', 'bloque de valvulas malo', 'Se cambia el bloque y queda trabajando bien', 'Se trabaja junto a Y Briceño', 0),
(71, '2014-06-09', 'Z', 5005, '0', 0, 'problemas con el vació en la maquina E1 por encima del sp', 'la válvula mariposa acoplada al actuador de vació no cierra completamente ', 'se le notifica al personal de ingenieria el cual es bajada y se limpia en el dpto de moldes la montan nuevamente y se ajusta la varilla del actuador para una apertura de 0 % y 100 % se cierra 4 vueltas la válvula principal y se chequea el vació en el mcs y trabaja ok se mantiene entre 13.7 y 14.5 para un sp de 14', '', 0),
(72, '2014-06-10', 'Z', 4678, 'C2', 0, 'horno de precalentamiento apagado', 'UDC apagado', 'Se prende el UDC y se ajusta el SP a 250 queda trabajando bien', '', 0),
(73, '2014-06-11', 'Z', 4688, 'E1', 0, 'El intendente reporta que el control de peso no responde.', 'Se encontró el cable del potenciometro de posicion del tubo desprendido por lo que el sistema no puede hacer control sobre el mismo.', 'Se repara el cableado y coloca en funcionamiento.', 'Se hace verificacion del funcionamiento y se deja operativo.', 0),
(74, '2014-06-19', 'Z', 4678, 'C3', 0, '\r\nError en la valvula cooling wing', 'Se consigue la base de la valvula mala, se cambia la base, luego presenta problemas con los mecanismos, se encuentra el cable del bloque malo, se cambia este, luego se cambia el Icom por no generar la salida 53, se cambia este y luego de unos minutos se vuelve a dañar, se vuelve a cambiar el Icom se le coloca un diodo a la solenoide de la valvula y en esta ocacion queda trabajando bien, se trabaja junto a J daza, J regalado, W vivas, A andersen. Se deja el mecanico trabajando en la seccion por problemas con la pinza y el gato', '', '', 0),
(75, '2014-06-23', 'Z', 4688, 'C3', 0, 'Falla del Icom de la secciòn 1, presenta error de la V305 coolin wind.\r\n', 'Salida de Cooling Wind dañada.', 'Se reemplaza Icom por una reprada en taller y queda operativa la seccion.', 'Se bajo la comsoc de la misma seccion, para hacer la reparación y pruebas del Icom, Y. Jimenez realiza la reparacion y pruebas del Icom. ', 0),
(76, '2014-07-03', 'Z', 5005, 'D2', 0, 'se detiene empujador de la seccion 7 con falla de bus overcurrent ', 'Se resetea la falla en varias oportunidades sin encontrar resultado se cambia drive y esta vez el motor retrae y contrae pero no se mueve se prueba motor afuera con otro cable y funciona correctamente se determina que la falla es por cable', 'Se procede a cambiar el motor y cable dejando operativa la seccion y a la orden de producción ', 'Se trabaja con el Sr Alexander los drive bajados y el motor bajados deben ser probados ya que probablemente estén en buenas condiciones ', 0),
(77, '2014-07-03', 'Z', 5005, 'F1', 0, 'stalker tumba envases ', 'se observa que la barra del alimentador de archa tiene un desperfecto se le notifica al mecanico la problematica', 'el mecanico procede a su montaje y se procede al arranque de el alimentador sin mas novedad queda ok ', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maquinas_deco`
--

CREATE TABLE IF NOT EXISTS `maquinas_deco` (
  `id_fmaquinad` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `turno` char(1) NOT NULL,
  `ficha` int(11) NOT NULL,
  `maquina_deco` char(10) NOT NULL,
  `perdida_pro` tinyint(1) NOT NULL,
  `descripcion_falla` text NOT NULL,
  `diagnostico_falla` text NOT NULL,
  `accion_correctiva` text NOT NULL,
  `observacion` text NOT NULL,
  `tiempo_perdido` int(11) DEFAULT '0',
  PRIMARY KEY (`id_fmaquinad`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `maquinas_deco`
--

INSERT INTO `maquinas_deco` (`id_fmaquinad`, `fecha`, `turno`, `ficha`, `maquina_deco`, `perdida_pro`, `descripcion_falla`, `diagnostico_falla`, `accion_correctiva`, `observacion`, `tiempo_perdido`) VALUES
(1, '2014-04-01', 'Z', 4939, '', 0, 'Motor de entrada de envases se detiene', 'motor caliente', 'Se revisa los parámetros en el variador y están bien, los mecanicos quedan en revisión de la caja reductora ', '', 0),
(2, '2014-04-12', '1', 4462, '', 0, 'Decoradora no arranca.', 'Variador con falla de sobrecorriente.', 'Se resetea la falla en el variador y arranca sin problemas.', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paletizadores`
--

CREATE TABLE IF NOT EXISTS `paletizadores` (
  `id_fpaletizador` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `turno` char(1) NOT NULL,
  `ficha` int(11) NOT NULL,
  `paletizador` char(10) NOT NULL,
  `perdida_pro` tinyint(1) NOT NULL,
  `descripcion_falla` text NOT NULL,
  `diagnostico_falla` text NOT NULL,
  `accion_correctiva` text NOT NULL,
  `observacion` text NOT NULL,
  `tiempo_perdido` int(11) DEFAULT '0',
  PRIMARY KEY (`id_fpaletizador`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `paletizadores`
--

INSERT INTO `paletizadores` (`id_fpaletizador`, `fecha`, `turno`, `ficha`, `paletizador`, `perdida_pro`, `descripcion_falla`, `diagnostico_falla`, `accion_correctiva`, `observacion`, `tiempo_perdido`) VALUES
(1, '2014-03-05', '0', 5005, 'P10', 0, 'Transportador de entrada al paletizador con mucha velocidad lo que ocasionaba envases partidos ', 'velocidad de referencia muy alta, el mecánico indica que eso ocurre mucho los fines de semana y días feriados', 'Se procede a bajar la velocidad y a bloquear los parámetros ', '', 0),
(2, '2014-03-11', 'Z', 4939, 'P1', 0, 'transportador de salida de producción no se detiene, ', 'foto celda de salida del ascensor desconectada. ', 'Se conecta el cable de señal. se revisa la señal en el PLC I:3/7 queda operativa.', '', 0),
(3, '2014-05-11', '3', 4462, 'P0', 0, 'Falla en el variador del ascensor por sobrecorriente al momento de subir la paleta.', 'El freno se libera un poco tarde.', 'Se aumenta el tiempo de aceleración a 5 s', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rutina_agua`
--

CREATE TABLE IF NOT EXISTS `rutina_agua` (
  `id_rutina_agua` int(11) NOT NULL AUTO_INCREMENT,
  `ficha` int(6) NOT NULL,
  `fecha` date NOT NULL,
  `turno` varchar(1) NOT NULL,
  `cuarto` varchar(3) NOT NULL,
  `bomba` varchar(1) NOT NULL,
  `lectura_inicial` float NOT NULL,
  `lectura_final` float NOT NULL,
  `cantidad_aceite` float NOT NULL,
  `cantidad_agua` float NOT NULL,
  `relacion` float NOT NULL,
  `observacion` text NOT NULL,
  PRIMARY KEY (`id_rutina_agua`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Volcado de datos para la tabla `rutina_agua`
--

INSERT INTO `rutina_agua` (`id_rutina_agua`, `ficha`, `fecha`, `turno`, `cuarto`, `bomba`, `lectura_inicial`, `lectura_final`, `cantidad_aceite`, `cantidad_agua`, `relacion`, `observacion`) VALUES
(4, 5004, '2014-05-12', '1', 'ABC', '1', 1907750, 1907770, 39, 43.848, 1124.31, 'Se cambia la bomba #2 a Bomba #1.'),
(5, 5004, '2014-05-12', '1', 'DEF', '1', 2647620, 2647650, 94, 109.62, 1166.17, 'Se cambia la bomba #2 a la bomba #1 y de agua suavizada de la Bomba #4 a la bomba #3.'),
(7, 5004, '2014-05-13', '1', 'ABC', '1', 1910380, 1910390, 42, 47.25, 1125, ''),
(8, 5004, '2014-05-13', '1', 'DEF', '1', 2653980, 2654010, 93, 107.352, 1154.32, ''),
(10, 4462, '2014-05-13', '2', 'ABC', '1', 1911360, 1911380, 48, 57.078, 1189.12, ''),
(11, 4462, '2014-05-13', '2', 'DEF', '1', 2656620, 2656640, 92, 111.51, 1212.07, ''),
(12, 4462, '2014-05-15', '2', 'ABC', '1', 1913910, 1913930, 43, 51.786, 1204.33, ''),
(13, 4462, '2014-05-15', '2', 'DEF', '1', 2663830, 2663860, 96, 114.912, 1197, ''),
(14, 5004, '2014-05-17', '3', 'ABC', '1', 1920010, 1920030, 0, 50.274, 0, ''),
(15, 5004, '2014-05-18', '3', 'ABC', '1', 1922960, 0, 0, -7268770, 0, ''),
(16, 5004, '2014-05-18', '3', 'ABC', '1', 1922960, 1922970, 47, 53.676, 1142.04, ''),
(17, 5004, '2014-05-18', '3', 'DEF', '1', 2684530, 2684560, 94, 109.998, 1170.19, ''),
(18, 4462, '2014-05-30', '3', 'ABC', '1', 19557100, 19557100, 48, 57.456, 1197, ''),
(19, 4462, '2014-05-30', '3', 'DEF', '1', 2770140, 2770170, 97, 118.314, 1219.73, ''),
(20, 4462, '2014-05-31', '3', 'ABC', '1', 1959070, 1959090, 57, 68.796, 1206.95, ''),
(21, 4462, '2014-05-31', '3', 'DEF', '1', 2777620, 2777650, 91, 111.51, 1225.38, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `silo`
--

CREATE TABLE IF NOT EXISTS `silo` (
  `id_fsilo` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `turno` char(1) NOT NULL,
  `ficha` int(11) NOT NULL,
  `silo` char(1) NOT NULL,
  `perdida_pro` tinyint(1) NOT NULL,
  `descripcion_falla` text NOT NULL,
  `diagnostico_falla` text NOT NULL,
  `accion_correctiva` text NOT NULL,
  `observacion` text NOT NULL,
  `tiempo_perdido` int(11) DEFAULT '0',
  PRIMARY KEY (`id_fsilo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `silo`
--

INSERT INTO `silo` (`id_fsilo`, `fecha`, `turno`, `ficha`, `silo`, `perdida_pro`, `descripcion_falla`, `diagnostico_falla`, `accion_correctiva`, `observacion`, `tiempo_perdido`) VALUES
(1, '2014-02-04', 'Z', 5034, 'A', 0, 'Prueba', 'Prueba', 'Prueba', 'Prueba', 0),
(2, '2014-04-01', '0', 5034, '0', 1, '', '', '', '', 0),
(3, '2014-04-02', '1', 5034, 'A', 1, 'p', 'p', 'p', 'p', 50),
(4, '2014-04-29', '1', 4462, 'B', 0, 'Sensor de nivel làser no genera señal cuando la mezcladora se encuentra llena.', 'Sensor làser IFM-01D100 dañado.', 'Se ubica en los planos donde llega la señal del sensor (Bobina del relè 136K21), està no llega al tapar el làser, se coloca puente en el punto de conexiòn mas cercano al sensor y se energiza el relè, lo que indica que el contacto del sensor se encuentra dañado.', 'Se trabajò con el Sr. G. Rodriguez.', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajos_taller`
--

CREATE TABLE IF NOT EXISTS `trabajos_taller` (
  `id_trabajos` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `turno` char(1) NOT NULL,
  `ficha` int(11) NOT NULL,
  `grupo` char(1) NOT NULL,
  `actividad` varchar(50) NOT NULL,
  `descripcion` text NOT NULL,
  PRIMARY KEY (`id_trabajos`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Volcado de datos para la tabla `trabajos_taller`
--

INSERT INTO `trabajos_taller` (`id_trabajos`, `fecha`, `turno`, `ficha`, `grupo`, `actividad`, `descripcion`) VALUES
(1, '2014-04-15', 'Z', 5034, 'Z', 'Reparacion de COMSOC', 'Perro'),
(2, '2014-04-30', '0', 4462, '0', '0', ''),
(3, '2014-04-30', '1', 4462, 'C', 'Reparacion de Bloques de Valvulas', ''),
(4, '2014-05-06', '', 0, 'B', 'Reparacion de Bloques de Valvulas', ''),
(5, '2014-05-06', 'Z', 0, 'A', 'Reparacion de Bloques de Valvulas', ''),
(6, '2014-05-29', 'Z', 4678, 'Z', 'Reparacion y MTTO de valvulas ', ''),
(7, '2014-05-29', 'Z', 4678, 'Z', 'Reparacion y MTTO de valvulas ', ''),
(8, '2014-06-01', '1', 4688, 'A', 'Reparacion de COMSOC', ''),
(9, '2014-06-05', 'Z', 4678, 'Z', 'Reparacion y MTTO de valvulas ', ''),
(10, '2014-06-11', 'Z', 4688, 'Z', 'Reparacion de COMSOC', ''),
(11, '2014-06-19', 'Z', 4678, 'Z', 'Otros', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tratamiento`
--

CREATE TABLE IF NOT EXISTS `tratamiento` (
  `id_ftratamiento` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `turno` char(1) NOT NULL,
  `ficha` int(11) NOT NULL,
  `tratamiento` char(10) NOT NULL,
  `perdida_pro` tinyint(1) NOT NULL,
  `descripcion_falla` text NOT NULL,
  `diagnostico_falla` text NOT NULL,
  `accion_correctiva` text NOT NULL,
  `observacion` text NOT NULL,
  `tiempo_perdido` int(11) DEFAULT '0',
  PRIMARY KEY (`id_ftratamiento`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `tratamiento`
--

INSERT INTO `tratamiento` (`id_ftratamiento`, `fecha`, `turno`, `ficha`, `tratamiento`, `perdida_pro`, `descripcion_falla`, `diagnostico_falla`, `accion_correctiva`, `observacion`, `tiempo_perdido`) VALUES
(1, '2014-02-24', 'Z', 5004, 'C2', 0, 'Equipo no funcionaba correctamente', 'problema con el láser del sensor.', 'Se ajusta el sensor.', 'Se encontraba un tornillo que sostenía el sensor flojo.', 0),
(2, '2014-03-05', 'Z', 5005, 'E3', 0, 'Se paro solo el rociador de tratamiento superficial a la mitad del recorrido', 'Se observa el panel apagado y sin tensión de alimentación se observa un fusible levemente afuera, se observa que una de las bases esta floja ', 'Se chequean los fusibles y estos están ok se cambia una de las bases de los fusibles se llevan los rociadores manualmente a uno de los extremos se procede al encendido y se prueba y esta esta ok ', 'el técnico de proceso indica que este debe permanecer apagado ya que están usando el de backup solamente ', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL,
  `Apellido` varchar(50) NOT NULL,
  `num_ficha` int(11) NOT NULL,
  `Cargo` varchar(50) NOT NULL,
  `Grupo` varchar(50) NOT NULL,
  `pass` varchar(20) NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `Nombre`, `Apellido`, `num_ficha`, `Cargo`, `Grupo`, `pass`) VALUES
(1, 'Oswaldo', 'Lezama', 5034, 'Ingeniero de Sistemas', 'Administrador', '18450105'),
(2, 'Gabriel', 'Rodriguez', 5005, 'Instrumentista', 'usuario', '16503477'),
(3, 'Yoel', 'Briceño', 5004, 'Instrumentista', 'usuario', '18467067'),
(4, 'Carlos', 'Marquez', 4939, 'Instrumentista', 'usuario', '15744663'),
(5, 'Oscar', 'Lima', 4748, 'Ingeniero Electronico', 'usuario', '18138085'),
(8, 'Jairo', 'Regalado', 4688, 'Instrumentista', 'usuario', '24973791'),
(9, 'German', 'Ontiveros', 239, 'Coordinador de Mantenimiento', 'usuario', '5646446'),
(10, 'Williams ', 'Vivas', 4636, 'Instrumentista', 'Usuario', '11112816'),
(11, 'Juan', 'Reaza', 4462, 'Instrumentista', 'Usuario', '11119245'),
(12, 'Jorman', 'Daza', 4610, 'Instrumentista', 'usuario', '18612391'),
(13, 'Cruz', 'Perozo', 4594, 'instrumentista', 'usuario', '10476239'),
(14, 'Lismariana', 'Flores', 96771, 'Pasante', 'usuario', '24474700'),
(15, 'Alejandro', 'Martinez', 4678, 'Instrumentista', 'Usuario', '19219586'),
(16, 'Adriana', 'Coiza', 96774, 'Pasante', 'usuario', '21586863');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
