IMPLEMENTACIÓN DE UN SISTEMA DE PROCESADO DE DATOS ANALÓGICOS EN TIEMPO REAL
-

El objetivo del proyecto es crear un sistema que filtre digitalmente una señal, de forma que se eliminen ruidos.

El proyecto se creó en fases (están todas las fases en la carpeta apartados) para la asignatura de Laboratorio de sistemas dixitais programables del 4º curso del Grado en Ingeniería en Electrónica Industrial y Automática.

Componentes
-

- Placa DE0 (contiene la FPGA EP3C16F484 de la familia Cyclone III de Altera)
- Convertidor ADC MCP3001
- Convertidor DAC MCP4911
- Programa Quartus II

Descripción
-

1º EL ADC recibe la señal, la digitaliza y la transmite a la FPGA.

2º La FPGA procesa la señal de forma que realiza un filtro promediado de 32 etapas, de esta forma que la señal de salida está suavizada. 
La FPGA envia el valor digital de la señal de salida al DAC.

3º El DAC procesa los datos digitales y crea la señal analogica de salida.

Bloques de la FPGA
-

La FPGA para cumplir lo necesario presenta una arquitectura en 4 bloques.

![RTL view](https://github.com/Hemonel/Cyclone-III-procesado-digital/assets/153218898/4b59436e-0b77-49e9-bd1c-11663b244737)


- Divisor de frecuencia (divisor_reloj)

  Realiza la función de reducir la frecuencia de 50 MHz del reloj interno de la placa DE0 a 10 MHz.

  Es necesario reducir la frecuencia de trabajo a una donde DAC pueda trabajar.

- Lector del ADC (spi_adc)

  La función del bloque es comunicarse con el convertidor analógico-digital.

  El ADC convierte el valor de entrada a digital cuando recibe un flanco de bajada en la patilla CS, lo envia en serie por Dout empezando por 0 y luego 10 bits de datos.

  El bloque indica cuando hacer una nueva conversión (al acabar de recibir un dato) y pone en paralelo el dato recibido para ser procesado.

  Contiene un reloj interno de 1 MHz, creado como modelo IP core (Intellectual Property core). Esta frecuencia es la frecuencia a la que trabajará el ADC.

- Filtro digital (filtro_media_movil)

  El bloque almacena los últimos 32 valores generados por spi_adc, calcula el valor medio de los datos y lo envía al bloque spi_dac para ser convertido en señal analogica.

  El almacenamiento funciona de forma análoga a una memoria con desplazamiento:
  cuando ocurre un flanco de subida del reloj cada dirección de la memoria se le carga el dato de la dirreción anterior y en la dirección 0 se carga el dato nuevo.

- Control y escritura del DAC (spi_dac)

  Su función es recibir el dato a convertir en analógico, pasar ese dato de paralelo a serie y comunicarse con el DAC.
  
  Para realizar todo esto el bloque está compuesto de varios bloques que se describen a continuación:
    - Divisor de frecuencia (divisor_reloj)
 
      Analogo al divisor de frecuencia general, su función es reducir la frecuencia del reloj a 10 MHz.

      Como el proyecto se realizó por partes este reloj quedó heredado, si se quisiese optimizar el sistema se podría eliminar realizando que la señal de reloj venga del divisor de frecuencia general.

    - Sincronizador e iniciador (impulso_ini)
 
      Su función es recibir la señal de inicio de conversión y sincronizarla.

      Funciona como maquina de estados, en estado 0 espera la que señal de entrada esté a 1; en estado 1 pone la salida a 1 y va automaticamente a estado 2,
      y en estado 2 espera a que la entrada vuelva a 0 para volver a estado 0. De esta manera la señal de iniciar conversión solo dura 1 ciclo de reloj.

      Este bloque sufre de lo mismo que el anterior, al provenir de un proyeto anterior (donde la señal de inicio era un pulsador),
      cumple una función innecesaria ya que la señal de inicio ya es sincrona (es la propia señal de reloj).

    - Resgistro de desplazamiento (reg_des)
 
      Su función es convertir el dato que sale del filtro digital y transmitirlo en serie.

      El funcionamiento es que carga el dato de entrada en la memoria, le añade la combinación de inicio de conversión 0111
      (0 -> nueva conversión, 1 -> entrada del ADC con alta impedancia, 1 -> tensión de salida sin multiplicar por 2 y 1 -> salida activada)
      y cada ciclo de reloj transmite el bit de mayor peso y desplaza el valor en memoria un bit.

    - Contador (contador)
 
      Cuenta el número de ciclos de reloj durante la fase de transferencia. Como tiene que contar 16 ciclos es de 4 bits. Además, genera la señal de fin de contaje.

    - Controlador del ADC (uc_spi_out)
 
      El nucleo de spi_dac, funciona como una máquina de estados:
       - Estado 0: aguarda a la señal de inicio de conversión (salida del sincronizador). Mantiene la salida CS a 1 (el DAC no lee la señal de entrada).
       - Estado 1: transmite el primer dato del registro de desplazamiento (entrada SDI) y pasa a estado 2.
       - Estado 2: aguarda a que el contador indique que ya se transmitio todo el dato. Activa la lectura del DAC; activa el contador y el registro de desplazamiento,
         y continua transmitiendo el dato usando como sincronismo la señal de reloj (se trasmite el reloj a la estrada SCK).

Datos extra
-

Se adjuntan manuales de la Placa DE0, de la familia de FPGAs Cyclone III, del convertidor ADC MCP3001 y del convertidor DAC MCP4911 en la carpeta manuales.

El proyecto se realizó en varias fases, se adjuntan pdfs con la descrición de los objetivos y los programas de cada parte en la carpeta apartados.

Anexo: Ampliación
-

Se realizó un proyecto extra que suponía una modificación del sistema actual donde en vez de tener un filtro de promediado se realizaba un desfase y suma de la señal 
para emular el funcionamiento del procesado de la señal sensor de fibra óptica (FOS), donde este transmite los datos como modulación de fase y el objetivo es transformar esa señal en modulación de amplitud.

![diagrama ampliacion](https://github.com/Hemonel/Cyclone-III-procesado-digital/assets/153218898/48a9c167-447a-4d97-b6dc-a7f0e2a5268f)


Para ello se cambió el bloque de filtro de promediado por:

- Retardador (mem_fifo)

  El bloque emula lo que haría el sensor FOS al retrasar la señal de entrada una cantidad de ciclos de reloj (en el código está puesto 25).

  El sistema funciona mediante una memoria de desplazamiento.

- Sumador (sumador)

  Suma el valor actual de la señal con el valor de señal retardada, de esta forma cuanto mayor sea el desfase menor será la señal de salida ya que se sumarán destructivamente.

- Valor medio (rectificador)

  Este bloque cálcula el valor medio de la señal de resultante de la suma, de esta forma no hace falta convertir a analógico la señal, ya que su valor medio indicará cual es el desfase ocurrido.

  Este bloque almacena los últimos 125 datos calculados, los cuales no son directamente los que salen del sumador, sino que si son mayores a la mitad del valor máximo los guarda como el dato - mitad del máximo y si son menores los guarda como valor máximo - (dato + mitad del valor máximo). De esta forma la señal almacenada esta rectificada.

  ![rectificación](https://github.com/Hemonel/Cyclone-III-procesado-digital/assets/153218898/1be5646e-eabb-4d73-afb1-51f3acb6200d)
