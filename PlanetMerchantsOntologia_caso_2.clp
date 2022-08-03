;;Autor: Eduardo Ureña Toledano - 100329937

;Plantilla de clase con los atributos que tiene un empleado(jugador) y sus posibles valores.
(defclass EMPLEADO (is-a INITIAL-OBJECT)
 (slot nombre (type STRING))
 (slot civilizacion (type SYMBOL)(allowed-symbols secreta frio templado caliente))
 (slot estado_animo (type SYMBOL)(allowed-symbols triste neutral feliz))
 (slot positividad_acumulada (type FLOAT)(default 0.0))
 (slot num_planetas_habitables_ofertados (type INTEGER)(default 0))
 (slot num_planetas_recursos_ofertados (type INTEGER)(default 0))
 (slot puntuacion_acumulada (type INTEGER)(default 0))
 (slot puntuacion_cartas_ofertadas (type INTEGER)(default 0))
)

;Plantilla de clase con los atributos que tiene que tener una carta de planeta y sus posibles valores.
(defclass PLANETA (is-a INITIAL-OBJECT)
 (slot nombre (type STRING))
 (slot ofertante (type STRING)(default ""))
 (slot poseedor (type STRING)(default ""))
 (slot clima (type SYMBOL)(allowed-values frio templado caliente artificial recursos))
 (slot calidad (type SYMBOL)(allowed-values pobre suficiente buena muy_buena excelente))
 (slot puntuacion_frio (type INTEGER))
 (slot puntuacion_templado (type INTEGER))
 (slot puntuacion_caliente (type INTEGER))
 (slot puntuacion_sumada (type SYMBOL)(allowed-values no una_vez dos_veces)(default no))
 (slot aporta_beneficio_adicional (type SYMBOL)(allowed-values no si)(default no))
)

;Plantilla de clase con los valores de atributo que tiene que tener una carta de planeta frio de calidad suficiente.
(defclass PLANETA_FRIO_SUFICIENTE (is-a PLANETA)
 (slot clima (source composite)(default frio))
 (slot calidad (source composite)(default suficiente))
 (slot puntuacion_frio (source composite)(default 6))
 (slot puntuacion_templado (source composite)(default 3))
 (slot puntuacion_caliente (source composite)(default -3))
)

;Plantilla de clase con los valores de atributo que tiene que tener una carta de planeta frio de calidad buena.
(defclass PLANETA_FRIO_BUENA (is-a PLANETA)
 (slot clima (source composite)(default frio))
 (slot calidad (source composite)(default buena))
 (slot puntuacion_frio (source composite)(default 7))
 (slot puntuacion_templado (source composite)(default 4))
 (slot puntuacion_caliente (source composite)(default -2))
)

;Plantilla de clase con los valores de atributo que tiene que tener una carta de planeta frio de calidad excelente.
(defclass PLANETA_FRIO_EXCELENTE (is-a PLANETA)
 (slot clima (source composite)(default frio))
 (slot calidad (source composite)(default excelente))
 (slot puntuacion_frio (source composite)(default 8))
 (slot puntuacion_templado (source composite)(default 5))
 (slot puntuacion_caliente (source composite)(default -1))
)

;Plantilla de clase con los valores de atributo que tiene que tener una carta de planeta templado de calidad suficiente.
(defclass PLANETA_TEMPLADO_SUFICIENTE (is-a PLANETA)
 (slot clima (source composite)(default templado))
 (slot calidad (source composite)(default suficiente))
 (slot puntuacion_frio (source composite)(default 4))
 (slot puntuacion_templado (source composite)(default 5))
 (slot puntuacion_caliente (source composite)(default 4))
)

;Plantilla de clase con los valores de atributo que tiene que tener una carta de planeta templado de calidad buena.
(defclass PLANETA_TEMPLADO_BUENA (is-a PLANETA)
 (slot clima (source composite)(default templado))
 (slot calidad (source composite)(default buena))
 (slot puntuacion_frio (source composite)(default 5))
 (slot puntuacion_templado (source composite)(default 6))
 (slot puntuacion_caliente (source composite)(default 5))
)

;Plantilla de clase con los valores de atributo que tiene que tener una carta de planeta templado de calidad excelente.
(defclass PLANETA_TEMPLADO_EXCELENTE (is-a PLANETA)
 (slot clima (source composite)(default templado))
 (slot calidad (source composite)(default excelente))
 (slot puntuacion_frio (source composite)(default 6))
 (slot puntuacion_templado (source composite)(default 7))
 (slot puntuacion_caliente (source composite)(default 6))
)

;Plantilla de clase con los valores de atributo que tiene que tener una carta de planeta caliente de calidad suficiente.
(defclass PLANETA_CALIENTE_SUFICIENTE (is-a PLANETA)
 (slot clima (source composite)(default caliente))
 (slot calidad (source composite)(default suficiente))
 (slot puntuacion_frio (source composite)(default -3))
 (slot puntuacion_templado (source composite)(default 3))
 (slot puntuacion_caliente (source composite)(default 6))
)

;Plantilla de clase con los valores de atributo que tiene que tener una carta de planeta caliente de calidad buena.
(defclass PLANETA_CALIENTE_BUENA (is-a PLANETA)
 (slot clima (source composite)(default caliente))
 (slot calidad (source composite)(default buena))
 (slot puntuacion_frio (source composite)(default -2))
 (slot puntuacion_templado (source composite)(default 4))
 (slot puntuacion_caliente (source composite)(default 7))
)

;Plantilla de clase con los valores de atributo que tiene que tener una carta de planeta caliente de calidad excelente.
(defclass PLANETA_CALIENTE_EXCELENTE (is-a PLANETA)
 (slot clima (source composite)(default caliente))
 (slot calidad (source composite)(default excelente))
 (slot puntuacion_frio (source composite)(default -1))
 (slot puntuacion_templado (source composite)(default 5))
 (slot puntuacion_caliente (source composite)(default 8))
)

;Plantilla de clase con los valores de atributo que tiene que tener una carta de planeta artificial de calidad suficiente.
(defclass PLANETA_ARTIFICIAL_SUFICIENTE (is-a PLANETA)
 (slot clima (source composite)(default artificial))
 (slot calidad (source composite)(default suficiente))
 (slot puntuacion_frio (source composite)(default 2))
 (slot puntuacion_templado (source composite)(default 2))
 (slot puntuacion_caliente (source composite)(default 2))
)

;Plantilla de clase con los valores de atributo que tiene que tener una carta de planeta artificial de calidad buena.
(defclass PLANETA_ARTIFICIAL_BUENA (is-a PLANETA)
 (slot clima (source composite)(default artificial))
 (slot calidad (source composite)(default buena))
 (slot puntuacion_frio (source composite)(default 3))
 (slot puntuacion_templado (source composite)(default 3))
 (slot puntuacion_caliente (source composite)(default 3))
)

;Plantilla de clase con los valores de atributo que tiene que tener una carta de planeta artificial de calidad excelente.
(defclass PLANETA_ARTIFICIAL_EXCELENTE (is-a PLANETA)
 (slot clima (source composite)(default artificial))
 (slot calidad (source composite)(default excelente))
 (slot puntuacion_frio (source composite)(default 4))
 (slot puntuacion_templado (source composite)(default 4))
 (slot puntuacion_caliente (source composite)(default 4))
)

;Plantilla de clase con los valores de atributo que tiene que tener una carta de planeta de recursos de calidad pobre.
(defclass PLANETA_RECURSOS_POBRE (is-a PLANETA)
 (slot clima (source composite)(default recursos))
 (slot calidad (source composite)(default pobre))
 (slot puntuacion_frio (source composite)(default 6))
 (slot puntuacion_templado (source composite)(default 1))
 (slot puntuacion_caliente (source composite)(default 6))
)

;Plantilla de clase con los valores de atributo que tiene que tener una carta de planeta de recursos de calidad suficiente.
(defclass PLANETA_RECURSOS_SUFICIENTE (is-a PLANETA)
 (slot clima (source composite)(default recursos))
 (slot calidad (source composite)(default suficiente))
 (slot puntuacion_frio (source composite)(default 7))
 (slot puntuacion_templado (source composite)(default 4))
 (slot puntuacion_caliente (source composite)(default 7))
)

;Plantilla de clase con los valores de atributo que tiene que tener una carta de planeta de recursos de calidad buena.
(defclass PLANETA_RECURSOS_BUENA (is-a PLANETA)
 (slot clima (source composite)(default recursos))
 (slot calidad (source composite)(default buena))
 (slot puntuacion_frio (source composite)(default 8))
 (slot puntuacion_templado (source composite)(default 8))
 (slot puntuacion_caliente (source composite)(default 8))
)

;Plantilla de clase con los valores de atributo que tiene que tener una carta de planeta de recursos de calidad muy buena.
(defclass PLANETA_RECURSOS_MUY_BUENA (is-a PLANETA)
 (slot clima (source composite)(default recursos))
 (slot calidad (source composite)(default muy_buena))
 (slot puntuacion_frio (source composite)(default 9))
 (slot puntuacion_templado (source composite)(default 10))
 (slot puntuacion_caliente (source composite)(default 9))
)

;Plantilla de clase con los valores de atributo que tiene que tener una carta de planeta de recursos de calidad excelente.
(defclass PLANETA_RECURSOS_EXCELENTE (is-a PLANETA)
 (slot clima (source composite)(default recursos))
 (slot calidad (source composite)(default excelente))
 (slot puntuacion_frio (source composite)(default 10))
 (slot puntuacion_templado (source composite)(default 13))
 (slot puntuacion_caliente (source composite)(default 10))
)

;Plantilla para mostrar la utilidad obtenida por el jugador activo en cada posible intercambio.
(deftemplate puntos_utilidad_activo
 (slot empleado (type STRING))
 (slot utilidad (type FLOAT)(default 0.0))
)

;Plantilla para mostrar la maxima utilidad que se cree que puede tener cada jugador no activo si es elegido para el intercambio.
(deftemplate puntos_utilidad_no_activo
 (slot empleado (type STRING))
 (slot utilidad (type FLOAT)(default 0.0))
)

;Plantilla para mostrar beneficios adicionales por aceptar cartas de planetas con clima diferente al tuyo.
(deftemplate beneficio_adicional
 (slot empleado (type STRING))
 (slot beneficio (type FLOAT)(default 0.0))
)

;Plantilla para mostrar cuanto se cree y no se cree que un jugador puede tener una civilizacion y cuantos puntos de felicidad obtendría en caso de tenerla.
(deftemplate posible_civilizacion
 (slot empleado (type STRING))
 (slot civilizacion (type SYMBOL)(allowed-symbols frio templado caliente))
 (slot puntos_creencia_si(type FLOAT)(default 0.0))
 (slot puntos_creencia_no(type FLOAT)(default 0.0))
 (slot puntos_felicidad (type FLOAT)(default 0.0))
)

;Plantilla para que los planetas ofrecidos por el jugador activo y los jugadores no activos no se comprueben mas de una vez para decidir las cantidades de 
;creencia sobre si los jugadores no activos pueden o no tener una civilizacion.
(deftemplate planeta_comprobado
 (slot planeta (type STRING))
 (slot empleado (type STRING))
)

;Plantilla para mostrar la civilizacion asignada a cada uno de los jugadores no activos para calcular su utilidad.
(deftemplate civilizacion_asignada_calculos
 (slot empleado (type STRING))
 (slot civilizacion (type SYMBOL)(allowed-symbols frio templado caliente))
)

;Plantilla para mostrar la civilizacion real que tiene un jugador no activo (los hechos creados a partir de esta plantilla solo puede verlos el jugador al que 
;hacen alusion).
(deftemplate civilizacion_real
 (slot empleado (type STRING))
 (slot civilizacion (type SYMBOL)(allowed-symbols frio templado caliente))
)

;Plantilla para mostrar las ofertas aceptadas y rechazadas.
(deftemplate oferta
 (slot empleado (type STRING))
 (slot decision (type SYMBOL)(allowed-symbols aceptada rechazada))
)

;Plantilla para mostrar el nuevo estado de animo que tiene un jugador no activo después de ver aceptada o rechazada su oferta.
(deftemplate nuevo_estado_animo
 (slot empleado (type STRING))
 (slot estado_animo (type SYMBOL)(allowed-symbols triste neutral feliz))
)

;Plantilla para mostrar si se ha modificado la creencia de que un jugador no activo SI tiene una civilizacion de clima X y la positividad acumulada de dicho 
;jugador en base a su nuevo estado de animo.
(deftemplate modificaciones_realizadas
 (slot empleado (type STRING))
)

;Instancias de empleado(jugador).
(definstances empleados_jugadores
(of EMPLEADO (nombre "Jugador1")(civilizacion frio)(puntuacion_acumulada 60))
(of EMPLEADO (nombre "Jugador2")(civilizacion secreta)(estado_animo neutral)(puntuacion_acumulada 20))
(of EMPLEADO (nombre "Jugador3")(civilizacion secreta)(estado_animo neutral)(puntuacion_acumulada 45))
)

;Instancias de cartas de planeta.
(definstances cartas_planeta
(of PLANETA_FRIO_SUFICIENTE (nombre PFS-1))
(of PLANETA_FRIO_SUFICIENTE (nombre PFS-2))
(of PLANETA_FRIO_SUFICIENTE (nombre PFS-3))
(of PLANETA_FRIO_SUFICIENTE (nombre PFS-4))
(of PLANETA_FRIO_SUFICIENTE (nombre PFS-5))
(of PLANETA_FRIO_SUFICIENTE (nombre PFS-6))
(of PLANETA_FRIO_SUFICIENTE (nombre PFS-7))
(of PLANETA_FRIO_SUFICIENTE (nombre PFS-8))
(of PLANETA_FRIO_BUENA (nombre PFB-1))
(of PLANETA_FRIO_BUENA (nombre PFB-2))
(of PLANETA_FRIO_BUENA (nombre PFB-3))
(of PLANETA_FRIO_BUENA (nombre PFB-4))
(of PLANETA_FRIO_BUENA (nombre PFB-5))
(of PLANETA_FRIO_BUENA (nombre PFB-6))
(of PLANETA_FRIO_BUENA (nombre PFB-7))
(of PLANETA_FRIO_BUENA (nombre PFB-8))
(of PLANETA_FRIO_EXCELENTE (nombre PFE-1)(ofertante "Jugador2"))
(of PLANETA_FRIO_EXCELENTE (nombre PFE-2)(ofertante "Jugador3"))
(of PLANETA_FRIO_EXCELENTE (nombre PFE-3))
(of PLANETA_FRIO_EXCELENTE (nombre PFE-4))
(of PLANETA_FRIO_EXCELENTE (nombre PFE-5))
(of PLANETA_FRIO_EXCELENTE (nombre PFE-6))
(of PLANETA_FRIO_EXCELENTE (nombre PFE-7))
(of PLANETA_FRIO_EXCELENTE (nombre PFE-8))
(of PLANETA_TEMPLADO_SUFICIENTE (nombre PTS-1))
(of PLANETA_TEMPLADO_SUFICIENTE (nombre PTS-2))
(of PLANETA_TEMPLADO_SUFICIENTE (nombre PTS-3))
(of PLANETA_TEMPLADO_SUFICIENTE (nombre PTS-4))
(of PLANETA_TEMPLADO_SUFICIENTE (nombre PTS-5))
(of PLANETA_TEMPLADO_SUFICIENTE (nombre PTS-6))
(of PLANETA_TEMPLADO_SUFICIENTE (nombre PTS-7))
(of PLANETA_TEMPLADO_SUFICIENTE (nombre PTS-8))
(of PLANETA_TEMPLADO_BUENA (nombre PTB-1))
(of PLANETA_TEMPLADO_BUENA (nombre PTB-2))
(of PLANETA_TEMPLADO_BUENA (nombre PTB-3))
(of PLANETA_TEMPLADO_BUENA (nombre PTB-4))
(of PLANETA_TEMPLADO_BUENA (nombre PTB-5))
(of PLANETA_TEMPLADO_BUENA (nombre PTB-6))
(of PLANETA_TEMPLADO_BUENA (nombre PTB-7))
(of PLANETA_TEMPLADO_BUENA (nombre PTB-8))
(of PLANETA_TEMPLADO_EXCELENTE (nombre PTE-1)(ofertante "Jugador1"))
(of PLANETA_TEMPLADO_EXCELENTE (nombre PTE-2))
(of PLANETA_TEMPLADO_EXCELENTE (nombre PTE-3))
(of PLANETA_TEMPLADO_EXCELENTE (nombre PTE-4))
(of PLANETA_TEMPLADO_EXCELENTE (nombre PTE-5))
(of PLANETA_TEMPLADO_EXCELENTE (nombre PTE-6))
(of PLANETA_TEMPLADO_EXCELENTE (nombre PTE-7))
(of PLANETA_TEMPLADO_EXCELENTE (nombre PTE-8))
(of PLANETA_CALIENTE_SUFICIENTE (nombre PCS-1))
(of PLANETA_CALIENTE_SUFICIENTE (nombre PCS-2))
(of PLANETA_CALIENTE_SUFICIENTE (nombre PCS-3))
(of PLANETA_CALIENTE_SUFICIENTE (nombre PCS-4))
(of PLANETA_CALIENTE_SUFICIENTE (nombre PCS-5))
(of PLANETA_CALIENTE_SUFICIENTE (nombre PCS-6))
(of PLANETA_CALIENTE_SUFICIENTE (nombre PCS-7))
(of PLANETA_CALIENTE_SUFICIENTE (nombre PCS-8))
(of PLANETA_CALIENTE_BUENA (nombre PCB-1))
(of PLANETA_CALIENTE_BUENA (nombre PCB-2))
(of PLANETA_CALIENTE_BUENA (nombre PCB-3))
(of PLANETA_CALIENTE_BUENA (nombre PCB-4))
(of PLANETA_CALIENTE_BUENA (nombre PCB-5))
(of PLANETA_CALIENTE_BUENA (nombre PCB-6))
(of PLANETA_CALIENTE_BUENA (nombre PCB-7))
(of PLANETA_CALIENTE_BUENA (nombre PCB-8))
(of PLANETA_CALIENTE_EXCELENTE (nombre PCE-1))
(of PLANETA_CALIENTE_EXCELENTE (nombre PCE-2))
(of PLANETA_CALIENTE_EXCELENTE (nombre PCE-3))
(of PLANETA_CALIENTE_EXCELENTE (nombre PCE-4))
(of PLANETA_CALIENTE_EXCELENTE (nombre PCE-5))
(of PLANETA_CALIENTE_EXCELENTE (nombre PCE-6))
(of PLANETA_CALIENTE_EXCELENTE (nombre PCE-7))
(of PLANETA_CALIENTE_EXCELENTE (nombre PCE-8))
(of PLANETA_ARTIFICIAL_SUFICIENTE (nombre PAS-1))
(of PLANETA_ARTIFICIAL_SUFICIENTE (nombre PAS-2))
(of PLANETA_ARTIFICIAL_SUFICIENTE (nombre PAS-3))
(of PLANETA_ARTIFICIAL_SUFICIENTE (nombre PAS-4))
(of PLANETA_ARTIFICIAL_BUENA (nombre PAB-1))
(of PLANETA_ARTIFICIAL_BUENA (nombre PAB-2)(ofertante "Jugador1"))
(of PLANETA_ARTIFICIAL_BUENA (nombre PAB-3))
(of PLANETA_ARTIFICIAL_BUENA (nombre PAB-4))
(of PLANETA_ARTIFICIAL_EXCELENTE (nombre PAE-1))
(of PLANETA_ARTIFICIAL_EXCELENTE (nombre PAE-2))
(of PLANETA_ARTIFICIAL_EXCELENTE (nombre PAE-3))
(of PLANETA_ARTIFICIAL_EXCELENTE (nombre PAE-4))
(of PLANETA_RECURSOS_POBRE (nombre PRP-1))
(of PLANETA_RECURSOS_POBRE (nombre PRP-2))
(of PLANETA_RECURSOS_POBRE (nombre PRP-3))
(of PLANETA_RECURSOS_POBRE (nombre PRP-4))
(of PLANETA_RECURSOS_POBRE (nombre PRP-5))
(of PLANETA_RECURSOS_POBRE (nombre PRP-6))
(of PLANETA_RECURSOS_POBRE (nombre PRP-7))
(of PLANETA_RECURSOS_POBRE (nombre PRP-8))
(of PLANETA_RECURSOS_SUFICIENTE (nombre PRS-1)(ofertante "Jugador3"))
(of PLANETA_RECURSOS_SUFICIENTE (nombre PRS-2)(ofertante "Jugador2"))
(of PLANETA_RECURSOS_SUFICIENTE (nombre PRS-3))
(of PLANETA_RECURSOS_SUFICIENTE (nombre PRS-4))
(of PLANETA_RECURSOS_SUFICIENTE (nombre PRS-5))
(of PLANETA_RECURSOS_SUFICIENTE (nombre PRS-6))
(of PLANETA_RECURSOS_SUFICIENTE (nombre PRS-7))
(of PLANETA_RECURSOS_SUFICIENTE (nombre PRS-8))
(of PLANETA_RECURSOS_BUENA (nombre PRB-1))
(of PLANETA_RECURSOS_BUENA (nombre PRB-2))
(of PLANETA_RECURSOS_BUENA (nombre PRB-3))
(of PLANETA_RECURSOS_BUENA (nombre PRB-4))
(of PLANETA_RECURSOS_BUENA (nombre PRB-5))
(of PLANETA_RECURSOS_BUENA (nombre PRB-6))
(of PLANETA_RECURSOS_BUENA (nombre PRB-7))
(of PLANETA_RECURSOS_BUENA (nombre PRB-8))
(of PLANETA_RECURSOS_MUY_BUENA (nombre PRM-1))
(of PLANETA_RECURSOS_MUY_BUENA (nombre PRM-2))
(of PLANETA_RECURSOS_MUY_BUENA (nombre PRM-3))
(of PLANETA_RECURSOS_MUY_BUENA (nombre PRM-4))
(of PLANETA_RECURSOS_MUY_BUENA (nombre PRM-5))
(of PLANETA_RECURSOS_MUY_BUENA (nombre PRM-6))
(of PLANETA_RECURSOS_MUY_BUENA (nombre PRM-7))
(of PLANETA_RECURSOS_MUY_BUENA (nombre PRM-8))
(of PLANETA_RECURSOS_EXCELENTE (nombre PRE-1))
(of PLANETA_RECURSOS_EXCELENTE (nombre PRE-2))
(of PLANETA_RECURSOS_EXCELENTE (nombre PRE-3))
(of PLANETA_RECURSOS_EXCELENTE (nombre PRE-4))
(of PLANETA_RECURSOS_EXCELENTE (nombre PRE-5))
(of PLANETA_RECURSOS_EXCELENTE (nombre PRE-6))
(of PLANETA_RECURSOS_EXCELENTE (nombre PRE-7))
(of PLANETA_RECURSOS_EXCELENTE (nombre PRE-8))
)

;Hechos
(deffacts hechos
(beneficio_adicional (empleado "Jugador2"))
(beneficio_adicional (empleado "Jugador3"))
(posible_civilizacion (empleado "Jugador2")(civilizacion frio))
(posible_civilizacion (empleado "Jugador2")(civilizacion templado))
(posible_civilizacion (empleado "Jugador2")(civilizacion caliente))
(posible_civilizacion (empleado "Jugador3")(civilizacion frio))
(posible_civilizacion (empleado "Jugador3")(civilizacion templado))
(posible_civilizacion (empleado "Jugador3")(civilizacion caliente))
(civilizacion_real (empleado "Jugador2")(civilizacion templado))
(civilizacion_real (empleado "Jugador3")(civilizacion caliente))
)