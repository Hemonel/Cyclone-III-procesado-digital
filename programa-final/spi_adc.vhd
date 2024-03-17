--Laboratorio de Sistemas Digitales Progamables
--MÃ³dulo de control del circuito ADC MCP3001
--conectado a la placa DE0
--ConexiÃ³n de las seÃ±ales de entrada:
--   clk: se conecta al reloj de 50 MHz de la placa
--   reset: se conecta al interruptor SW0
--   sc: Start ConversiÃ³n, se conecta al pulsador BUTTON2
--   din: Se conecta al terminal 6 del ADC
--ConexiÃ³n de las seÃ±ales de salida:
--   sck: es el reloj SPI de 1 MHz
--   cs: es la seÃ±al SPI de selecciÃ³n del perifÃ©rico
--   dout: es la palabra de datos
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY spi_adc IS
GENERIC(n: INTEGER:=10);  --nÃºmero de bits del dato
PORT
  ( clk, reset, sc, sdi: IN STD_LOGIC;
    sck,cs: out STD_LOGIC;
    dout: out STD_LOGIC_VECTOR(n-1 downto 0) );
END;

ARCHITECTURE comportamiento OF spi_adc IS

SIGNAL ck,sc_prev: STD_LOGIC;

COMPONENT clkout port
	( areset	: IN STD_LOGIC:= '0';
		inclk0: IN STD_LOGIC:= '0';
		c0		: OUT STD_LOGIC );
END COMPONENT;

BEGIN

clkadc: clkout PORT MAP(areset=>reset, inclk0=>clk, c0=>ck);

sck <= ck;

datoin: PROCESS(reset,ck)
  VARIABLE scint: std_logic;
  VARIABLE dato: std_logic_vector(9 downto 0);
  VARIABLE indice : integer range 0 to 11;
  VARIABLE altaimp : integer range 0 to 15;

BEGIN							-- incializaciÃ³n asÃ­ncrona
  IF reset='1' THEN
	  dout <= (OTHERS => '0');
	  scint:='0';
	  indice:=0;
	  altaimp:=0;				-- contador de los dos ciclos inciales
	  sc_prev <= '1';
  ELSE 							-- activo a flanco positivo
	  IF (ck'EVENT and ck='1') THEN
	    	IF (sc='0' and scint='0') THEN
		  	   sc_prev<= '0';
			   scint:='0';
			   altaimp:=altaimp+1;
			   IF (sdi= '0' and altaimp>=4 and indice=0) THEN	-- ciclos iniciales
				   indice:=1;
			 	   sc_prev<= '0';												-- habilitaciÃ³n
				   dato:= (OTHERS => '0');
			   ELSIF (indice>=1 and indice <11) THEN	-- estados de transmision de dato 
				   dato(10-indice):= sdi;					-- y deshabilitaciÃ³n
				   IF (indice <10) THEN		-- transmision de dato					
					   sc_prev<= '0';
				   ELSE dout <= dato;		-- deshabilitaciÃ³n
					   scint:='1';
					   sc_prev<= '1';
				   END IF;
				   indice:=indice+1;
			   ELSE NULL;
		      END IF;
	      ELSIF sc='1' THEN --requiere flanco positivo en habilitaciÃ³n externa 
	        scint:='0';     --para nueva transmisiÃ³n
		     indice:=0;
		     altaimp:=0;
	      ELSE NULL;
	      END IF;
	  ELSE NULL; -- clk
	  END IF;
  END IF;
dout<= dato;

END PROCESS;

habil: PROCESS(reset, ck)
BEGIN
	IF (ck'EVENT AND ck='0') THEN
	  cs <= sc_prev;
	  ELSE NULL;
	END IF;
END PROCESS;
END ARCHITECTURE;
				
