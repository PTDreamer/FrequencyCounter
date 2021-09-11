library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity top is
 Port ( refclk : in STD_LOGIC; --

 miso : out STD_LOGIC; -- SPI shift out of hold reg
 mosi : in STD_LOGIC; -- SPI shift-in of configword
 sck : in STD_LOGIC; -- SPI shift clock
 ss : in STD_LOGIC; -- 0 resets, 1 to captures
 icp1 : out STD_LOGIC; -- capture strobe to ref ctr/status
 icp0 : out STD_LOGIC; -- capture strobe to ref ctr/status
 int1 : out STD_LOGIC; -- signal ctr elongation
 modeshift : in STD_LOGIC; -- 1 to load config word
 led2 : out STD_LOGIC; -- not related to T/F
 led : out STD_LOGIC; -- not related to T/F

 rampstopN : out STD_LOGIC; -- interpolator outputs
 rampstartP: out STD_LOGIC;

 sigclk : in STD_LOGIC; -- input to signal counter, connected
 sigout : out STD_LOGIC; -- to this pin, the input mux output
 sigin1 : in STD_LOGIC; -- input 1
 sigin2 : in STD_LOGIC); -- input 2
end top;
architecture Behavioral of top is
 signal mux: STD_LOGIC_VECTOR(3 downto 0);
 signal eventcounter,eventhold: STD_LOGIC_VECTOR(15 downto 0);
 shared variable max_count : natural := 48000000;
 signal readindex:STD_LOGIC_VECTOR(3 downto 0);
 signal syn1siggate,siggate:STD_LOGIC;
 signal syn1cpugate,cpugate:STD_LOGIC;
begin
 --mux: input source 1, 2, REF, or off
 --ONLY TWO LOWER mux bits ARE HANDLED HERE
 --mux(3) e o mux b no documento
 --mux(3)=0 => 2 Flip Flop-synchronizer mode
 --mux(3)=1 => 1 Flip Flop-synchronizer mode
 --mux(2) e o mux e no documento
 --mux(2)=0 2 clock
 --mux(2)=1 1 clock
 
 multiplexer: process(sigin1, sigin2, mux)
 begin
 if mux(1 downto 0)="00" then
 sigout<=sigin1;
 max_count := 100000000;
 elsif mux(1 downto 0)="01" then
 sigout<=sigin2;
 max_count := 24000000;
 elsif mux(1 downto 0)="10" then
 max_count := 48000000;
 sigout<=refclk;
 else
 sigout<='0';
 max_count := 12000000;
 end if;
 end process;
 
 ledblink: process(refclk)
 variable count : natural;
 begin
 if RISING_EDGE(refclk) then
	if count < max_count/2 then
		count := count + 1;
      led <= '1';
   elsif count < max_count then
      led <= '0';
      count := count + 1;
   else
		led <= '1';
      count := 0;
   end if;
end if;
end process;
 
 --ct: count edge number on source
 signalcounter: process(sigclk)
 begin
 if RISING_EDGE(sigclk) then
 eventcounter <= eventcounter +1;
 --eventcounter <= x"0001";
 if siggate='1' then
 eventhold<=eventcounter;
 end if;
 end if;
 end process;
 --mux for serial readout of source edge hold register to cpu
 readselect: process(readindex)
 begin
 case readindex is
 when "0000" => miso <= eventhold(0);
 when "0001" => miso <= eventhold(1);
 when "0010" => miso <= eventhold(2);
 when "0011" => miso <= eventhold(3);
 when "0100" => miso <= eventhold(4);
 when "0101" => miso <= eventhold(5);
 when "0110" => miso <= eventhold(6);
 when "0111" => miso <= eventhold(7);
 when "1000" => miso <= eventhold(8);
 when "1001" => miso <= eventhold(9);
 when "1010" => miso <= eventhold(10);
 when "1011" => miso <= eventhold(11);
 when "1100" => miso <= eventhold(12);
 when "1101" => miso <= eventhold(13);
 when "1110" => miso <= eventhold(14);
 when "1111" => miso <= eventhold(15);
 when others => miso <='0';
 end case;
 end process;
 --SPI interface towards the cpu, counter controlling the mux above,
 --and shift-in of the 4 bit configuration word controlling
 --the source multiplexer and the two muxes in the sync chain
 readclock: process(sck,readindex)
 begin
 if RISING_EDGE(sck) then
 readindex <= readindex + 1;
 --if modeshift='1' then
 --mux <= mux(2 downto 0) & mosi;
 --end if;
 end if;
 if FALLING_EDGE(sck) then
 --readindex <= readindex + 1;
 if modeshift='1' then
 mux <= mux(2 downto 0) & mosi;
 end if;
 end if;
 if ss='0' then --async clear on 0
 readindex<="1111";
 end if;
 end process;
 gatesig: process(sigclk, ss)
 begin
 if RISING_EDGE(sigclk) then
 syn1siggate <= not ss; -- ss 0 is prepare,1 is do-capture
 siggate <= syn1siggate; -- 2 Flip Flop-synchronizer mode
 --gate is signal-synchronous, goes low now, locking the counter.
 if mux(3)='1' then
 siggate <= not ss; -- 1 Flip Flop-synchronizer mode
 end if;
 end if;
 --async reset: gate ON when ss goes low.
 if ss='0' then
 syn1siggate <= '1';
 siggate <= '1';
 end if;
 end process;
 gatecpu: process(refclk)
 begin
 if RISING_EDGE(refclk) then
 syn1cpugate <= siggate;
 cpugate <= syn1cpugate; --cpugate - siggate = 1..2 clock
 if mux(2)='1' then
 cpugate <= siggate; --0..1 clock (for interpolator calibration)
 end if;
 end if;
 --no async when ss is 0, no need, after 2 clk it has propagated.
 end process;
 rampstartP <= not siggate; --interpolator outputs
 rampstopN <= cpugate;
 icp1 <= cpugate; --capture indicator
 icp0 <= siggate; --capture indicator
 int1 <= eventcounter(15); --signal ctr elongation.
 led2 <= not ss; --show capture status on LED
end Behavioral;