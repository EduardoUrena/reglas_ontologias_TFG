;Regla que hace que las reglas se ejecuten en orden aleatorio y abre un fichero donde se guardaran los printout.
(defrule regla_inicial
 (declare (salience 2000))
 =>
 (set-strategy random)
 (dribble-on printout18.txt)
)

;Regla para contar los puntos que le dan a si mismo las cartas de planeta habitable que oferta el jugador activo teniendo civilizacion de clima frio.
(defrule contar_puntuacion_cartas_ofertadas_habitable_frio 
 ?empleado_activo<-(object (is-a EMPLEADO) (nombre ?e)(civilizacion frio)(num_planetas_habitables_ofertados ?n)(puntuacion_cartas_ofertadas ?pc))
 ?carta<-(object (is-a PLANETA) (nombre ?nom)(ofertante ?o)(clima ?c)(puntuacion_frio ?p)(puntuacion_sumada no))
 (test (eq ?e ?o))
 (test (neq ?c recursos))
 =>
 (modify-instance ?empleado_activo (puntuacion_cartas_ofertadas (+ ?pc ?p))(num_planetas_habitables_ofertados (+ ?n 1)))
 (printout t ?e " tiene " ?p " puntos de felicidad con su planeta " ?nom " ofertado, con lo que acumula "(+ ?pc ?p)" puntos y "(+ ?n 1)" planetas habitables ofertados." crlf crlf)
 (modify-instance ?carta (puntuacion_sumada una_vez))
)

;Regla para contar los puntos que le dan a si mismo las cartas de planeta de recursos que oferta el jugador activo teniendo civilizacion de clima frio.
(defrule contar_puntuacion_cartas_ofertadas_recursos_frio 
 ?empleado_activo<-(object (is-a EMPLEADO) (nombre ?e)(civilizacion frio)(num_planetas_recursos_ofertados ?nr)(puntuacion_cartas_ofertadas ?pc))
 ?carta<-(object (is-a PLANETA) (nombre ?nom)(ofertante ?o)(clima recursos)(puntuacion_frio ?p)(puntuacion_sumada no))
 (test (eq ?e ?o))
 =>
 (modify-instance ?empleado_activo (puntuacion_cartas_ofertadas (+ ?pc ?p))(num_planetas_recursos_ofertados (+ ?nr 1)))
 (printout t ?e " tiene " ?p " puntos de felicidad con su planeta " ?nom " ofertado, con lo que acumula "(+ ?pc ?p)" puntos y "(+ ?nr 1)" planetas de recursos ofertados." crlf crlf)
 (modify-instance ?carta (puntuacion_sumada una_vez))
)

;Regla para contar los puntos que le dan a si mismo las cartas de planeta habitable que oferta el jugador activo teniendo civilizacion de clima templado.
(defrule contar_puntuacion_cartas_ofertadas_habitable_templado 
 ?empleado_activo<-(object (is-a EMPLEADO) (nombre ?e)(civilizacion templado)(num_planetas_habitables_ofertados ?n)(puntuacion_cartas_ofertadas ?pc))
 ?carta<-(object (is-a PLANETA) (nombre ?nom)(ofertante ?o)(clima ?c)(puntuacion_templado ?p)(puntuacion_sumada no))
 (test (eq ?e ?o))
 (test (neq ?c recursos))
 =>
 (modify-instance ?empleado_activo (puntuacion_cartas_ofertadas (+ ?pc ?p))(num_planetas_habitables_ofertados (+ ?n 1)))
 (printout t ?e " tiene " ?p " puntos de felicidad con su planeta " ?nom " ofertado, con lo que acumula "(+ ?pc ?p)" puntos y "(+ ?n 1)" planetas habitables ofertados." crlf crlf)
 (modify-instance ?carta (puntuacion_sumada una_vez))
)

;Regla para contar los puntos que le dan a si mismo las cartas de planeta de recursos que oferta el jugador activo teniendo civilizacion de clima templado.
(defrule contar_puntuacion_cartas_ofertadas_recursos_templado 
 ?empleado_activo<-(object (is-a EMPLEADO) (nombre ?e)(civilizacion templado)(num_planetas_recursos_ofertados ?nr)(puntuacion_cartas_ofertadas ?pc))
 ?carta<-(object (is-a PLANETA) (nombre ?nom)(ofertante ?o)(clima recursos)(puntuacion_templado ?p)(puntuacion_sumada no))
 (test (eq ?e ?o))
 =>
 (modify-instance ?empleado_activo (puntuacion_cartas_ofertadas (+ ?pc ?p))(num_planetas_recursos_ofertados (+ ?nr 1)))
 (printout t ?e " tiene " ?p " puntos de felicidad con su planeta " ?nom " ofertado, con lo que acumula "(+ ?pc ?p)" puntos y "(+ ?nr 1)" planetas de recursos ofertados." crlf crlf)
 (modify-instance ?carta (puntuacion_sumada una_vez))
)

;Regla para contar los puntos que le dan a si mismo las cartas de planeta habitable que oferta el jugador activo teniendo civilizacion de clima caliente.
(defrule contar_puntuacion_cartas_ofertadas_habitable_caliente 
 ?empleado_activo<-(object (is-a EMPLEADO) (nombre ?e)(civilizacion caliente)(num_planetas_habitables_ofertados ?n)(puntuacion_cartas_ofertadas ?pc))
 ?carta<-(object (is-a PLANETA) (nombre ?nom)(ofertante ?o)(clima ?c)(puntuacion_caliente ?p)(puntuacion_sumada no))
 (test (eq ?e ?o))
 (test (neq ?c recursos))
 =>
 (modify-instance ?empleado_activo (puntuacion_cartas_ofertadas (+ ?pc ?p))(num_planetas_habitables_ofertados (+ ?n 1)))
 (printout t ?e " tiene " ?p " puntos de felicidad con su planeta " ?nom " ofertado, con lo que acumula "(+ ?pc ?p)" puntos y "(+ ?n 1)" planetas habitables ofertados." crlf crlf)
 (modify-instance ?carta (puntuacion_sumada una_vez))
)

;Regla para contar los puntos que le dan a si mismo las cartas de planeta de recursos que oferta el jugador activo teniendo civilizacion de clima caliente.
(defrule contar_puntuacion_cartas_ofertadas_recursos_caliente 
 ?empleado_activo<-(object (is-a EMPLEADO) (nombre ?e)(civilizacion caliente)(num_planetas_recursos_ofertados ?nr)(puntuacion_cartas_ofertadas ?pc))
 ?carta<-(object (is-a PLANETA) (nombre ?nom)(ofertante ?o)(clima recursos)(puntuacion_caliente ?p)(puntuacion_sumada no))
 (test (eq ?e ?o))
 =>
 (modify-instance ?empleado_activo (puntuacion_cartas_ofertadas (+ ?pc ?p))(num_planetas_recursos_ofertados (+ ?nr 1)))
 (printout t ?e " tiene " ?p " puntos de felicidad con su planeta " ?nom " ofertado, con lo que acumula "(+ ?pc ?p)" puntos y "(+ ?nr 1)" planetas de recursos ofertados." crlf crlf)
 (modify-instance ?carta (puntuacion_sumada una_vez))
)

;Regla para contar los puntos que le dan las cartas de planeta habitable que oferta un jugador NO activo al jugador activo teniendo civilizacion de clima frio.
(defrule contar_puntuacion_cartas_ofertadas_habitable_frio_no_activos 
 ?empleado_activo<-(object (is-a EMPLEADO) (nombre ?ea)(civilizacion frio))
 ?empleado_no_activo<-(object (is-a EMPLEADO) (nombre ?e)(civilizacion secreta)(num_planetas_habitables_ofertados ?n)(puntuacion_cartas_ofertadas ?pc))
 ?carta<-(object (is-a PLANETA) (nombre ?nom)(ofertante ?o)(clima ?c)(puntuacion_frio ?p)(puntuacion_sumada no))
 (test (neq ?ea ?e))
 (test (eq ?e ?o))
 (test (neq ?c recursos))
 =>
 (modify-instance ?empleado_no_activo (puntuacion_cartas_ofertadas (+ ?pc ?p))(num_planetas_habitables_ofertados (+ ?n 1)))
 (printout t ?e " da " ?p " puntos de felicidad con su planeta " ?nom " ofertado, con lo que acumula "(+ ?pc ?p)" puntos y "(+ ?n 1)" planetas habitables ofertados." crlf crlf)
 (modify-instance ?carta (puntuacion_sumada una_vez))
)

;Regla para contar los puntos que le dan las cartas de planeta de recursos que oferta un jugador NO activo al jugador activo teniendo civilizacion de clima frio.
(defrule contar_puntuacion_cartas_ofertadas_recursos_frio_no_activos 
 ?empleado_activo<-(object (is-a EMPLEADO) (nombre ?ea)(civilizacion frio))
 ?empleado_no_activo<-(object (is-a EMPLEADO) (nombre ?e)(civilizacion secreta)(num_planetas_recursos_ofertados ?nr)(puntuacion_cartas_ofertadas ?pc))
 ?carta<-(object (is-a PLANETA) (nombre ?nom)(ofertante ?o)(clima recursos)(puntuacion_frio ?p)(puntuacion_sumada no))
 (test (neq ?ea ?e))
 (test (eq ?e ?o))
 =>
 (modify-instance ?empleado_no_activo (puntuacion_cartas_ofertadas (+ ?pc ?p))(num_planetas_recursos_ofertados (+ ?nr 1)))
 (printout t ?e " da " ?p " puntos de felicidad con su planeta " ?nom " ofertado, con lo que acumula "(+ ?pc ?p)" puntos y "(+ ?nr 1)" planetas de recursos ofertados." crlf crlf)
 (modify-instance ?carta (puntuacion_sumada una_vez))
)

;Regla para contar los puntos que le dan las cartas de planeta habitable que oferta un jugador NO activo al jugador activo teniendo civilizacion de clima templado.
(defrule contar_puntuacion_cartas_ofertadas_habitable_templado_no_activos 
 ?empleado_activo<-(object (is-a EMPLEADO) (nombre ?ea)(civilizacion templado))
 ?empleado_no_activo<-(object (is-a EMPLEADO) (nombre ?e)(civilizacion secreta)(num_planetas_habitables_ofertados ?n)(puntuacion_cartas_ofertadas ?pc))
 ?carta<-(object (is-a PLANETA) (nombre ?nom)(ofertante ?o)(clima ?c)(puntuacion_templado ?p)(puntuacion_sumada no))
 (test (neq ?ea ?e))
 (test (eq ?e ?o))
 (test (neq ?c recursos))
 =>
 (modify-instance ?empleado_no_activo (puntuacion_cartas_ofertadas (+ ?pc ?p))(num_planetas_habitables_ofertados (+ ?n 1)))
 (printout t ?e " da " ?p " puntos de felicidad con su planeta " ?nom " ofertado, con lo que acumula "(+ ?pc ?p)" puntos y "(+ ?n 1)" planetas habitables ofertados." crlf crlf)
 (modify-instance ?carta (puntuacion_sumada una_vez))
)

;Regla para contar los puntos que le dan las cartas de planeta de recursos que oferta un jugador NO activo al jugador activo teniendo civilizacion de clima templado.
(defrule contar_puntuacion_cartas_ofertadas_recursos_templado_no_activos 
 ?empleado_activo<-(object (is-a EMPLEADO) (nombre ?ea)(civilizacion templado))
 ?empleado_no_activo<-(object (is-a EMPLEADO) (nombre ?e)(civilizacion secreta)(num_planetas_recursos_ofertados ?nr)(puntuacion_cartas_ofertadas ?pc))
 ?carta<-(object (is-a PLANETA) (nombre ?nom)(ofertante ?o)(clima recursos)(puntuacion_templado ?p)(puntuacion_sumada no))
 (test (neq ?ea ?e))
 (test (eq ?e ?o))
 =>
 (modify-instance ?empleado_no_activo (puntuacion_cartas_ofertadas (+ ?pc ?p))(num_planetas_recursos_ofertados (+ ?nr 1)))
 (printout t ?e " da " ?p " puntos de felicidad con su planeta " ?nom " ofertado, con lo que acumula "(+ ?pc ?p)" puntos y "(+ ?nr 1)" planetas de recursos ofertados." crlf crlf)
 (modify-instance ?carta (puntuacion_sumada una_vez))
)

;Regla para contar los puntos que le dan las cartas de planeta habitable que oferta un jugador NO activo al jugador activo teniendo civilizacion de clima caliente.
(defrule contar_puntuacion_cartas_ofertadas_habitable_caliente_no_activos 
 ?empleado_activo<-(object (is-a EMPLEADO) (nombre ?ea)(civilizacion caliente))
 ?empleado_no_activo<-(object (is-a EMPLEADO) (nombre ?e)(civilizacion secreta)(num_planetas_habitables_ofertados ?n)(puntuacion_cartas_ofertadas ?pc))
 ?carta<-(object (is-a PLANETA) (nombre ?nom)(ofertante ?o)(clima ?c)(puntuacion_caliente ?p)(puntuacion_sumada no))
 (test (neq ?ea ?e))
 (test (eq ?e ?o))
 (test (neq ?c recursos))
 =>
 (modify-instance ?empleado_no_activo (puntuacion_cartas_ofertadas (+ ?pc ?p))(num_planetas_habitables_ofertados (+ ?n 1)))
 (printout t ?e " da " ?p " puntos de felicidad con su planeta " ?nom " ofertado, con lo que acumula "(+ ?pc ?p)" puntos y "(+ ?n 1)" planetas habitables ofertados." crlf crlf)
 (modify-instance ?carta (puntuacion_sumada una_vez))
)

;Regla para contar los puntos que le dan las cartas de planeta de recursos que oferta un jugador NO activo al jugador activo teniendo civilizacion de clima caliente.
(defrule contar_puntuacion_cartas_ofertadas_recursos_caliente_no_activos 
 ?empleado_activo<-(object (is-a EMPLEADO) (nombre ?ea)(civilizacion caliente))
 ?empleado_no_activo<-(object (is-a EMPLEADO) (nombre ?e)(civilizacion secreta)(num_planetas_recursos_ofertados ?nr)(puntuacion_cartas_ofertadas ?pc))
 ?carta<-(object (is-a PLANETA) (nombre ?nom)(ofertante ?o)(clima recursos)(puntuacion_caliente ?p)(puntuacion_sumada no))
 (test (neq ?ea ?e))
 (test (eq ?e ?o))
 =>
 (modify-instance ?empleado_no_activo (puntuacion_cartas_ofertadas (+ ?pc ?p))(num_planetas_recursos_ofertados (+ ?nr 1)))
 (printout t ?e " da " ?p " puntos de felicidad con su planeta " ?nom " ofertado, con lo que acumula "(+ ?pc ?p)" puntos y "(+ ?nr 1)" planetas de recursos ofertados." crlf crlf)
 (modify-instance ?carta (puntuacion_sumada una_vez))
)

;Regla para ver si una carta da un pequeño beneficio al jugador activo por ser de planeta habitable y calidad suficiente con clima diferente al de su civilizacion.
(defrule obtener_beneficio_por_planeta_suficiente_clima_diferente 
 (declare (salience 15))
 ?empleado_activo<-(object (is-a EMPLEADO) (nombre ?ea)(civilizacion ?c))
 ?empleado_no_activo<-(object (is-a EMPLEADO) (nombre ?e)(civilizacion secreta))
 ?carta<-(object (is-a PLANETA) (nombre ?n)(ofertante ?o)(clima ?cli)(calidad suficiente)(puntuacion_sumada una_vez)(aporta_beneficio_adicional no))
 ?beneficio<-(beneficio_adicional (empleado ?emp)(beneficio ?b))
 (test (neq ?cli recursos))
 (test (neq ?c secreta))
 (test (neq ?c ?cli))
 (test (neq ?ea ?e))
 (test (eq ?e ?emp))
 (test (eq ?e ?o))
 =>
 (modify-instance ?carta (aporta_beneficio_adicional si))
 (modify ?beneficio (beneficio (+ ?b 0.6)))
 (printout t "El planeta " ?n " de " ?e " da 0.6 puntos de beneficio adicional al tener un clima diferente al de la civilizacion del jugador activo y ser de calidad suficiente." crlf crlf)
)

;Regla para ver si una carta da un pequeño beneficio al jugador activo por ser de planeta habitable y calidad buena con clima diferente al de su civilizacion.
(defrule obtener_beneficio_por_planeta_buena_clima_diferente 
 (declare (salience 15))
 ?empleado_activo<-(object (is-a EMPLEADO) (nombre ?ea)(civilizacion ?c))
 ?empleado_no_activo<-(object (is-a EMPLEADO) (nombre ?e)(civilizacion secreta))
 ?carta<-(object (is-a PLANETA) (nombre ?n)(ofertante ?o)(clima ?cli)(calidad buena)(puntuacion_sumada una_vez)(aporta_beneficio_adicional no))
 ?beneficio<-(beneficio_adicional (empleado ?emp)(beneficio ?b))
 (test (neq ?cli recursos))
 (test (neq ?c secreta))
 (test (neq ?c ?cli))
 (test (neq ?ea ?e))
 (test (eq ?e ?emp))
 (test (eq ?e ?o))
 =>
 (modify-instance ?carta (aporta_beneficio_adicional si))
 (modify ?beneficio (beneficio (+ ?b 0.4)))
 (printout t "El planeta " ?n " de " ?e " da 0.4 puntos de beneficio adicional al tener un clima diferente al de la civilizacion del jugador activo y ser de calidad buena." crlf crlf)
)

;Regla para ver si una carta da un pequeño beneficio al jugador activo por ser de planeta habitable y calidad excelente con clima diferente al de su civilizacion.
(defrule obtener_beneficio_por_planeta_excelente_clima_diferente 
 (declare (salience 15))
 ?empleado_activo<-(object (is-a EMPLEADO) (nombre ?ea)(civilizacion ?c))
 ?empleado_no_activo<-(object (is-a EMPLEADO) (nombre ?e)(civilizacion secreta))
 ?carta<-(object (is-a PLANETA) (nombre ?n)(ofertante ?o)(clima ?cli)(calidad excelente)(puntuacion_sumada una_vez)(aporta_beneficio_adicional no))
 ?beneficio<-(beneficio_adicional (empleado ?emp)(beneficio ?b))
 (test (neq ?cli recursos))
 (test (neq ?c secreta))
 (test (neq ?c ?cli))
 (test (neq ?ea ?e))
 (test (eq ?e ?emp))
 (test (eq ?e ?o))
 =>
 (modify-instance ?carta (aporta_beneficio_adicional si))
 (modify ?beneficio (beneficio (+ ?b 0.2)))
 (printout t "El planeta " ?n " de " ?e " da 0.2 puntos de beneficio adicional al tener un clima diferente al de la civilizacion del jugador activo y ser de calidad excelente." crlf crlf)
)

;Regla para calcular e imprimir los puntos de felicidad ofrecidos en cartas por cada jugador y la utilidad que obtendría el jugdor activo de cada intercambio teniendo en cuenta la cantidad de planetas ofertados.
(defrule determinar_utilidad_cartas_ofertadas_activo
 (not(utilidad_cartas_ofertadas_impresa))
 (object (is-a EMPLEADO) (nombre ?ea)(civilizacion ?c)(num_planetas_habitables_ofertados ?na)(num_planetas_recursos_ofertados ?nra)(puntuacion_cartas_ofertadas ?pca))
 (object (is-a EMPLEADO) (nombre ?e1)(civilizacion secreta)(num_planetas_habitables_ofertados ?n1)(num_planetas_recursos_ofertados ?nr1)(puntuacion_cartas_ofertadas ?pc1))
 (object (is-a EMPLEADO) (nombre ?e2)(civilizacion secreta)(num_planetas_habitables_ofertados ?n2)(num_planetas_recursos_ofertados ?nr2)(puntuacion_cartas_ofertadas ?pc2))
 (not(object (is-a PLANETA) (ofertante ?ea)(puntuacion_sumada no)))
 (not(object (is-a PLANETA) (ofertante ?e1)(puntuacion_sumada no)))
 (not(object (is-a PLANETA) (ofertante ?e2)(puntuacion_sumada no)))
 (beneficio_adicional (empleado ?emp1)(beneficio ?b1))
 (beneficio_adicional (empleado ?emp2)(beneficio ?b2))
 (test (neq ?c secreta))
 (test (eq ?emp1 ?e1))
 (test (eq ?emp2 ?e2))
 (test (neq ?ea ?e1))
 (test (neq ?ea ?e2))
 (test (neq ?e1 ?e2))
 =>
 (printout t ?ea " acumula "?pca" puntos de felicidad con sus planetas ofertados." crlf crlf)
 (printout t ?e1 " da "?pc1" puntos de felicidad con sus planetas ofertados." crlf crlf)
 (printout t ?e2 " da "?pc2" puntos de felicidad con sus planetas ofertados." crlf crlf)
 (assert(puntos_utilidad_activo (empleado ?e1)(utilidad (+ (+ (+ (- ?pc1 ?pca)(- ?na ?n1)) (- ?nra ?nr1)) ?b1))))
 (assert(puntos_utilidad_activo (empleado ?e2)(utilidad (+ (+ (+ (- ?pc2 ?pca)(- ?na ?n2)) (- ?nra ?nr2)) ?b2))))
 (printout t ?ea " obtendria una utilidad de " (+ (+ (+ (- ?pc1 ?pca)(- ?na ?n1)) (- ?nra ?nr1)) ?b1) " si acepta la oferta de " ?e1 ", teniendo en cuenta el posible beneficio adicional y la diferencia de planetas ofertados." crlf crlf)
 (printout t ?ea " obtendria una utilidad de " (+ (+ (+ (- ?pc2 ?pca)(- ?na ?n2)) (- ?nra ?nr2)) ?b2) " si acepta la oferta de " ?e2 ", teniendo en cuenta el posible beneficio adicional y la diferencia de planetas ofertados." crlf crlf)
 (assert(utilidad_cartas_ofertadas_impresa))
 (printout t crlf)
)

;Regla para aumentar la creencia de que un jugador no activo NO tiene una civilizacion de clima X viendo si ofrece planetas de clima X y calidad suficiente.
(defrule determinar_posible_civilizacion_suficiente_ofrecidos
 (declare (salience 10))
 (utilidad_cartas_ofertadas_impresa)
 (object (is-a EMPLEADO) (nombre ?ea)(civilizacion ?c))
 (object (is-a EMPLEADO) (nombre ?e)(civilizacion secreta))
 (object (is-a PLANETA) (nombre ?pla)(ofertante ?o)(clima ?cli)(calidad suficiente)(puntuacion_sumada una_vez))
 (not (planeta_comprobado (planeta ?pla)(empleado ?e)))
 ?posible-civilizacion<-(posible_civilizacion (empleado ?emp)(civilizacion ?civ)(puntos_creencia_no ?no))
 (test (eq ?o ?e))
 (test (neq ?ea ?e))
 (test (eq ?e ?emp))
 (test (eq ?cli ?civ))
 (test (neq ?c secreta))
 =>
 (modify ?posible-civilizacion (puntos_creencia_no (+ ?no 0.3)))
 (printout t "Se suman 0.3 puntos a la creencia de que " ?e " no tiene una civilizacion de clima " ?civ ", al ofrecer un planeta de clima " ?cli " de calidad suficiente." crlf crlf)
 (assert(planeta_comprobado (planeta ?pla)(empleado ?e)))
 (printout t crlf)
)

;Regla para aumentar la creencia de que un jugador no activo NO tiene una civilizacion de clima X viendo si ofrece planetas de clima X y calidad buena.
(defrule determinar_posible_civilizacion_buena_ofrecidos
 (declare (salience 10))
 (utilidad_cartas_ofertadas_impresa)
 (object (is-a EMPLEADO) (nombre ?ea)(civilizacion ?c))
 (object (is-a EMPLEADO) (nombre ?e)(civilizacion secreta))
 (object (is-a PLANETA) (nombre ?pla)(ofertante ?o)(clima ?cli)(calidad buena)(puntuacion_sumada una_vez))
 (not (planeta_comprobado (planeta ?pla)(empleado ?e)))
 ?posible-civilizacion<-(posible_civilizacion (empleado ?emp)(civilizacion ?civ)(puntos_creencia_no ?no))
 (test (eq ?o ?e))
 (test (neq ?ea ?e))
 (test (eq ?e ?emp))
 (test (eq ?cli ?civ))
 (test (neq ?c secreta))
 =>
 (modify ?posible-civilizacion (puntos_creencia_no (+ ?no 0.5)))
 (printout t "Se suman 0.5 puntos a la creencia de que " ?e " no tiene una civilizacion de clima " ?civ ", al ofrecer un planeta de clima " ?cli " de calidad buena." crlf crlf)
 (assert(planeta_comprobado (planeta ?pla)(empleado ?e)))
 (printout t crlf)
)

;Regla para aumentar la creencia de que un jugador no activo NO tiene una civilizacion de clima X viendo si ofrece planetas de clima X y calidad excelente.
(defrule determinar_posible_civilizacion_excelente_ofrecidos
 (declare (salience 10))
 (utilidad_cartas_ofertadas_impresa)
 (object (is-a EMPLEADO) (nombre ?ea)(civilizacion ?c))
 (object (is-a EMPLEADO) (nombre ?e)(civilizacion secreta))
 (object (is-a PLANETA) (nombre ?pla)(ofertante ?o)(clima ?cli)(calidad excelente)(puntuacion_sumada una_vez))
 (not (planeta_comprobado (planeta ?pla)(empleado ?e)))
 ?posible-civilizacion<-(posible_civilizacion (empleado ?emp)(civilizacion ?civ)(puntos_creencia_no ?no))
 (test (eq ?o ?e))
 (test (neq ?ea ?e))
 (test (eq ?e ?emp))
 (test (eq ?cli ?civ))
 (test (neq ?c secreta))
 =>
 (modify ?posible-civilizacion (puntos_creencia_no (+ ?no 0.7)))
 (printout t "Se suman 0.7 puntos a la creencia de que " ?e " no tiene una civilizacion de clima " ?civ ", al ofrecer un planeta de clima " ?cli " de calidad excelente." crlf crlf)
 (assert(planeta_comprobado (planeta ?pla)(empleado ?e)))
 (printout t crlf)
)

;Regla para aumentar la creencia de que un jugador no activo SI tiene una civilizacion de clima X viendo si quiere aceptar planetas de clima X y calidad suficiente.
(defrule determinar_posible_civilizacion_suficiente_aceptados
 (declare (salience 5))
 (utilidad_cartas_ofertadas_impresa)
 (object (is-a EMPLEADO) (nombre ?ea)(civilizacion ?c)) 
 (object (is-a EMPLEADO) (nombre ?e)(civilizacion secreta))
 (object (is-a PLANETA) (nombre ?pla)(ofertante ?o)(clima ?cli)(calidad suficiente)(puntuacion_sumada una_vez))
 (not (planeta_comprobado (planeta ?pla)(empleado ?e)))
 ?posible-civilizacion<-(posible_civilizacion (empleado ?emp)(civilizacion ?civ)(puntos_creencia_si ?si))
 (test (eq ?o ?ea))
 (test (neq ?ea ?e))
 (test (eq ?e ?emp))
 (test (eq ?cli ?civ))
 (test (neq ?c secreta))
 =>
 (modify ?posible-civilizacion (puntos_creencia_si (+ ?si 0.2)))
 (printout t "Se suman 0.2 puntos a la creencia de que " ?e " si tiene una civilizacion de clima " ?civ ", al querer aceptar un planeta de clima " ?cli " de calidad suficiente." crlf crlf)
 (assert(planeta_comprobado (planeta ?pla)(empleado ?e)))
 (printout t crlf)
)

;Regla para aumentar la creencia de que un jugador no activo SI tiene una civilizacion de clima X viendo si quiere aceptar planetas de clima X y calidad buena.
(defrule determinar_posible_civilizacion_buena_aceptados
 (declare (salience 5))
 (utilidad_cartas_ofertadas_impresa)
 (object (is-a EMPLEADO) (nombre ?ea)(civilizacion ?c)) 
 (object (is-a EMPLEADO) (nombre ?e)(civilizacion secreta))
 (object (is-a PLANETA) (nombre ?pla)(ofertante ?o)(clima ?cli)(calidad buena)(puntuacion_sumada una_vez))
 (not (planeta_comprobado (planeta ?pla)(empleado ?e)))
 ?posible-civilizacion<-(posible_civilizacion (empleado ?emp)(civilizacion ?civ)(puntos_creencia_si ?si))
 (test (eq ?o ?ea))
 (test (neq ?ea ?e))
 (test (eq ?e ?emp))
 (test (eq ?cli ?civ))
 (test (neq ?c secreta))
 =>
 (modify ?posible-civilizacion (puntos_creencia_si (+ ?si 0.4)))
 (printout t "Se suman 0.4 puntos a la creencia de que " ?e " si tiene una civilizacion de clima " ?civ ", al querer aceptar un planeta de clima " ?cli " de calidad buena." crlf crlf)
 (assert(planeta_comprobado (planeta ?pla)(empleado ?e)))
 (printout t crlf)
)

;Regla para aumentar la creencia de que un jugador no activo SI tiene una civilizacion de clima X viendo si quiere aceptar planetas de clima X y calidad excelente.
(defrule determinar_posible_civilizacion_excelente_aceptados
 (declare (salience 5))
 (utilidad_cartas_ofertadas_impresa)
 (object (is-a EMPLEADO) (nombre ?ea)(civilizacion ?c)) 
 (object (is-a EMPLEADO) (nombre ?e)(civilizacion secreta))
 (object (is-a PLANETA) (nombre ?pla)(ofertante ?o)(clima ?cli)(calidad excelente)(puntuacion_sumada una_vez))
 (not (planeta_comprobado (planeta ?pla)(empleado ?e)))
 ?posible-civilizacion<-(posible_civilizacion (empleado ?emp)(civilizacion ?civ)(puntos_creencia_si ?si))
 (test (eq ?o ?ea))
 (test (neq ?ea ?e))
 (test (eq ?e ?emp))
 (test (eq ?cli ?civ))
 (test (neq ?c secreta))
 =>
 (modify ?posible-civilizacion (puntos_creencia_si (+ ?si 0.6)))
 (printout t "Se suman 0.6 puntos a la creencia de que " ?e " si tiene una civilizacion de clima " ?civ ", al querer aceptar un planeta de clima " ?cli " de calidad excelente." crlf crlf)
 (assert(planeta_comprobado (planeta ?pla)(empleado ?e)))
 (printout t crlf)
)

;Regla para calcular la puntuación que proporciona cada civilizacion a los jugadores no activos para cada carta ofertada por el jugador activo.
(defrule calcular_puntuacion_posibles_civilizaciones_cartas_aceptadas_no_activos
 (utilidad_cartas_ofertadas_impresa)
 (object (is-a EMPLEADO) (nombre ?ea)(civilizacion ?civ)) 
 (object (is-a EMPLEADO) (nombre ?e1)(civilizacion secreta))
 (object (is-a EMPLEADO) (nombre ?e2)(civilizacion secreta))
 ?carta<-(object (is-a PLANETA) (nombre ?n)(ofertante ?o)(puntuacion_frio ?pf)(puntuacion_templado ?pt)(puntuacion_caliente ?pc)(puntuacion_sumada una_vez))
 ?posible-frio1<-(posible_civilizacion (empleado ?emp1)(civilizacion frio)(puntos_felicidad ?punt11))
 ?posible-templado1<-(posible_civilizacion (empleado ?emp1)(civilizacion templado)(puntos_felicidad ?punt21))
 ?posible-caliente1<-(posible_civilizacion (empleado ?emp1)(civilizacion caliente)(puntos_felicidad ?punt31))
 ?posible-frio2<-(posible_civilizacion (empleado ?emp2)(civilizacion frio)(puntos_felicidad ?punt12))
 ?posible-templado2<-(posible_civilizacion (empleado ?emp2)(civilizacion templado)(puntos_felicidad ?punt22))
 ?posible-caliente2<-(posible_civilizacion (empleado ?emp2)(civilizacion caliente)(puntos_felicidad ?punt32))
 (test (neq ?civ secreta))
 (test (eq ?emp1 ?e1))
 (test (eq ?emp2 ?e2))
 (test (neq ?ea ?e1))
 (test (neq ?ea ?e2))
 (test (neq ?e1 ?e2))
 (test (eq ?o ?ea))
 =>
 (modify ?posible-frio1 (puntos_felicidad (+ ?punt11 ?pf)))
 (printout t ?e1 " obtendria " ?pf " puntos de felicidad al aceptar el planeta " ?n " de " ?ea " si tuviera una civilizacion de clima frio." crlf crlf)
 (modify ?posible-templado1 (puntos_felicidad (+ ?punt21 ?pt)))
 (printout t ?e1 " obtendria " ?pt " puntos de felicidad al aceptar el planeta " ?n " de " ?ea " si tuviera una civilizacion de clima templado." crlf crlf)
 (modify ?posible-caliente1 (puntos_felicidad (+ ?punt31 ?pc)))
 (printout t ?e1 " obtendria " ?pc " puntos de felicidad al aceptar el planeta " ?n " de " ?ea " si tuviera una civilizacion de clima caliente." crlf crlf)
 (modify ?posible-frio2 (puntos_felicidad (+ ?punt12 ?pf)))
 (printout t ?e2 " obtendria " ?pf " puntos de felicidad al aceptar el planeta " ?n " de " ?ea " si tuviera una civilizacion de clima frio." crlf crlf)
 (modify ?posible-templado2 (puntos_felicidad (+ ?punt22 ?pt)))
 (printout t ?e2 " obtendria " ?pt " puntos de felicidad al aceptar el planeta " ?n " de " ?ea " si tuviera una civilizacion de clima templado." crlf crlf)
 (modify ?posible-caliente2 (puntos_felicidad (+ ?punt32 ?pc)))
 (printout t ?e2 " obtendria " ?pc " puntos de felicidad al aceptar el planeta " ?n " de " ?ea " si tuviera una civilizacion de clima caliente." crlf crlf)
 (modify-instance ?carta (puntuacion_sumada dos_veces))
)

;Regla para calcular la puntuación que proporciona cada civilizacion a cada uno de los jugadores no activos para cada carta ofertada por el.
(defrule calcular_puntuacion_posibles_civilizaciones_cartas_ofertadas_no_activos
 (utilidad_cartas_ofertadas_impresa)
 (object (is-a EMPLEADO) (nombre ?ea)(civilizacion ?civ))
 (object (is-a EMPLEADO) (nombre ?e)(civilizacion secreta))
 ?carta<-(object (is-a PLANETA) (nombre ?n)(ofertante ?o)(puntuacion_frio ?pf)(puntuacion_templado ?pt)(puntuacion_caliente ?pc)(puntuacion_sumada una_vez))
 ?posible-frio<-(posible_civilizacion (empleado ?emp)(civilizacion frio)(puntos_felicidad ?punt1))
 ?posible-templado<-(posible_civilizacion (empleado ?emp)(civilizacion templado)(puntos_felicidad ?punt2))
 ?posible-caliente<-(posible_civilizacion (empleado ?emp)(civilizacion caliente)(puntos_felicidad ?punt3))
 (test (neq ?civ secreta))
 (test (neq ?ea ?e))
 (test (eq ?emp ?e))
 (test (eq ?o ?e))
 =>
 (modify ?posible-frio (puntos_felicidad (- ?punt1 ?pf)))
 (printout t ?e " perderia " ?pf " puntos de felicidad al dar el planeta " ?n " a " ?ea " si tuviera una civilizacion de clima frio." crlf crlf)
 (modify ?posible-templado (puntos_felicidad (- ?punt2 ?pt)))
 (printout t ?e " perderia " ?pt " puntos de felicidad al dar el planeta " ?n " a " ?ea " si tuviera una civilizacion de clima templado." crlf crlf)
 (modify ?posible-caliente (puntos_felicidad (- ?punt3 ?pc)))
 (printout t ?e " perderia " ?pc " puntos de felicidad al dar el planeta " ?n " a " ?ea " si tuviera una civilizacion de clima caliente." crlf crlf)
 (modify-instance ?carta (puntuacion_sumada dos_veces))
)

;Regla para determinar que civilizacion se asignara a los calculos de utilidad de los jugadores no activos y para calcular dicha utilidad (caso 1).
;En este caso, la civilizacion que mas puntos de felicidad proporciona a uno de los jugadores no activos esta entre las que es mas probable que tenga (se tiene
;mas puntos de creencia de que SI puede tenerla que de que NO).
(defrule asignar_civilizacion_determinar_utilidad_intercambios_no_activos_1
 (utilidad_cartas_ofertadas_impresa)
 (object (is-a EMPLEADO) (nombre ?ea)(civilizacion ?c)(num_planetas_habitables_ofertados ?na)(num_planetas_recursos_ofertados ?nra))
 (object (is-a EMPLEADO) (nombre ?e)(civilizacion secreta)(num_planetas_habitables_ofertados ?n)(num_planetas_recursos_ofertados ?nr))
 (not (civilizacion_asignada_calculos (empleado ?e)))
 (not(object (is-a PLANETA) (puntuacion_sumada una_vez)))
 ?posible-civilizacion1<-(posible_civilizacion (empleado ?emp)(civilizacion ?civ1)(puntos_creencia_si ?si1)(puntos_creencia_no ?no1)(puntos_felicidad ?punt1))
 ?posible-civilizacion2<-(posible_civilizacion (empleado ?emp)(civilizacion ?civ2)(puntos_creencia_si ?si2)(puntos_creencia_no ?no2)(puntos_felicidad ?punt2))
 ?posible-civilizacion3<-(posible_civilizacion (empleado ?emp)(civilizacion ?civ3)(puntos_creencia_si ?si3)(puntos_creencia_no ?no3)(puntos_felicidad ?punt3))
 (test (eq ?emp ?e))
 (test (neq ?ea ?e))
 (test (neq ?c secreta))
 (test (not(< ?si1 ?no1)))
 (test (> ?punt1 ?punt2))
 (test (> ?punt1 ?punt3))
 (test (neq ?civ1 ?civ2))
 (test (neq ?civ1 ?civ3))
 (test (neq ?civ2 ?civ3))
 =>
 (printout t ?e " obtendria " ?punt1 " puntos de felicidad si tiene una civilizacion de clima " ?civ1 "." crlf)
 (printout t "La creencia sobre si " ?e " puede tener esta civilizacion es: " ?si1 " puntos de que si, y " ?no1 " puntos de que no." crlf crlf)
 (printout t ?e " obtendria " ?punt2 " puntos de felicidad si tiene una civilizacion de clima " ?civ2 "." crlf)
 (printout t "La creencia sobre si " ?e " puede tener esta civilizacion es: " ?si2 " puntos de que si, y " ?no2 " puntos de que no." crlf crlf)
 (printout t ?e " obtendria " ?punt3 " puntos de felicidad si tiene una civilizacion de clima " ?civ3 "." crlf)
 (printout t "La creencia sobre si " ?e " puede tener esta civilizacion es: " ?si3 " puntos de que si, y " ?no3 " puntos de que no." crlf crlf)
 (assert(civilizacion_asignada_calculos (empleado ?e)(civilizacion ?civ1)))
 (printout t "Se asigna la civilizacion de clima " ?civ1 " a " ?e " para calcular sus puntos de utilidad, ya que es la que le proporciona mas puntos de felicidad y esta entre las que es mas probable que tenga." crlf crlf)
 (assert(puntos_utilidad_no_activo (empleado ?e)(utilidad (- (- ?punt1 (- ?na ?n)) (- ?nra ?nr)))))
 (printout t ?e " obtendria " (- (- ?punt1 (- ?na ?n)) (- ?nra ?nr)) " puntos de utilidad del intercambio, al ofertar " ?n " planetas habitables y " ?nr " planetas de recursos, mientras el jugador activo oferta " ?na " planetas habitables y " ?nra " planetas de recursos." crlf crlf)
 (printout t crlf)
)

;Regla para determinar que civilizacion se asignara a los calculos de utilidad de los jugadores no activos y para calcular dicha utilidad (caso 2).
;En este caso, la civilizacion que mas puntos de felicidad proporciona a uno de los jugadores no activos NO es una de las que es mas probable que tenga,
;por lo que se elige la que mas puntos de felicidad proporciona de entre las que es mas probable que tenga, al ser dichos puntos positivos.
(defrule asignar_civilizacion_determinar_utilidad_intercambios_no_activos_2
 (utilidad_cartas_ofertadas_impresa)
 (object (is-a EMPLEADO) (nombre ?ea)(civilizacion ?c)(num_planetas_habitables_ofertados ?na)(num_planetas_recursos_ofertados ?nra))
 (object (is-a EMPLEADO) (nombre ?e)(civilizacion secreta)(num_planetas_habitables_ofertados ?n)(num_planetas_recursos_ofertados ?nr))
 (not (civilizacion_asignada_calculos (empleado ?e)))
 (not(object (is-a PLANETA) (puntuacion_sumada una_vez)))
 ?posible-civilizacion1<-(posible_civilizacion (empleado ?emp)(civilizacion ?civ1)(puntos_creencia_si ?si1)(puntos_creencia_no ?no1)(puntos_felicidad ?punt1))
 ?posible-civilizacion2<-(posible_civilizacion (empleado ?emp)(civilizacion ?civ2)(puntos_creencia_si ?si2)(puntos_creencia_no ?no2)(puntos_felicidad ?punt2))
 ?posible-civilizacion3<-(posible_civilizacion (empleado ?emp)(civilizacion ?civ3)(puntos_creencia_si ?si3)(puntos_creencia_no ?no3)(puntos_felicidad ?punt3))
 (test (eq ?emp ?e))
 (test (neq ?ea ?e))
 (test (neq ?c secreta))
 (test (not(< ?si1 ?no1)))
 (test (< ?si3 ?no3))
 (test (> ?punt1 0))
 (test (> ?punt1 ?punt2))
 (test (< ?punt1 ?punt3))
 (test (neq ?civ1 ?civ2))
 (test (neq ?civ1 ?civ3))
 (test (neq ?civ2 ?civ3))
 =>
 (printout t ?e " obtendria " ?punt1 " puntos de felicidad si tiene una civilizacion de clima " ?civ1 "." crlf)
 (printout t "La creencia sobre si " ?e " puede tener esta civilizacion es: " ?si1 " puntos de que si, y " ?no1 " puntos de que no." crlf crlf)
 (printout t ?e " obtendria " ?punt2 " puntos de felicidad si tiene una civilizacion de clima " ?civ2 "." crlf)
 (printout t "La creencia sobre si " ?e " puede tener esta civilizacion es: " ?si2 " puntos de que si, y " ?no2 " puntos de que no." crlf crlf)
 (printout t ?e " obtendria " ?punt3 " puntos de felicidad si tiene una civilizacion de clima " ?civ3 "." crlf)
 (printout t "La creencia sobre si " ?e " puede tener esta civilizacion es: " ?si3 " puntos de que si, y " ?no3 " puntos de que no." crlf crlf)
 (assert(civilizacion_asignada_calculos (empleado ?e)(civilizacion ?civ1)))
 (printout t "Se asigna la civilizacion de clima " ?civ1 " a " ?e " para calcular sus puntos de utilidad, ya que es la que le proporciona mas puntos de felicidad de entre las que es mas probable que tenga." crlf crlf)
 (assert(puntos_utilidad_no_activo (empleado ?e)(utilidad (- (- ?punt1 (- ?na ?n)) (- ?nra ?nr)))))
 (printout t ?e " obtendria " (- (- ?punt1 (- ?na ?n)) (- ?nra ?nr)) " puntos de utilidad del intercambio, al ofertar " ?n " planetas habitables y " ?nr " planetas de recursos, mientras el jugador activo oferta " ?na " planetas habitables y " ?nra " planetas de recursos." crlf crlf)
 (printout t crlf)
)

;Regla para determinar que civilizacion se asignara a los calculos de utilidad de los jugadores no activos y para calcular dicha utilidad (caso 3).
;En este caso, la civilizacion que mas puntos de felicidad proporciona a uno de los jugadores no activos NO es una de las que es mas probable que tenga,
;y las que es mas probable que tenga dan puntos negativos, por lo que se elige la que mas puntos de felicidad proporciona aunque no este entre las que
;es mas probable que tenga.
(defrule asignar_civilizacion_determinar_utilidad_intercambios_no_activos_3
 (utilidad_cartas_ofertadas_impresa)
 (object (is-a EMPLEADO) (nombre ?ea)(civilizacion ?c)(num_planetas_habitables_ofertados ?na)(num_planetas_recursos_ofertados ?nra))
 (object (is-a EMPLEADO) (nombre ?e)(civilizacion secreta)(num_planetas_habitables_ofertados ?n)(num_planetas_recursos_ofertados ?nr))
 (not (civilizacion_asignada_calculos (empleado ?e)))
 (not(object (is-a PLANETA) (puntuacion_sumada una_vez)))
 ?posible-civilizacion1<-(posible_civilizacion (empleado ?emp)(civilizacion ?civ1)(puntos_creencia_si ?si1)(puntos_creencia_no ?no1)(puntos_felicidad ?punt1))
 ?posible-civilizacion2<-(posible_civilizacion (empleado ?emp)(civilizacion ?civ2)(puntos_creencia_si ?si2)(puntos_creencia_no ?no2)(puntos_felicidad ?punt2))
 ?posible-civilizacion3<-(posible_civilizacion (empleado ?emp)(civilizacion ?civ3)(puntos_creencia_si ?si3)(puntos_creencia_no ?no3)(puntos_felicidad ?punt3))
 (test (eq ?emp ?e))
 (test (neq ?ea ?e))
 (test (neq ?c secreta))
 (test (not(< ?si1 ?no1)))
 (test (< ?si3 ?no3))
 (test (< ?punt1 0))
 (test (< ?punt2 0))
 (test (< ?punt1 ?punt3))
 (test (< ?punt2 ?punt2))
 (test (neq ?civ1 ?civ2))
 (test (neq ?civ1 ?civ3))
 (test (neq ?civ2 ?civ3))
 =>
 (printout t ?e " obtendria " ?punt1 " puntos de felicidad si tiene una civilizacion de clima " ?civ1 "." crlf)
 (printout t "La creencia sobre si " ?e " puede tener esta civilizacion es: " ?si1 " puntos de que si, y " ?no1 " puntos de que no." crlf crlf)
 (printout t ?e " obtendria " ?punt2 " puntos de felicidad si tiene una civilizacion de clima " ?civ2 "." crlf)
 (printout t "La creencia sobre si " ?e " puede tener esta civilizacion es: " ?si2 " puntos de que si, y " ?no2 " puntos de que no." crlf crlf)
 (printout t ?e " obtendria " ?punt3 " puntos de felicidad si tiene una civilizacion de clima " ?civ3 "." crlf)
 (printout t "La creencia sobre si " ?e " puede tener esta civilizacion es: " ?si3 " puntos de que si, y " ?no3 " puntos de que no." crlf crlf)
 (assert(civilizacion_asignada_calculos (empleado ?e)(civilizacion ?civ3)))
 (printout t "Se asigna la civilizacion de clima " ?civ3 " a " ?e " para calcular sus puntos de utilidad, ya que es la que le proporciona mas puntos de felicidad y las que es mas probable que tenga dan puntos negativos." crlf crlf)
 (assert(puntos_utilidad_no_activo (empleado ?e)(utilidad (- (- ?punt3 (- ?na ?n)) (- ?nra ?nr)))))
 (printout t ?e " obtendria " (- (- ?punt3 (- ?na ?n)) (- ?nra ?nr)) " puntos de utilidad del intercambio, al ofertar " ?n " planetas habitables y " ?nr " planetas de recursos, mientras el jugador activo oferta " ?na " planetas habitables y " ?nra " planetas de recursos." crlf crlf)
 (printout t crlf)
)

;Regla para determinar que civilizacion se asignara a los calculos de utilidad de los jugadores no activos y para calcular dicha utilidad (caso 4).
;En este caso, la unica civilizacion que esta entre las que es mas probable que tenga el jugador no activo es la que menos puntos de felicidad le proporciona, 
;pero al ser los puntos positivos se elige dicha civilizacion para los calculos de utilidad.
(defrule asignar_civilizacion_determinar_utilidad_intercambios_no_activos_4
 (utilidad_cartas_ofertadas_impresa)
 (object (is-a EMPLEADO) (nombre ?ea)(civilizacion ?c)(num_planetas_habitables_ofertados ?na)(num_planetas_recursos_ofertados ?nra))
 (object (is-a EMPLEADO) (nombre ?e)(civilizacion secreta)(num_planetas_habitables_ofertados ?n)(num_planetas_recursos_ofertados ?nr))
 (not (civilizacion_asignada_calculos (empleado ?e)))
 (not(object (is-a PLANETA) (puntuacion_sumada una_vez)))
 ?posible-civilizacion1<-(posible_civilizacion (empleado ?emp)(civilizacion ?civ1)(puntos_creencia_si ?si1)(puntos_creencia_no ?no1)(puntos_felicidad ?punt1))
 ?posible-civilizacion2<-(posible_civilizacion (empleado ?emp)(civilizacion ?civ2)(puntos_creencia_si ?si2)(puntos_creencia_no ?no2)(puntos_felicidad ?punt2))
 ?posible-civilizacion3<-(posible_civilizacion (empleado ?emp)(civilizacion ?civ3)(puntos_creencia_si ?si3)(puntos_creencia_no ?no3)(puntos_felicidad ?punt3))
 (test (eq ?emp ?e))
 (test (neq ?ea ?e))
 (test (neq ?c secreta))
 (test (not(< ?si1 ?no1)))
 (test (< ?si2 ?no2))
 (test (< ?si3 ?no3))
 (test (> ?punt1 0))
 (test (< ?punt1 ?punt2))
 (test (< ?punt1 ?punt3))
 (test (neq ?civ1 ?civ2))
 (test (neq ?civ1 ?civ3))
 (test (neq ?civ2 ?civ3))
 =>
 (printout t ?e " obtendria " ?punt1 " puntos de felicidad si tiene una civilizacion de clima " ?civ1 "." crlf)
 (printout t "La creencia sobre si " ?e " puede tener esta civilizacion es: " ?si1 " puntos de que si, y " ?no1 " puntos de que no." crlf crlf)
 (printout t ?e " obtendria " ?punt2 " puntos de felicidad si tiene una civilizacion de clima " ?civ2 "." crlf)
 (printout t "La creencia sobre si " ?e " puede tener esta civilizacion es: " ?si2 " puntos de que si, y " ?no2 " puntos de que no." crlf crlf)
 (printout t ?e " obtendria " ?punt3 " puntos de felicidad si tiene una civilizacion de clima " ?civ3 "." crlf)
 (printout t "La creencia sobre si " ?e " puede tener esta civilizacion es: " ?si3 " puntos de que si, y " ?no3 " puntos de que no." crlf crlf)
 (assert(civilizacion_asignada_calculos (empleado ?e)(civilizacion ?civ1)))
 (printout t "Se asigna la civilizacion de clima " ?civ1 " a " ?e " para calcular sus puntos de utilidad, ya que es la unica que es mas probable que tenga y proporciona puntos positivos." crlf crlf)
 (assert(puntos_utilidad_no_activo (empleado ?e)(utilidad (- (- ?punt1 (- ?na ?n)) (- ?nra ?nr)))))
 (printout t ?e " obtendria " (- (- ?punt1 (- ?na ?n)) (- ?nra ?nr)) " puntos de utilidad del intercambio, al ofertar " ?n " planetas habitables y " ?nr " planetas de recursos, mientras el jugador activo oferta " ?na " planetas habitables y " ?nra " planetas de recursos." crlf crlf)
 (printout t crlf)
)

;Regla para determinar que civilizacion se asignara a los calculos de utilidad de los jugadores no activos y para calcular dicha utilidad (caso 5).
;En este caso, todas las civilizaciones es poco probable que las pueda tener el jugador activo (se tiene mas puntos de creencia de que NO puede tenerlas que de 
;que SI), por lo que se asigna la que mas puntos de felicidad proporcionaria.
(defrule asignar_civilizacion_determinar_utilidad_intercambios_no_activos_5
 (utilidad_cartas_ofertadas_impresa)
 (object (is-a EMPLEADO) (nombre ?ea)(civilizacion ?c)(num_planetas_habitables_ofertados ?na)(num_planetas_recursos_ofertados ?nra))
 (object (is-a EMPLEADO) (nombre ?e)(civilizacion secreta)(num_planetas_habitables_ofertados ?n)(num_planetas_recursos_ofertados ?nr))
 (not (civilizacion_asignada_calculos (empleado ?e)))
 (not(object (is-a PLANETA) (puntuacion_sumada una_vez)))
 ?posible-civilizacion1<-(posible_civilizacion (empleado ?emp)(civilizacion ?civ1)(puntos_creencia_si ?si1)(puntos_creencia_no ?no1)(puntos_felicidad ?punt1))
 ?posible-civilizacion2<-(posible_civilizacion (empleado ?emp)(civilizacion ?civ2)(puntos_creencia_si ?si2)(puntos_creencia_no ?no2)(puntos_felicidad ?punt2))
 ?posible-civilizacion3<-(posible_civilizacion (empleado ?emp)(civilizacion ?civ3)(puntos_creencia_si ?si3)(puntos_creencia_no ?no3)(puntos_felicidad ?punt3))
 (test (eq ?emp ?e))
 (test (neq ?ea ?e))
 (test (neq ?c secreta))
 (test (< ?si1 ?no1))
 (test (< ?si2 ?no2))
 (test (< ?si3 ?no3))
 (test (> ?punt1 ?punt2))
 (test (> ?punt1 ?punt3))
 (test (neq ?civ1 ?civ2))
 (test (neq ?civ1 ?civ3))
 (test (neq ?civ2 ?civ3))
 =>
 (printout t ?e " obtendria " ?punt1 " puntos de felicidad si tiene una civilizacion de clima " ?civ1 "." crlf)
 (printout t "La creencia sobre si " ?e " puede tener esta civilizacion es: " ?si1 " puntos de que si, y " ?no1 " puntos de que no." crlf crlf)
 (printout t ?e " obtendria " ?punt2 " puntos de felicidad si tiene una civilizacion de clima " ?civ2 "." crlf)
 (printout t "La creencia sobre si " ?e " puede tener esta civilizacion es: " ?si2 " puntos de que si, y " ?no2 " puntos de que no." crlf crlf)
 (printout t ?e " obtendria " ?punt3 " puntos de felicidad si tiene una civilizacion de clima " ?civ3 "." crlf)
 (printout t "La creencia sobre si " ?e " puede tener esta civilizacion es: " ?si3 " puntos de que si, y " ?no3 " puntos de que no." crlf crlf)
 (assert(civilizacion_asignada_calculos (empleado ?e)(civilizacion ?civ3)))
 (printout t "Se asigna la civilizacion de clima " ?civ3 " a " ?e " para calcular sus puntos de utilidad, porque es la que proporciona mas puntos de felicidad y ninguna esta entre las que es mas probable que tenga." crlf crlf)
 (assert(puntos_utilidad_no_activo (empleado ?e)(utilidad (- (- ?punt3 (- ?na ?n)) (- ?nra ?nr)))))
 (printout t ?e " obtendria " (- (- ?punt3 (- ?na ?n)) (- ?nra ?nr)) " puntos de utilidad del intercambio, al ofertar " ?n " planetas habitables y " ?nr " planetas de recursos, mientras el jugador activo oferta " ?na " planetas habitables y " ?nra " planetas de recursos." crlf crlf)
 (printout t crlf)
)

;Regla para determinar que civilizacion se asignara a los calculos de utilidad de los jugadores no activos y para calcular dicha utilidad (caso 6).
;En este caso, todas las civilizaciones dan la misma puntuacion, por lo que asigna la civilizacion en la que es mayor la diferencia entre que SI puede tenerla y que NO puede tenerla.
(defrule asignar_civilizacion_determinar_utilidad_intercambios_no_activos_6
 (utilidad_cartas_ofertadas_impresa)
 (object (is-a EMPLEADO) (nombre ?ea)(civilizacion ?c)(num_planetas_habitables_ofertados ?na)(num_planetas_recursos_ofertados ?nra))
 (object (is-a EMPLEADO) (nombre ?e)(civilizacion secreta)(num_planetas_habitables_ofertados ?n)(num_planetas_recursos_ofertados ?nr))
 (not (civilizacion_asignada_calculos (empleado ?e)))
 (not(object (is-a PLANETA) (puntuacion_sumada una_vez)))
 ?posible-civilizacion1<-(posible_civilizacion (empleado ?emp)(civilizacion ?civ1)(puntos_creencia_si ?si1)(puntos_creencia_no ?no1)(puntos_felicidad ?punt1))
 ?posible-civilizacion2<-(posible_civilizacion (empleado ?emp)(civilizacion ?civ2)(puntos_creencia_si ?si2)(puntos_creencia_no ?no2)(puntos_felicidad ?punt2))
 ?posible-civilizacion3<-(posible_civilizacion (empleado ?emp)(civilizacion ?civ3)(puntos_creencia_si ?si3)(puntos_creencia_no ?no3)(puntos_felicidad ?punt3))
 (test (eq ?emp ?e))
 (test (neq ?ea ?e))
 (test (neq ?c secreta))
 (test (= ?punt1 ?punt2))
 (test (= ?punt1 ?punt3))
 (test (> (- ?si1 ?no1) (- ?si2 ?no2)))
 (test (> (- ?si1 ?no1) (- ?si3 ?no3)))
 (test (neq ?civ1 ?civ2))
 (test (neq ?civ1 ?civ3))
 (test (neq ?civ2 ?civ3))
 =>
 (printout t ?e " obtendria " ?punt1 " puntos de felicidad si tiene una civilizacion de clima " ?civ1 "." crlf)
 (printout t "La creencia sobre si " ?e " puede tener esta civilizacion es: " ?si1 " puntos de que si, y " ?no1 " puntos de que no." crlf crlf)
 (printout t ?e " obtendria " ?punt2 " puntos de felicidad si tiene una civilizacion de clima " ?civ2 "." crlf)
 (printout t "La creencia sobre si " ?e " puede tener esta civilizacion es: " ?si2 " puntos de que si, y " ?no2 " puntos de que no." crlf crlf)
 (printout t ?e " obtendria " ?punt3 " puntos de felicidad si tiene una civilizacion de clima " ?civ3 "." crlf)
 (printout t "La creencia sobre si " ?e " puede tener esta civilizacion es: " ?si3 " puntos de que si, y " ?no3 " puntos de que no." crlf crlf)
 (assert(civilizacion_asignada_calculos (empleado ?e)(civilizacion ?civ1)))
 (printout t "Se asigna la civilizacion de clima " ?civ1 " a " ?e " para calcular sus puntos de utilidad, porque es de la que es mas probable que tenga." crlf crlf)
 (assert(puntos_utilidad_no_activo (empleado ?e)(utilidad (- (- ?punt1 (- ?na ?n)) (- ?nra ?nr)))))
 (printout t ?e " obtendria " (- (- ?punt1 (- ?na ?n)) (- ?nra ?nr)) " puntos de utilidad del intercambio, al ofertar " ?n " planetas habitables y " ?nr " planetas de recursos, mientras el jugador activo oferta " ?na " planetas habitables y " ?nra " planetas de recursos." crlf crlf)
 (printout t crlf)
)

;Regla para determinar que civilizacion se asignara a los calculos de utilidad de los jugadores no activos y para calcular dicha utilidad (caso 7).
;En este caso, todas las civilizaciones dan la misma puntuacion, y la diferencia entre las creencias de que SI puede tener una civilizacion y las de que NO puede tenerla son identicas, por lo que se elige cualquiera de ellas.
(defrule asignar_civilizacion_determinar_utilidad_intercambios_no_activos_7
 (utilidad_cartas_ofertadas_impresa)
 (object (is-a EMPLEADO) (nombre ?ea)(civilizacion ?c)(num_planetas_habitables_ofertados ?na)(num_planetas_recursos_ofertados ?nra))
 (object (is-a EMPLEADO) (nombre ?e)(civilizacion secreta)(num_planetas_habitables_ofertados ?n)(num_planetas_recursos_ofertados ?nr))
 (not (civilizacion_asignada_calculos (empleado ?e)))
 (not(object (is-a PLANETA) (puntuacion_sumada una_vez)))
 ?posible-civilizacion1<-(posible_civilizacion (empleado ?emp)(civilizacion ?civ1)(puntos_creencia_si ?si1)(puntos_creencia_no ?no1)(puntos_felicidad ?punt1))
 ?posible-civilizacion2<-(posible_civilizacion (empleado ?emp)(civilizacion ?civ2)(puntos_creencia_si ?si2)(puntos_creencia_no ?no2)(puntos_felicidad ?punt2))
 ?posible-civilizacion3<-(posible_civilizacion (empleado ?emp)(civilizacion ?civ3)(puntos_creencia_si ?si3)(puntos_creencia_no ?no3)(puntos_felicidad ?punt3))
 (test (eq ?emp ?e))
 (test (neq ?ea ?e))
 (test (neq ?c secreta))
 (test (= ?punt1 ?punt2))
 (test (= ?punt1 ?punt3))
 (test (= (- ?si1 ?no1) (- ?si2 ?no2)))
 (test (= (- ?si1 ?no1) (- ?si3 ?no3)))
 (test (neq ?civ1 ?civ2))
 (test (neq ?civ1 ?civ3))
 (test (neq ?civ2 ?civ3))
 =>
 (printout t ?e " obtendria " ?punt1 " puntos de felicidad si tiene una civilizacion de clima " ?civ1 "." crlf)
 (printout t "La creencia sobre si " ?e " puede tener esta civilizacion es: " ?si1 " puntos de que si, y " ?no1 " puntos de que no." crlf crlf)
 (printout t ?e " obtendria " ?punt2 " puntos de felicidad si tiene una civilizacion de clima " ?civ2 "." crlf)
 (printout t "La creencia sobre si " ?e " puede tener esta civilizacion es: " ?si2 " puntos de que si, y " ?no2 " puntos de que no." crlf crlf)
 (printout t ?e " obtendria " ?punt3 " puntos de felicidad si tiene una civilizacion de clima " ?civ3 "." crlf)
 (printout t "La creencia sobre si " ?e " puede tener esta civilizacion es: " ?si3 " puntos de que si, y " ?no3 " puntos de que no." crlf crlf)
 (assert(civilizacion_asignada_calculos (empleado ?e)(civilizacion ?civ1)))
 (printout t "Se asigna la civilizacion de clima " ?civ1 " a " ?e " para calcular sus puntos de utilidad, pero se podría haber asignado cualquiera de las otras, ya que se tienen las mismas creencias en las tres civilizaciones." crlf crlf)
 (assert(puntos_utilidad_no_activo (empleado ?e)(utilidad (- (- ?punt1 (- ?na ?n)) (- ?nra ?nr)))))
 (printout t ?e " obtendria " (- (- ?punt1 (- ?na ?n)) (- ?nra ?nr)) " puntos de utilidad del intercambio, al ofertar " ?n " planetas habitables y " ?nr " planetas de recursos, mientras el jugador activo oferta " ?na " planetas habitables y " ?nra " planetas de recursos." crlf crlf)
 (printout t crlf)
)

;Regla para calcular e imprimir la utilidad obtenida por el jugador activo en cada intercambio suponiendo que los jugadores no activos tienen la civilizacion 
;asignada para los calculos.
(defrule determinar_utilidad_intercambios_activo
 (not(utilidad_activo_impresa))
 (civilizacion_asignada_calculos (empleado ?e1))
 (civilizacion_asignada_calculos (empleado ?e2))
 (object (is-a EMPLEADO) (nombre ?ea)(civilizacion ?civ))
 (object (is-a EMPLEADO) (nombre ?e1)(civilizacion secreta)(positividad_acumulada ?pa1))
 (object (is-a EMPLEADO) (nombre ?e2)(civilizacion secreta)(positividad_acumulada ?pa2))
 ?puntos-activo1<-(puntos_utilidad_activo (empleado ?ea1)(utilidad ?u1))
 ?puntos-activo2<-(puntos_utilidad_activo (empleado ?ea2)(utilidad ?u2))
 (puntos_utilidad_no_activo (empleado ?emp1)(utilidad ?un1))
 (puntos_utilidad_no_activo (empleado ?emp2)(utilidad ?un2))
 (test (neq ?civ secreta))
 (test (eq ?emp1 ?e1))
 (test (eq ?emp2 ?e2))
 (test (neq ?ea ?e1))
 (test (neq ?ea ?e2))
 (test (eq ?e1 ?ea1))
 (test (eq ?e2 ?ea2))
 (test (neq ?e1 ?e2))
 =>
 (modify ?puntos-activo1 (utilidad (- (- ?u1 ?un1)?pa1)))
 (modify ?puntos-activo2 (utilidad (- (- ?u2 ?un2)?pa2)))
 (printout t "Teniendo en cuenta que la positividad acumulada de " ?e1 " es " ?pa1 " y que obtendria " ?un1 " puntos de utilidad, " ?ea " obtendria una utilidad de " (- (- ?u1 ?un1)?pa1) " si aceptara la oferta de " ?e1 "." crlf crlf)
 (printout t "Teniendo en cuenta que la positividad acumulada de " ?e2 " es " ?pa2 " y que obtendria " ?un2 " puntos de utilidad, " ?ea " obtendria una utilidad de " (- (- ?u2 ?un2)?pa2) " si aceptara la oferta de " ?e2 "." crlf crlf)
 (assert(utilidad_activo_impresa))
 (printout t crlf)
)

;Regla para decidir que oferta acepta el jugador activo, si acepta alguna, basandose en la utilidad y/o en las puntucaciones acumuladas (caso 1).
;En este caso, al menos una de las utilidades obtenidas por el jugador activo con las ofertas es positiva, y se acepta la que produzca mas utilidad.
(defrule aceptar_rechazar_oferta_1
 (utilidad_activo_impresa)
 (not(decision_tomada))
 (object (is-a EMPLEADO) (nombre ?ea)(civilizacion ?civ))
 (object (is-a EMPLEADO) (nombre ?e1)(civilizacion secreta))
 (object (is-a EMPLEADO) (nombre ?e2)(civilizacion secreta))
 (puntos_utilidad_activo (empleado ?emp1)(utilidad ?u1))
 (puntos_utilidad_activo (empleado ?emp2)(utilidad ?u2))
 (test (neq ?civ secreta))
 (test (eq ?emp1 ?e1))
 (test (eq ?emp2 ?e2))
 (test (neq ?ea ?e1))
 (test (neq ?ea ?e2))
 (test (neq ?e1 ?e2))
 (test (> ?u1 ?u2))
 (test (> ?u1 0))
 =>
 (printout t ?ea " acepta la oferta de " ?emp1 ", ya que es quien ofrece los planetas que generan mas utilidad." crlf crlf)
 (assert(oferta (empleado ?e1)(decision aceptada)))
 (assert(oferta (empleado ?e2)(decision rechazada)))
 (assert(decision_tomada))
 (printout t crlf)
)

;Regla para decidir que oferta acepta el jugador activo, si acepta alguna, basandose en la utilidad y/o en las puntucaciones acumuladas (caso 2).
;En este caso, las utilidades obtenidas por el jugador activo son positivas, pero identicas, por lo que se acepta la del jugador con menos puntuacion acumulada.
(defrule aceptar_rechazar_oferta_2
 (utilidad_activo_impresa)
 (not(decision_tomada))
 (object (is-a EMPLEADO) (nombre ?ea)(civilizacion ?civ))
 (object (is-a EMPLEADO) (nombre ?e1)(civilizacion secreta)(puntuacion_acumulada ?p1))
 (object (is-a EMPLEADO) (nombre ?e2)(civilizacion secreta)(puntuacion_acumulada ?p2))
 (puntos_utilidad_activo (empleado ?emp1)(utilidad ?u1))
 (puntos_utilidad_activo (empleado ?emp2)(utilidad ?u2))
 (test (neq ?civ secreta))
 (test (eq ?emp1 ?e1))
 (test (eq ?emp2 ?e2))
 (test (neq ?ea ?e1))
 (test (neq ?ea ?e2))
 (test (neq ?e1 ?e2))
 (test (= ?u1 ?u2))
 (test (< ?p1 ?p2))
 (test (> ?u1 0))
 (test (> ?u2 0))
 =>
 (printout t ?ea " acepta la oferta de " ?e1 ", ya que los dos ofrecen la misma utilidad, y " ?e1 " es quien tiene menos puntuacion acumulada, teniendo " ?p1 " puntos frente a los " ?p2 " que tiene " ?e2 "." crlf crlf)
 (assert(oferta (empleado ?e1)(decision aceptada)))
 (assert(oferta (empleado ?e2)(decision rechazada)))
 (assert(decision_tomada))
 (printout t crlf)
)

;Regla para decidir que oferta acepta el jugador activo, si acepta alguna, basandose en la utilidad y/o en las puntucaciones acumuladas (caso 3).
;En este caso, las utilidades obtenidas por el jugador activo son positivas, pero identicas, y las puntuaciones acumuladas de los jugadores no activos tambien 
;son identicas, por lo que se acepta cualquiera de las dos.
(defrule aceptar_rechazar_oferta_3
 (utilidad_activo_impresa)
 (not(decision_tomada))
 (object (is-a EMPLEADO) (nombre ?ea)(civilizacion ?civ))
 (object (is-a EMPLEADO) (nombre ?e1)(civilizacion secreta)(puntuacion_acumulada ?p1))
 (object (is-a EMPLEADO) (nombre ?e2)(civilizacion secreta)(puntuacion_acumulada ?p2))
 (puntos_utilidad_activo (empleado ?emp1)(utilidad ?u1))
 (puntos_utilidad_activo (empleado ?emp2)(utilidad ?u2))
 (test (neq ?civ secreta))
 (test (eq ?emp1 ?e1))
 (test (eq ?emp2 ?e2))
 (test (neq ?ea ?e1))
 (test (neq ?ea ?e2))
 (test (neq ?e1 ?e2))
 (test (= ?u1 ?u2))
 (test (= ?p1 ?p2))
 (test (> ?u1 0))
 (test (> ?u2 0))
 =>
 (printout t ?ea " acepta la oferta de " ?emp1 " pero podria haber aceptado la de " ?emp2 ", ya que los dos ofrecen la misma utilidad y tienen la misma puntuacion acumulada." crlf crlf)
 (assert(oferta (empleado ?e1)(decision aceptada)))
 (assert(oferta (empleado ?e2)(decision rechazada)))
 (assert(decision_tomada))
 (printout t crlf)
)

;Regla para decidir que oferta acepta el jugador activo, si acepta alguna, basandose en la utilidad y/o en las puntucaciones acumuladas (caso 4).
;En este caso, las utilidades obtenidas por el jugador activo son negativas, y la puntuacion acumulada del jugador activo no es la mayor de todas,
;por lo que rechaza las dos ofertas.
(defrule aceptar_rechazar_oferta_4
 (utilidad_activo_impresa)
 (not(decision_tomada))
 (object (is-a EMPLEADO) (nombre ?ea)(civilizacion ?civ)(puntuacion_acumulada ?pa))
 (object (is-a EMPLEADO) (nombre ?e1)(civilizacion secreta)(puntuacion_acumulada ?p1))
 (object (is-a EMPLEADO) (nombre ?e2)(civilizacion secreta)(puntuacion_acumulada ?p2))
 (puntos_utilidad_activo (empleado ?emp1)(utilidad ?u1))
 (puntos_utilidad_activo (empleado ?emp2)(utilidad ?u2))
 (test (neq ?civ secreta))
 (test (eq ?emp1 ?e1))
 (test (eq ?emp2 ?e2))
 (test (neq ?ea ?e1))
 (test (neq ?ea ?e2))
 (test (neq ?e1 ?e2))
 (test (not(> ?pa ?p1)))
 (test (< ?u1 0))
 (test (< ?u2 0))
 =>
 (printout t ?ea " rechaza todas las ofertas, ya que con las dos saldria perdiendo y ademas " ?ea " no tiene la mayor puntuacion acumulada, teniendo " ?pa " puntos frente a los " ?p1 crlf)
 (printout t "de " ?emp1 " y los " ?p2 " de " ?e2 "." crlf crlf)
 (assert(oferta (empleado ?e1)(decision rechazada)))
 (assert(oferta (empleado ?e2)(decision rechazada)))
 (assert(decision_tomada))
 (printout t crlf)
)

;Regla para decidir que oferta acepta el jugador activo, si acepta alguna, basandose en la utilidad y/o en las puntucaciones acumuladas (caso 5).
;En este caso, las utilidades obtenidas por el jugador activo son negativas, y la puntuacion acumulada del jugador activo es la mayor de todas, por lo que se
;calcula la diferencia entre la puntuacion acumulada del jugador activo y la siguiente puntuacion acumulada mas alta, y si la diferencia no es mayor que la
;utilidad de la oferta mas satisfactoria menos 10 puntos, quiere decir que el jugador activo tendra al menos 10 puntos de felicidad mas que el siguiente jugador
;despues del intercambio en su puntuacion acumulada, y por tanto se acepta dicha oferta.
(defrule aceptar_rechazar_oferta_5
 (utilidad_activo_impresa)
 (not(decision_tomada))
 (object (is-a EMPLEADO) (nombre ?ea)(civilizacion ?civ)(puntuacion_acumulada ?pa))
 (object (is-a EMPLEADO) (nombre ?e1)(civilizacion secreta)(puntuacion_acumulada ?p1))
 (object (is-a EMPLEADO) (nombre ?e2)(civilizacion secreta)(puntuacion_acumulada ?p2))
 (puntos_utilidad_activo (empleado ?emp1)(utilidad ?u1))
 (puntos_utilidad_activo (empleado ?emp2)(utilidad ?u2))
 (test (neq ?civ secreta))
 (test (or (eq ?emp1 ?e1)(eq ?emp1 ?e2)))
 (test (or (eq ?emp2 ?e2)(eq ?emp2 ?e1)))
 (test (neq ?emp1 ?emp2))
 (test (neq ?ea ?e1))
 (test (neq ?ea ?e2))
 (test (neq ?e1 ?e2))
 (test (> ?pa ?p1))
 (test (> ?pa ?p1))
 (test (> ?p1 ?p2))
 (test (> ?u1 ?u2))
 (test (< ?u1 0))
 (test (< ?u2 0))
 (test (not (> (- ?p1 ?pa) (- ?u1 10))))
 =>
 (printout t ?ea " estudia la oferta de " ?emp1 ", ya que a pesar de ofrecer planetas que proporcionan utilidad negativa, si " ?ea " es quien mas puntuacion acumulada tiene despues del intercambio, pero con una diferencia de 10 puntos, " ?ea " aceptara la oferta menos negativa." crlf crlf)
 (assert(oferta (empleado ?e2)(decision rechazada)))
 (printout t crlf)
 (printout t ?ea " debe obtener como minimo " (+ (- ?p1 ?pa) 10)" puntos de utilidad para que el intercambio con " ?emp1 " no resulte perjudicial, teniendo en cuenta que " ?ea " tiene " ?pa " puntos de puntuacion acumulada frente a los " ?p1 " del siguiente con mas puntuacion acumulada." crlf crlf)
 (printout t "Como " ?ea " obtiene una utilidad de " ?u1 " aceptando el intercambio que le ofrece " ?emp1 ", finalmente acepta su oferta." crlf crlf)
 (assert(oferta (empleado ?e1)(decision aceptada)))
 (assert(decision_tomada))
 (printout t crlf)
)

;Regla para decidir que oferta acepta el jugador activo, si acepta alguna, basandose en la utilidad y/o en las puntucaciones acumuladas (caso 6).
;En este caso, las utilidades obtenidas por el jugador activo son negativas, y la puntuacion acumulada del jugador activo es la mayor de todas, por lo que se
;calcula la diferencia entre la puntuacion acumulada del jugador activo y la siguiente puntuacion acumulada mas alta, y si la diferencia es mayor que la utilidad
;de la oferta mas satisfactoria menos 10 puntos, quiere decir que el jugador activo no tendra al menos 10 puntos de felicidad mas que el siguiente jugador en su
;puntuacion acumulada despues del intercambio, y por tanto rechaza las dos ofertas.
(defrule aceptar_rechazar_oferta_6
 (utilidad_activo_impresa)
 (not(decision_tomada))
 (object (is-a EMPLEADO) (nombre ?ea)(civilizacion ?civ)(puntuacion_acumulada ?pa))
 (object (is-a EMPLEADO) (nombre ?e1)(civilizacion secreta)(puntuacion_acumulada ?p1))
 (object (is-a EMPLEADO) (nombre ?e2)(civilizacion secreta)(puntuacion_acumulada ?p2))
 (puntos_utilidad_activo (empleado ?emp1)(utilidad ?u1))
 (puntos_utilidad_activo (empleado ?emp2)(utilidad ?u2))
 (test (neq ?civ secreta))
 (test (or (eq ?emp1 ?e1)(eq ?emp1 ?e2)))
 (test (or (eq ?emp2 ?e2)(eq ?emp2 ?e1)))
 (test (neq ?emp1 ?emp2))
 (test (neq ?ea ?e1))
 (test (neq ?ea ?e2))
 (test (neq ?e1 ?e2))
 (test (> ?pa ?p1))
 (test (> ?pa ?p1))
 (test (> ?p1 ?p2))
 (test (> ?u1 ?u2))
 (test (< ?u1 0))
 (test (< ?u2 0))
 (test (> (- ?p1 ?pa) (- ?u1 10)))
 =>
 (printout t ?ea " estudia la oferta de " ?emp1 ", ya que a pesar de ofrecer planetas que proporcionan utilidad negativa, si " ?ea " es quien mas puntuacion acumulada tiene despues del intercambio, pero con una diferencia de 10 puntos, " ?ea " aceptara la oferta menos negativa." crlf crlf)
 (assert(oferta (empleado ?e2)(decision rechazada)))
 (printout t)
 (printout t ?ea " debe obtener como minimo " (+ (- ?p1 ?pa) 10)" puntos de utilidad para que el intercambio con " ?emp1 " no resulte perjudicial, teniendo en cuenta que " ?ea " tiene " ?pa " puntos de puntuacion acumulada frente a los " ?p1 " del siguiente con mas puntuacion acumulada." crlf crlf)
 (printout t "Como " ?ea " obtiene una utilidad de " ?u1 " aceptando el intercambio que le ofrece " ?emp1 ", finalmente tampoco acepta su oferta." crlf crlf)
 (assert(oferta (empleado ?e1)(decision rechazada)))
 (assert(decision_tomada))
 (printout t crlf)
)

;Regla para decidir que oferta acepta el jugador activo, si acepta alguna, basandose en la utilidad y/o en las puntucaciones acumuladas (caso 7).
;Este es como el caso 5, pero las dos utilidades son identicas, por lo que se acepta la del jugador con menos puntuacion acumulada.
(defrule aceptar_rechazar_oferta_7
 (utilidad_activo_impresa)
 (not(decision_tomada))
 (object (is-a EMPLEADO) (nombre ?ea)(civilizacion ?civ)(puntuacion_acumulada ?pa))
 (object (is-a EMPLEADO) (nombre ?e1)(civilizacion secreta)(puntuacion_acumulada ?p1))
 (object (is-a EMPLEADO) (nombre ?e2)(civilizacion secreta)(puntuacion_acumulada ?p2))
 (puntos_utilidad_activo (empleado ?emp1)(utilidad ?u1))
 (puntos_utilidad_activo (empleado ?emp2)(utilidad ?u2))
 (test (neq ?civ secreta))
 (test (or (eq ?emp1 ?e1)(eq ?emp1 ?e2)))
 (test (or (eq ?emp2 ?e2)(eq ?emp2 ?e1)))
 (test (neq ?emp1 ?emp2))
 (test (neq ?ea ?e1))
 (test (neq ?ea ?e2))
 (test (neq ?e1 ?e2))
 (test (> ?pa ?p1))
 (test (> ?pa ?p1))
 (test (< ?p1 ?p2))
 (test (= ?u1 ?u2))
 (test (< ?u1 0))
 (test (< ?u2 0))
 (test (not (> (- ?p2 ?pa) (- ?u1 10))))
 =>
 (printout t ?ea " estudia la oferta de " ?e1 ", ya que a pesar de ofrecer planetas que proporcionan utilidad negativa IDENTICA, si " ?ea " es quien mas puntuacion acumulada tiene despues del intercambio, pero con una diferencia de 10 puntos, " ?ea " aceptara la oferta del jugador con menos puntuacion acumulada y " ?e1 " tiene " ?p1 " puntos frente a los " ?p2 " de " ?e2 "." crlf crlf)
 (assert(oferta (empleado ?e2)(decision rechazada)))
 (printout t)
 (printout t ?ea " debe obtener como minimo " (+ (- ?p2 ?pa) 10)" puntos de utilidad para que el intercambio con " ?e1 " no resulte perjudicial, teniendo en cuenta que " ?ea " tiene " ?pa " puntos de puntuacion acumulada frente a los " ?p2 " del siguiente con mas puntuacion acumulada." crlf crlf)
 (printout t "Como " ?ea " obtiene una utilidad de " ?u1 " aceptando el intercambio que le ofrece " ?e1 ", finalmente acepta su oferta." crlf crlf)
 (assert(oferta (empleado ?e1)(decision aceptada)))
 (assert(decision_tomada))
 (printout t crlf)
)

;Regla para decidir que oferta acepta el jugador activo, si acepta alguna, basandose en la utilidad y/o en las puntucaciones acumuladas (caso 8).
;Este es como el caso 7, pero las puntuaciones acumuladas de los jugadores no activos son identicas, por lo que se acepta cualquiera de las dos.
(defrule aceptar_rechazar_oferta_8
 (utilidad_activo_impresa)
 (not(decision_tomada))
 (object (is-a EMPLEADO) (nombre ?ea)(civilizacion ?civ)(puntuacion_acumulada ?pa))
 (object (is-a EMPLEADO) (nombre ?e1)(civilizacion secreta)(puntuacion_acumulada ?p1))
 (object (is-a EMPLEADO) (nombre ?e2)(civilizacion secreta)(puntuacion_acumulada ?p2))
 (puntos_utilidad_activo (empleado ?emp1)(utilidad ?u1))
 (puntos_utilidad_activo (empleado ?emp2)(utilidad ?u2))
 (test (neq ?civ secreta))
 (test (or (eq ?emp1 ?e1)(eq ?emp1 ?e2)))
 (test (or (eq ?emp2 ?e2)(eq ?emp2 ?e1)))
 (test (neq ?emp1 ?emp2))
 (test (neq ?ea ?e1))
 (test (neq ?ea ?e2))
 (test (neq ?e1 ?e2))
 (test (> ?pa ?p1))
 (test (> ?pa ?p1))
 (test (= ?p1 ?p2))
 (test (= ?u1 ?u2))
 (test (< ?u1 0))
 (test (< ?u2 0))
 (test (not (> (- ?p1 ?pa) (- ?u1 10))))
 =>
 (printout t ?ea " estudia la oferta de " ?emp1 ", pero podria haber estudiado la de " ?emp2 ", ya que a pesar de ofrecer planetas que proporcionan utilidad negativa IDENTICA, si " ?ea " es quien mas puntuacion acumulada tiene despues del intercambio, pero con una diferencia de 10 puntos, " ?ea " aceptara la oferta del jugador con menos puntuacion acumulada, pero los dos tienen la misma." crlf crlf)
 (assert(oferta (empleado ?e2)(decision rechazada)))
 (printout t)
 (printout t ?ea " debe obtener como minimo " (+ (- ?p1 ?pa) 10)" puntos de utilidad para que el intercambio con " ?emp1 " no resulte perjudicial, teniendo en cuenta que " ?ea " tiene " ?pa " puntos de puntuacion acumulada frente a los " ?p1 " de " ?emp1 " y " ?emp2 "." crlf crlf)
 (printout t "Como " ?ea " obtiene una utilidad de " ?u1 " aceptando el intercambio que le ofrece " ?emp1 ", finalmente acepta su oferta." crlf crlf)
 (assert(oferta (empleado ?e1)(decision aceptada)))
 (assert(decision_tomada))
 (printout t crlf)
)

;Regla para decidir el nuevo estado de animo de un jugador no activo despues de que su oferta sea aceptada (caso 1).
;En este caso el estado de animo inicial del jugador no activo es neutral y gana 5 o mas puntos de felicidad con el intercambio. 
(defrule decidir_estado_animo_oferta_aceptada_1
 (decision_tomada)
 (object (is-a EMPLEADO) (nombre ?e)(civilizacion secreta)(estado_animo neutral))
 (oferta (empleado ?e)(decision aceptada))
 (not (nuevo_estado_animo (empleado ?e)))
 (civilizacion_real (empleado ?emp)(civilizacion ?civ))
 (posible_civilizacion (empleado ?emp)(civilizacion ?c)(puntos_felicidad ?punt))
 (test (eq ?emp ?e))
 (test (eq ?civ ?c))
 (test (not (< ?punt 5)))
 =>
 (printout t "El estado de animo de " ?e " pasa de ser neutral a ser feliz, al haber ganado 5 o mas puntos de felicidad con el intercambio (" ?punt ")." crlf crlf)
 (assert(nuevo_estado_animo (empleado ?e)(estado_animo feliz)))
 (printout t crlf)
)

;Regla para decidir el nuevo estado de animo de un jugador no activo despues de que su oferta sea aceptada (caso 2).
;En este caso el estado de animo inicial del jugador no activo es neutral y gana mas de -5 y menos de 5 puntos de felicidad con el intercambio. 
(defrule decidir_estado_animo_oferta_aceptada_2
 (decision_tomada)
 (object (is-a EMPLEADO) (nombre ?e)(civilizacion secreta)(estado_animo neutral))
 (oferta (empleado ?e)(decision aceptada))
 (not (nuevo_estado_animo (empleado ?e)))
 (civilizacion_real (empleado ?emp)(civilizacion ?civ))
 (posible_civilizacion (empleado ?emp)(civilizacion ?c)(puntos_felicidad ?punt))
 (test (eq ?emp ?e))
 (test (eq ?civ ?c))
 (test (> ?punt -5))
 (test (< ?punt 5))
 =>
 (printout t "El estado de animo de " ?e " se mantiene neutral, al haber ganado mas de -5 y menos de 5 puntos de felicidad con el intercambio (" ?punt ")." crlf crlf)
 (assert(nuevo_estado_animo (empleado ?e)(estado_animo neutral)))
 (printout t crlf)
)

;Regla para decidir el nuevo estado de animo de un jugador no activo despues de que su oferta sea aceptada (caso 3).
;En este caso el estado de animo inicial del jugador no activo es neutral y gana -5 o menos puntos de felicidad con el intercambio. 
(defrule decidir_estado_animo_oferta_aceptada_3
 (decision_tomada)
 (object (is-a EMPLEADO) (nombre ?e)(civilizacion secreta)(estado_animo neutral))
 (oferta (empleado ?e)(decision aceptada))
 (not (nuevo_estado_animo (empleado ?e)))
 (civilizacion_real (empleado ?emp)(civilizacion ?civ))
 (posible_civilizacion (empleado ?emp)(civilizacion ?c)(puntos_felicidad ?punt))
 (test (eq ?emp ?e))
 (test (eq ?civ ?c))
 (test (not (> ?punt -5)))
 =>
 (printout t "El estado de animo de " ?e " pasa de ser neutral a ser triste, al haber ganado -5 o menos puntos de felicidad con el intercambio (" ?punt ")." crlf crlf)
 (assert(nuevo_estado_animo (empleado ?e)(estado_animo triste)))
 (printout t crlf)
)

;Regla para decidir el nuevo estado de animo de un jugador no activo despues de que su oferta sea aceptada (caso 4).
;En este caso el estado de animo inicial del jugador no activo es triste y gana 10 o mas puntos de felicidad con el intercambio. 
(defrule decidir_estado_animo_oferta_aceptada_4
 (decision_tomada)
 (object (is-a EMPLEADO) (nombre ?e)(civilizacion secreta)(estado_animo triste))
 (oferta (empleado ?e)(decision aceptada))
 (not (nuevo_estado_animo (empleado ?e)))
 (civilizacion_real (empleado ?emp)(civilizacion ?civ))
 (posible_civilizacion (empleado ?emp)(civilizacion ?c)(puntos_felicidad ?punt))
 (test (eq ?emp ?e))
 (test (eq ?civ ?c))
 (test (not (< ?punt 10)))
 =>
 (printout t "El estado de animo de " ?e " pasa de ser triste a ser feliz, al haber ganado 10 o mas puntos de felicidad con el intercambio (" ?punt ")." crlf crlf)
 (assert(nuevo_estado_animo (empleado ?e)(estado_animo feliz)))
 (printout t crlf)
)

;Regla para decidir el nuevo estado de animo de un jugador no activo despues de que su oferta sea aceptada (caso 5).
;En este caso el estado de animo inicial del jugador no activo es triste y gana mas de 0 y menos de 10 puntos de felicidad con el intercambio. 
(defrule decidir_estado_animo_oferta_aceptada_5
 (decision_tomada)
 (object (is-a EMPLEADO) (nombre ?e)(civilizacion secreta)(estado_animo triste))
 (oferta (empleado ?e)(decision aceptada))
 (not (nuevo_estado_animo (empleado ?e)))
 (civilizacion_real (empleado ?emp)(civilizacion ?civ))
 (posible_civilizacion (empleado ?emp)(civilizacion ?c)(puntos_felicidad ?punt))
 (test (eq ?emp ?e))
 (test (eq ?civ ?c))
 (test (> ?punt 0))
 (test (< ?punt 10))
 =>
 (printout t "El estado de animo de " ?e " pasa de ser triste a ser neutral, al haber ganado mas de 0 y menos de 10 puntos de felicidad con el intercambio (" ?punt ")." crlf crlf)
 (assert(nuevo_estado_animo (empleado ?e)(estado_animo neutral)))
 (printout t crlf)
)

;Regla para decidir el nuevo estado de animo de un jugador no activo despues de que su oferta sea aceptada (caso 6).
;En este caso el estado de animo inicial del jugador no activo es triste y gana 0 o menos puntos de felicidad con el intercambio. 
(defrule decidir_estado_animo_oferta_aceptada_6
 (decision_tomada)
 (object (is-a EMPLEADO) (nombre ?e)(civilizacion secreta)(estado_animo triste))
 (oferta (empleado ?e)(decision aceptada))
 (not (nuevo_estado_animo (empleado ?e)))
 (civilizacion_real (empleado ?emp)(civilizacion ?civ))
 (posible_civilizacion (empleado ?emp)(civilizacion ?c)(puntos_felicidad ?punt))
 (test (eq ?emp ?e))
 (test (eq ?civ ?c))
 (test (not (> ?punt 0)))
 =>
 (printout t "El estado de animo de " ?e " se mantiene triste, al haber ganado 0 o menos puntos de felicidad con el intercambio (" ?punt ")." crlf crlf)
 (assert(nuevo_estado_animo (empleado ?e)(estado_animo triste)))
 (printout t crlf)
)

;Regla para decidir el nuevo estado de animo de un jugador no activo despues de que su oferta sea aceptada (caso 7).
;En este caso el estado de animo inicial del jugador no activo es feliz y gana -5 o mas puntos de felicidad con el intercambio. 
(defrule decidir_estado_animo_oferta_aceptada_7
 (decision_tomada)
 (object (is-a EMPLEADO) (nombre ?e)(civilizacion secreta)(estado_animo feliz))
 (oferta (empleado ?e)(decision aceptada))
 (not (nuevo_estado_animo (empleado ?e)))
 (civilizacion_real (empleado ?emp)(civilizacion ?civ))
 (posible_civilizacion (empleado ?emp)(civilizacion ?c)(puntos_felicidad ?punt))
 (test (eq ?emp ?e))
 (test (eq ?civ ?c))
 (test (not (< ?punt -5)))
 =>
 (printout t "El estado de animo de " ?e " se mantiene feliz, al haber ganado -5 o mas puntos de felicidad con el intercambio (" ?punt ")." crlf crlf)
 (assert(nuevo_estado_animo (empleado ?e)(estado_animo feliz)))
 (printout t crlf)
)

;Regla para decidir el nuevo estado de animo de un jugador no activo despues de que su oferta sea aceptada (caso 8).
;En este caso el estado de animo inicial del jugador no activo es feliz y gana mas de -10 y menos de -5 puntos de felicidad con el intercambio. 
(defrule decidir_estado_animo_oferta_aceptada_8
 (decision_tomada)
 (object (is-a EMPLEADO) (nombre ?e)(civilizacion secreta)(estado_animo feliz))
 (oferta (empleado ?e)(decision aceptada))
 (not (nuevo_estado_animo (empleado ?e)))
 (civilizacion_real (empleado ?emp)(civilizacion ?civ))
 (posible_civilizacion (empleado ?emp)(civilizacion ?c)(puntos_felicidad ?punt))
 (test (eq ?emp ?e))
 (test (eq ?civ ?c))
 (test (> ?punt -10))
 (test (< ?punt -5))
 =>
 (printout t "El estado de animo de " ?e " pasa de ser feliz a ser neutral, al haber ganado mas de -10 y menos de -5 puntos de felicidad con el intercambio (" ?punt ")." crlf crlf)
 (assert(nuevo_estado_animo (empleado ?e)(estado_animo neutral)))
 (printout t crlf)
)

;Regla para decidir el nuevo estado de animo de un jugador no activo despues de que su oferta sea aceptada (caso 9).
;En este caso el estado de animo inicial del jugador no activo es feliz y gana -10 o menos puntos de felicidad con el intercambio. 
(defrule decidir_estado_animo_oferta_aceptada_9
 (decision_tomada)
 (object (is-a EMPLEADO) (nombre ?e)(civilizacion secreta)(estado_animo feliz))
 (oferta (empleado ?e)(decision aceptada))
 (not (nuevo_estado_animo (empleado ?e)))
 (civilizacion_real (empleado ?emp)(civilizacion ?civ))
 (posible_civilizacion (empleado ?emp)(civilizacion ?c)(puntos_felicidad ?punt))
 (test (eq ?emp ?e))
 (test (eq ?civ ?c))
 (test (not (> ?punt -10)))
 =>
 (printout t "El estado de animo de " ?e " pasa de ser feliz a ser triste, al haber ganado -10 o menos puntos de felicidad con el intercambio (" ?punt ")." crlf crlf) 
 (assert(nuevo_estado_animo (empleado ?e)(estado_animo triste)))
 (printout t crlf)
)

;Regla para decidir el nuevo estado de animo de un jugador no activo despues de que su oferta sea rechazada (caso 1).
;En este caso el estado de animo inicial del jugador no activo es neutral y habria ganado 5 o mas puntos de felicidad con el intercambio. 
(defrule decidir_estado_animo_oferta_rechazada_1
 (decision_tomada)
 (object (is-a EMPLEADO) (nombre ?e)(civilizacion secreta)(estado_animo neutral))
 (oferta (empleado ?e)(decision rechazada))
 (not (nuevo_estado_animo (empleado ?e)))
 (civilizacion_real (empleado ?emp)(civilizacion ?civ))
 (posible_civilizacion (empleado ?emp)(civilizacion ?c)(puntos_felicidad ?punt))
 (test (eq ?emp ?e))
 (test (eq ?civ ?c))
 (test (not (< ?punt 5)))
 =>
 (printout t "El estado de animo de " ?e " pasa de ser neutral a ser triste, al no haber ganado los 5 o mas puntos de felicidad que habria ganado de haber sido aceptada su oferta (" ?punt ")." crlf crlf)
 (assert(nuevo_estado_animo (empleado ?e)(estado_animo triste)))
 (printout t crlf)
)

;Regla para decidir el nuevo estado de animo de un jugador no activo despues de que su oferta sea rechazada (caso 2).
;En este caso el estado de animo inicial del jugador no activo es neutral y habria ganado mas de 0 y menos de 5 puntos de felicidad con el intercambio. 
(defrule decidir_estado_animo_oferta_rechazada_2
 (decision_tomada)
 (object (is-a EMPLEADO) (nombre ?e)(civilizacion secreta)(estado_animo neutral))
 (oferta (empleado ?e)(decision rechazada))
 (not (nuevo_estado_animo (empleado ?e)))
 (civilizacion_real (empleado ?emp)(civilizacion ?civ))
 (posible_civilizacion (empleado ?emp)(civilizacion ?c)(puntos_felicidad ?punt))
 (test (eq ?emp ?e))
 (test (eq ?civ ?c))
 (test (> ?punt 0))
 (test (< ?punt 5))
 =>
 (printout t "El estado de animo de " ?e " se mantiene neutral, aunque no ha ganado los mas de 0 y menos de 5 puntos de felicidad que habria ganado de haber sido aceptada su oferta (" ?punt ")." crlf crlf)
 (assert(nuevo_estado_animo (empleado ?e)(estado_animo neutral)))
 (printout t crlf)
)

;Regla para decidir el nuevo estado de animo de un jugador no activo despues de que su oferta sea rechazada (caso 3).
;En este caso el estado de animo inicial del jugador no activo es neutral y habria ganado 0 o menos puntos de felicidad con el intercambio. 
(defrule decidir_estado_animo_oferta_rechazada_3
 (decision_tomada)
 (object (is-a EMPLEADO) (nombre ?e)(civilizacion secreta)(estado_animo neutral))
 (oferta (empleado ?e)(decision rechazada))
 (not (nuevo_estado_animo (empleado ?e)))
 (civilizacion_real (empleado ?emp)(civilizacion ?civ))
 (posible_civilizacion (empleado ?emp)(civilizacion ?c)(puntos_felicidad ?punt))
 (test (eq ?emp ?e))
 (test (eq ?civ ?c))
 (test (not (> ?punt 0)))
 =>
 (printout t "El estado de animo de " ?e " pasa de ser neutral a ser feliz, al no haber perdido los puntos de felicidad que habria perdido de haber sido aceptada su oferta "(* ?punt -1)", y habiendo podido engañar al jugador activo con su civilizacion." crlf crlf)
 (assert(nuevo_estado_animo (empleado ?e)(estado_animo feliz)))
 (printout t crlf)
)

;Regla para decidir el nuevo estado de animo de un jugador no activo despues de que su oferta sea rechazada (caso 4).
;En este caso el estado de animo inicial del jugador no activo es triste y habria ganado mas de 0 puntos de felicidad con el intercambio. 
(defrule decidir_estado_animo_oferta_rechazada_4
 (decision_tomada)
 (object (is-a EMPLEADO) (nombre ?e)(civilizacion secreta)(estado_animo triste))
 (oferta (empleado ?e)(decision rechazada))
 (not (nuevo_estado_animo (empleado ?e)))
 (civilizacion_real (empleado ?emp)(civilizacion ?civ))
 (posible_civilizacion (empleado ?emp)(civilizacion ?c)(puntos_felicidad ?punt))
 (test (eq ?emp ?e))
 (test (eq ?civ ?c))
 (test (> ?punt 0))
 =>
 (printout t "El estado de animo de " ?e " se mantiene triste, al no haber ganado los mas de 0 puntos de felicidad que habria ganado de haber sido aceptada su oferta (" ?punt ")." crlf crlf)
 (assert(nuevo_estado_animo (empleado ?e)(estado_animo triste)))
 (printout t crlf)
)

;Regla para decidir el nuevo estado de animo de un jugador no activo despues de que su oferta sea rechazada (caso 5).
;En este caso el estado de animo inicial del jugador no activo es triste y habria ganado 0 o menos puntos de felicidad con el intercambio. 
(defrule decidir_estado_animo_oferta_rechazada_5
 (decision_tomada)
 (object (is-a EMPLEADO) (nombre ?e)(civilizacion secreta)(estado_animo triste))
 (oferta (empleado ?e)(decision rechazada))
 (not (nuevo_estado_animo (empleado ?e)))
 (civilizacion_real (empleado ?emp)(civilizacion ?civ))
 (posible_civilizacion (empleado ?emp)(civilizacion ?c)(puntos_felicidad ?punt))
 (test (eq ?emp ?e))
 (test (eq ?civ ?c))
 (test (not (> ?punt 0)))
 =>
 (printout t "El estado de animo de " ?e " pasa de ser triste a ser neutral, al no haber perdido los puntos de felicidad que habria perdido de haber sido aceptada su oferta "(* ?punt -1)", y habiendo podido engañar al jugador activo con su civilizacion." crlf crlf)
 (assert(nuevo_estado_animo (empleado ?e)(estado_animo neutral)))
 (printout t crlf)
)

;Regla para decidir el nuevo estado de animo de un jugador no activo despues de que su oferta sea rechazada (caso 6).
;En este caso el estado de animo inicial del jugador no activo es feliz y habria ganado -5 o menos puntos de felicidad con el intercambio. 
(defrule decidir_estado_animo_oferta_rechazada_6
 (decision_tomada)
 (object (is-a EMPLEADO) (nombre ?e)(civilizacion secreta)(estado_animo feliz))
 (oferta (empleado ?e)(decision rechazada))
 (not (nuevo_estado_animo (empleado ?e)))
 (civilizacion_real (empleado ?emp)(civilizacion ?civ))
 (posible_civilizacion (empleado ?emp)(civilizacion ?c)(puntos_felicidad ?punt))
 (test (eq ?emp ?e))
 (test (eq ?civ ?c))
 (test (not (> ?punt -5)))
 =>
 (printout t "El estado de animo de " ?e " se mantiene feliz, al no haber perdido los 5 o mas puntos de felicidad que habria perdido de haber sido aceptada su oferta "(* ?punt -1)", aunque es posible que no haya podido engañar al jugador activo con su civilizacion." crlf crlf)
 (assert(nuevo_estado_animo (empleado ?e)(estado_animo feliz)))
 (printout t crlf)
)

;Regla para decidir el nuevo estado de animo de un jugador no activo despues de que su oferta sea rechazada (caso 7).
;En este caso el estado de animo inicial del jugador no activo es feliz y habria ganado mas de -5 puntos de felicidad con el intercambio. 
(defrule decidir_estado_animo_oferta_rechazada_7
 (decision_tomada)
 (object (is-a EMPLEADO) (nombre ?e)(civilizacion secreta)(estado_animo feliz))
 (oferta (empleado ?e)(decision rechazada))
 (not (nuevo_estado_animo (empleado ?e)))
 (civilizacion_real (empleado ?emp)(civilizacion ?civ))
 (posible_civilizacion (empleado ?emp)(civilizacion ?c)(puntos_felicidad ?punt))
 (test (eq ?emp ?e))
 (test (eq ?civ ?c))
 (test (> ?punt -5))
 =>
 (printout t "El estado de animo de " ?e " pasa de ser feliz a ser neutral, al no haber ganado los mas de -5 puntos de felicidad que habria ganado de haber sido aceptada su oferta (" ?punt "), siendo posible que no haya podido engañar al jugador activo con su civilizacion." crlf crlf)
 (assert(nuevo_estado_animo (empleado ?e)(estado_animo neutral)))
 (printout t crlf)
)

;Regla para modificar la creencia de que un jugador no activo SI tiene una civilizacion de clima X y la positividad acumulada de dicho jugador en base a su 
;nuevo estado de animo (caso 1).
;En este caso la oferta del jugador no activo se ha aceptado y su estado de animo ha empeorado. 
(defrule modificar_creencia_civilizacion_y_positividad_acumulada_1
 (declare (salience 2))
 (decision_tomada)
 (or
  (and
   ?carta<-(object (is-a EMPLEADO) (nombre ?e)(civilizacion secreta)(estado_animo feliz)(positividad_acumulada ?pa))
   (nuevo_estado_animo (empleado ?emp)(estado_animo neutral))
  )
  (and
   ?carta<-(object (is-a EMPLEADO) (nombre ?e)(civilizacion secreta)(estado_animo neutral)(positividad_acumulada ?pa))
   (nuevo_estado_animo (empleado ?emp)(estado_animo triste))
  )
 )
 (not(modificaciones_realizadas (empleado ?emp)))
 (oferta (empleado ?emp)(decision aceptada))
 ?posible-civilizacion<-(posible_civilizacion (empleado ?emp)(civilizacion ?c)(puntos_creencia_si ?si))
 ?civilizacion_asignada<-(civilizacion_asignada_calculos (empleado ?emp)(civilizacion ?civ))
 (test (eq ?emp ?e))
 (test (eq ?civ ?c))
 =>
 (modify ?posible-civilizacion (puntos_creencia_si (- ?si 0.5)))
 (printout t "Se resta 0.5 a la creencia de que " ?e " tiene una civilizacion de clima " ?c "." crlf crlf)
 (modify-instance ?carta (positividad_acumulada (- ?pa 1)))
 (printout t "Se disminuye la positividad acumulada de " ?e " en 1 punto al haber empeorado su estado de animo despues ser aceptada su oferta, con lo que tiene " (- ?pa 1) " puntos de positividad acumulada." crlf crlf)
 (printout t crlf)
)

;Regla para modificar la creencia de que un jugador no activo SI tiene una civilizacion de clima X y la positividad acumulada de dicho jugador en base a su 
;nuevo estado de animo (caso 2).
;En este caso la oferta del jugador no activo se ha aceptado y su estado de animo ha mejorado. 
(defrule modificar_creencia_civilizacion_y_positividad_acumulada_2
 (declare (salience 2))
 (decision_tomada)
 (or
  (and
   ?carta<-(object (is-a EMPLEADO) (nombre ?e)(civilizacion secreta)(estado_animo triste)(positividad_acumulada ?pa))
   (nuevo_estado_animo (empleado ?emp)(estado_animo neutral))
  )
  (and
   ?carta<-(object (is-a EMPLEADO) (nombre ?e)(civilizacion secreta)(estado_animo neutral)(positividad_acumulada ?pa))
   (nuevo_estado_animo (empleado ?emp)(estado_animo feliz))
  )
 )
 (not(modificaciones_realizadas (empleado ?emp)))
 (oferta (empleado ?emp)(decision aceptada))
 ?posible-civilizacion<-(posible_civilizacion (empleado ?emp)(civilizacion ?c)(puntos_creencia_si ?si))
 ?civilizacion_asignada<-(civilizacion_asignada_calculos (empleado ?emp)(civilizacion ?civ))
 (test (eq ?emp ?e))
 (test (eq ?civ ?c))
 =>
 (modify ?posible-civilizacion (puntos_creencia_si (+ ?si 0.3)))
 (printout t "Se suma 0.3 a la creencia de que " ?e " tiene una civilizacion de clima " ?c "." crlf crlf)
 (modify-instance ?carta (positividad_acumulada (+ ?pa 1)))
 (printout t "Se aumenta la positividad acumulada de " ?e " en 1 punto al haber mejorado su estado de animo despues ser aceptada su oferta, con lo que tiene " (+ ?pa 1) " puntos de positividad acumulada." crlf crlf)
 (assert(modificaciones_realizadas (empleado ?e)))
 (printout t crlf)
)

;Regla para modificar la creencia de que un jugador no activo SI tiene una civilizacion de clima X y la positividad acumulada de dicho jugador en base a su 
;nuevo estado de animo (caso 3).
;En este caso la oferta del jugador no activo se ha aceptado y su estado de animo se ha mantenido, siendo este triste. 
(defrule modificar_creencia_civilizacion_y_positividad_acumulada_3
 (declare (salience 3))
 (decision_tomada)
 ?carta<-(object (is-a EMPLEADO) (nombre ?e)(civilizacion secreta)(estado_animo triste)(positividad_acumulada ?pa))
 (nuevo_estado_animo (empleado ?emp)(estado_animo triste))
 (not(modificaciones_realizadas (empleado ?emp)))
 (oferta (empleado ?emp)(decision aceptada))
 ?posible-civilizacion<-(posible_civilizacion (empleado ?emp)(civilizacion ?c)(puntos_creencia_si ?si))
 ?civilizacion_asignada<-(civilizacion_asignada_calculos (empleado ?emp)(civilizacion ?civ))
 (test (eq ?emp ?e))
 (test (eq ?civ ?c))
 =>
 (modify ?posible-civilizacion (puntos_creencia_si (- ?si 0.25)))
 (printout t "Se resta 0.25 a la creencia de que " ?e " tiene una civilizacion de clima " ?c "." crlf crlf)
 (modify-instance ?carta (positividad_acumulada (- ?pa 0.5)))
 (printout t "Se disminuye la positividad acumulada de " ?e " en 0.5 puntos al mantener su estado de animo triste despues de ser aceptada su oferta, con lo que tiene " (- ?pa 0.5) " puntos de positividad acumulada." crlf crlf)
 (assert(modificaciones_realizadas (empleado ?e)))
 (printout t crlf)
)

;Regla para modificar la creencia de que un jugador no activo SI tiene una civilizacion de clima X y la positividad acumulada de dicho jugador en base a su 
;nuevo estado de animo (caso 4).
;En este caso la oferta del jugador no activo se ha aceptado y su estado de animo se ha mantenido, siendo este feliz. 
(defrule modificar_creencia_civilizacion_y_positividad_acumulada_4
 (declare (salience 3))
 (decision_tomada)
 ?carta<-(object (is-a EMPLEADO) (nombre ?e)(civilizacion secreta)(estado_animo feliz)(positividad_acumulada ?pa))
 (nuevo_estado_animo (empleado ?emp)(estado_animo feliz))
 (not(modificaciones_realizadas (empleado ?emp)))
 (oferta (empleado ?emp)(decision aceptada))
 ?posible-civilizacion<-(posible_civilizacion (empleado ?emp)(civilizacion ?c)(puntos_creencia_si ?si))
 ?civilizacion_asignada<-(civilizacion_asignada_calculos (empleado ?emp)(civilizacion ?civ))
 (test (eq ?emp ?e))
 (test (eq ?civ ?c))
 =>
 (modify ?posible-civilizacion (puntos_creencia_si (+ ?si 0.15)))
 (printout t "Se suma 0.15 a la creencia de que " ?e " tiene una civilizacion de clima " ?c "." crlf crlf)
 (modify-instance ?carta (positividad_acumulada (+ ?pa 0.5)))
 (printout t "Se aumenta la positividad acumulada de " ?e " en 0.5 puntos al mantener su estado de animo feliz despues de ser aceptada su oferta, con lo que tiene " (+ ?pa 0.5) " puntos de positividad acumulada." crlf crlf)
 (printout t crlf)
)

;Regla para modificar la creencia de que un jugador no activo SI tiene una civilizacion de clima X y la positividad acumulada de dicho jugador en base a su 
;nuevo estado de animo (caso 5).
;En este caso la oferta del jugador no activo se ha rechazado y su estado de animo ha empeorado. 
(defrule modificar_creencia_civilizacion_y_positividad_acumulada_5
 (declare (salience 2))
 (decision_tomada)
 (or
  (and
   ?carta<-(object (is-a EMPLEADO) (nombre ?e)(civilizacion secreta)(estado_animo feliz)(positividad_acumulada ?pa))
   (nuevo_estado_animo (empleado ?emp)(estado_animo neutral))
  )
  (and
   ?carta<-(object (is-a EMPLEADO) (nombre ?e)(civilizacion secreta)(estado_animo neutral)(positividad_acumulada ?pa))
   (nuevo_estado_animo (empleado ?emp)(estado_animo triste))
  )
 )
 (not(modificaciones_realizadas (empleado ?emp)))
 (oferta (empleado ?emp)(decision rechazada))
 ?posible-civilizacion<-(posible_civilizacion (empleado ?emp)(civilizacion ?c)(puntos_creencia_si ?si))
 ?civilizacion_asignada<-(civilizacion_asignada_calculos (empleado ?emp)(civilizacion ?civ))
 (test (eq ?emp ?e))
 (test (eq ?civ ?c))
 =>
 (modify ?posible-civilizacion (puntos_creencia_si (+ ?si 0.3)))
 (printout t "Se suma 0.3 a la creencia de que " ?e " tiene una civilizacion de clima " ?c "." crlf crlf)
 (modify-instance ?carta (positividad_acumulada (- ?pa 1)))
 (printout t "Se disminuye la positividad acumulada de " ?e " en 1 punto al empeorar su estado de animo despues de ser rechazada su oferta, con lo que tiene " (- ?pa 1) " puntos de positividad acumulada." crlf crlf)
 (assert(modificaciones_realizadas (empleado ?e)))
 (printout t crlf)
)

;Regla para modificar la creencia de que un jugador no activo SI tiene una civilizacion de clima X y la positividad acumulada de dicho jugador en base a su 
;nuevo estado de animo (caso 6).
;En este caso la oferta del jugador no activo se ha rechazado y su estado de animo ha mejorado. 
(defrule modificar_creencia_civilizacion_y_positividad_acumulada_6
 (declare (salience 2))
 (decision_tomada)
 (or
  (and
   ?carta<-(object (is-a EMPLEADO) (nombre ?e)(civilizacion secreta)(estado_animo triste)(positividad_acumulada ?pa))
   (nuevo_estado_animo (empleado ?emp)(estado_animo neutral))
  )
  (and
   ?carta<-(object (is-a EMPLEADO) (nombre ?e)(civilizacion secreta)(estado_animo neutral)(positividad_acumulada ?pa))
   (nuevo_estado_animo (empleado ?emp)(estado_animo feliz))
  )
 )
 (not(modificaciones_realizadas (empleado ?emp)))
 (oferta (empleado ?emp)(decision rechazada))
 ?posible-civilizacion<-(posible_civilizacion (empleado ?emp)(civilizacion ?c)(puntos_creencia_si ?si))
 ?civilizacion_asignada<-(civilizacion_asignada_calculos (empleado ?emp)(civilizacion ?civ))
 (test (eq ?emp ?e))
 (test (eq ?civ ?c))
 =>
 (modify ?posible-civilizacion (puntos_creencia_si (- ?si 0.5)))
 (printout t "Se resta 0.5 a la creencia de que " ?e " tiene una civilizacion de clima " ?c "." crlf crlf)
 (modify-instance ?carta (positividad_acumulada (+ ?pa 1)))
 (printout t "Se aumenta la positividad acumulada de " ?e " en 1 punto al haber mejorado su estado de animo despues ser rechazada su oferta, con lo que tiene " (+ ?pa 1) " puntos de positividad acumulada." crlf crlf)
 (assert(modificaciones_realizadas (empleado ?e)))
 (printout t crlf)
)

;Regla para modificar la creencia de que un jugador no activo SI tiene una civilizacion de clima X y la positividad acumulada de dicho jugador en base a su 
;nuevo estado de animo (caso 7).
;En este caso la oferta del jugador no activo se ha rechazado y su estado de animo se ha mantenido, siendo este triste. 
(defrule modificar_creencia_civilizacion_y_positividad_acumulada_7
 (declare (salience 3))
 (decision_tomada)
 ?carta<-(object (is-a EMPLEADO) (nombre ?e)(civilizacion secreta)(estado_animo triste)(positividad_acumulada ?pa))
 (nuevo_estado_animo (empleado ?emp)(estado_animo triste))
 (not(modificaciones_realizadas (empleado ?emp)))
 (oferta (empleado ?emp)(decision rechazada))
 ?posible-civilizacion<-(posible_civilizacion (empleado ?emp)(civilizacion ?c)(puntos_creencia_si ?si))
 ?civilizacion_asignada<-(civilizacion_asignada_calculos (empleado ?emp)(civilizacion ?civ))
 (test (eq ?emp ?e))
 (test (eq ?civ ?c))
 =>
 (modify ?posible-civilizacion (puntos_creencia_si (+ ?si 0.15)))
 (printout t "Se suma 0.15 a la creencia de que " ?e " tiene una civilizacion de clima " ?c "." crlf crlf)
 (modify-instance ?carta (positividad_acumulada (- ?pa 0.5)))
 (printout t "Se disminuye la positividad acumulada de " ?e " en 0.5 puntos al mantener su estado de animo triste despues de ser aceptada su oferta, con lo que tiene " (- ?pa 0.5) " puntos de positividad acumulada." crlf crlf)
 (assert(modificaciones_realizadas (empleado ?e)))
 (printout t crlf)
)

;Regla para modificar la creencia de que un jugador no activo SI tiene una civilizacion de clima X y la positividad acumulada de dicho jugador en base a su 
;nuevo estado de animo (caso 8).
;En este caso la oferta del jugador no activo se ha rechazado y su estado de animo se ha mantenido, siendo este feliz. 
(defrule modificar_creencia_civilizacion_y_positividad_acumulada_8
 (declare (salience 3))
 (decision_tomada)
 ?carta<-(object (is-a EMPLEADO) (nombre ?e)(civilizacion secreta)(estado_animo feliz)(positividad_acumulada ?pa))
 (nuevo_estado_animo (empleado ?emp)(estado_animo feliz))
 (not(modificaciones_realizadas (empleado ?emp)))
 (oferta (empleado ?emp)(decision rechazada))
 ?posible-civilizacion<-(posible_civilizacion (empleado ?emp)(civilizacion ?c)(puntos_creencia_si ?si))
 ?civilizacion_asignada<-(civilizacion_asignada_calculos (empleado ?emp)(civilizacion ?civ))
 (test (eq ?emp ?e))
 (test (eq ?civ ?c))
 =>
 (modify ?posible-civilizacion (puntos_creencia_si (- ?si 0.25)))
 (printout t "Se resta 0.25 a la creencia de que " ?e " tiene una civilizacion de clima " ?c "." crlf crlf)
 (modify-instance ?carta (positividad_acumulada (+ ?pa 0.5)))
 (printout t "Se aumenta la positividad acumulada de " ?e " en 0.5 puntos al mantener su estado de animo feliz despues de ser rechazada su oferta, con lo que tiene " (+ ?pa 0.5) " puntos de positividad acumulada." crlf crlf)
 (assert(modificaciones_realizadas (empleado ?e)))
 (printout t crlf)
)

;Regla que cierra el fichero donde se han guardado los printout y da por finalizado el turno.
(defrule regla_final
 (not(fin_del_turno))
 ?nuevo1<-(nuevo_estado_animo (empleado ?e1))
 ?nuevo2<-(nuevo_estado_animo (empleado ?e2))
 (test (neq ?e1 ?e2))
 =>
 (assert(fin_del_turno))
 (dribble-off)
)
