IMPLEMENTACIÓN DE UN SISTEMA DE PROCESADO DE DATOS ANALÓGICOS EN TIEMPO REAL
-

El objetivo del proyecto es crear un sistema que filtre digitalmente una señal, de forma que se eliminen ruidos.

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

- Divisor de frecuencia (divisor_reloj)

  Realiza la función de reducir la frecuencia de 50 MHz del reloj interno de la placa DE0 a 10 MHz.

  Es necesario reducir la frecuencia de trabajo a una donde DAC pueda trabajar.

- Lector del ADC (spi_adc)

  La función del bloque es comunicarse con el convertidor analógico-digital.

  El ADC convierte el valor de entrada a digital cuando recibe un flanco de bajada en la patilla CS, lo envia en serie por Dout empezando por 0 y luego 10 bits de datos.

  El bloque indica cuando hacer una nueva conversión (al acabar de recibir una conversión) y pone en paralelo el dato recibido para ser procesado.

  Contiene un reloj interno de 1 MHz, creado como modelo IP core (Intellectual Property core). Esta frecuencia es la frecuencia a la que trabajará el ADC.

- Filtro digital (filtro_media_movil)

  
