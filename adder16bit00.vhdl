library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;
use packageadder16bit00.all;

entity adder16bit00 is
	port(
		Ai: in std_logic_vector(15 downto 0);
		Bi: in std_logic_vector(7 downto 0);
		SL: in std_logic;
		sel: in std_logic_vector(1 downto 0);
		So: out std_logic_vector(15 downto 0);
		LED: out std_logic);
end adder16bit00;

architecture adder16bit0 of adder16bit00 is
signal Sbi: std_logic_vector (15 downto 0);
signal SB, SC, SA: std_logic_vector(15 downto 0);
signal Sx: std_logic;
begin
	with sel select
		Sbi <= "00000000"&Bi when "00",
			   "01000000"&Bi when "01",
			   "11111111"&Bi when "11",
			   "00000000"&Bi when others;
--Sbi <= "01000000"&Bi;

--XORs
	A00: xor00 port map(Ax => SL,
						 Bx => SBi(0),
						 Yx => Sb(0)
						);
	
	A01: xor00 port map(Ax => SL,
						 Bx => SBi(1),
						 Yx => Sb(1)
						 );
						 
	A02: xor00 port map(Ax => SL,
						 Bx => SBi(2),
						 Yx => Sb(2)
						 );
	
	A03: xor00 port map(Ax => SL,
						 Bx => SBi(3),
						 Yx => Sb(3)
						 );
						 
	A04: xor00 port map(Ax => SL,
						 Bx => SBi(4),
						 Yx => Sb(4)
						 );
						 
	A05: xor00 port map(Ax => SL,
						 Bx => SBi(5),
						 Yx => Sb(5)
						 );	
						 
	A06: xor00 port map(Ax => SL,
						 Bx => SBi(6),
						 Yx => Sb(6)
						 );

	A07: xor00 port map(Ax => SL,
						 Bx => SBi(7),
						 Yx => Sb(7)
						 );
						 
	A08: xor00 port map(Ax => SL,
						 Bx => SBi(8),
						 Yx => Sb(8)
						 );
						 
	A09: xor00 port map(Ax => SL,
						 Bx => SBi(9),
						 Yx => Sb(9)
						 );
						 
	A10: xor00 port map(Ax => SL,
						 Bx => SBi(10),
						 Yx => Sb(10)
						 );
						 
	A11: xor00 port map(Ax => SL,
						 Bx => SBi(11),
						 Yx => Sb(11)
						 );
						 
	A12: xor00 port map(Ax => SL,
						 Bx => SBi(12),
						 Yx => Sb(12)
						 );
						 
	A13: xor00 port map(Ax => SL,
						 Bx => SBi(13),
						 Yx => Sb(13)
						 );
						 
	A14: xor00 port map(Ax => SL,
						 Bx => SBi(14),
						 Yx => Sb(14)
						 );
						 
	A15: xor00 port map(Ax => SL,
						 Bx => SBi(15),
						 Yx => Sb(15)
						 );
						 
--FAs
	A16: fa00 port map(C00 => SL,
						A00 => Ai(0),
						B00 => SB(0),
						C01 => SC(0),
						S00 => SA(0)
						);
	
	A17: fa00 port map(C00 => SC(0),
						A00 => Ai(1),
						B00 => SB(1),
						C01 => SC(1),
						S00 => SA(1)
						);
	
	A18: fa00 port map(C00 => SC(1),
						A00 => Ai(2),
						B00 => SB(2),
						C01 => SC(2),
						S00 => SA(2)
						);
	
	A19: fa00 port map(C00 => SC(2),
						A00 => Ai(3),
						B00 => SB(3),
						C01 => SC(3),
						S00 => SA(3)
						);
						
	A20: fa00 port map(C00 => SC(3),
						A00 => Ai(4),
						B00 => SB(4),
						C01 => SC(4),
						S00 => SA(4)
						);

	A21: fa00 port map(C00 => SC(4),
						A00 => Ai(5),
						B00 => SB(5),
						C01 => SC(5),
						S00 => SA(5)
						);

	A22: fa00 port map(C00 => SC(5),
						A00 => Ai(6),
						B00 => SB(6),
						C01 => SC(6),
						S00 => SA(6)
						);
						
	A23: fa00 port map(C00 => SC(6),
						A00 => Ai(7),
						B00 => SB(7),
						C01 => SC(7),
						S00 => SA(7)
						);
						
	A24: fa00 port map(C00 => SC(7),
						A00 => Ai(8),
						B00 => SB(8),
						C01 => SC(8),
						S00 => SA(8)
						);

	A25: fa00 port map(C00 => SC(8),
						A00 => Ai(9),
						B00 => SB(9),
						C01 => SC(9),
						S00 => SA(9)
						);
						
	A26: fa00 port map(C00 => SC(9),
						A00 => Ai(10),
						B00 => SB(10),
						C01 => SC(10),
						S00 => SA(10)
						);
						
	A27: fa00 port map(C00 => SC(10),
						A00 => Ai(11),
						B00 => SB(11),
						C01 => SC(11),
						S00 => SA(11)
						);
						
	A28: fa00 port map(C00 => SC(11),
						A00 => Ai(12),
						B00 => SB(12),
						C01 => SC(12),
						S00 => SA(12)
						);
						
	A29: fa00 port map(C00 => SC(12),
						A00 => Ai(13),
						B00 => SB(13),
						C01 => SC(13),
						S00 => SA(13)
						);
						
	A30: fa00 port map(C00 => SC(13),
						A00 => Ai(14),
						B00 => SB(14),
						C01 => SC(14),
						S00 => SA(14)
						);
						
	A31: fa00 port map(C00 => SC(14),
						A00 => Ai(15),
						B00 => SB(15),
						C01 => SC(15),
						S00 => SA(15)
						);
						
--ANDs	
	A32: and00 port map(Aa => Sx,
						 Ba => SA(0),
						 Ya => So(0)
						 );
	
	A33: and00 port map(Aa => Sx,
						 Ba => SA(1),
						 Ya => So(1)
						 );
	
	A34: and00 port map(Aa => Sx,
						 Ba => SA(2),
						 Ya => So(2)
						 );
	
	A35: and00 port map(Aa => Sx,
						 Ba => SA(3),
						 Ya => So(3)
						 );
						 
	A36: and00 port map(Aa => Sx,
						 Ba => SA(4),
						 Ya => So(4)
						 );

	A37: and00 port map(Aa => Sx,
						 Ba => SA(5),
						 Ya => So(5)
						 );
						 
	A38: and00 port map(Aa => Sx,
						 Ba => SA(6),
						 Ya => So(6)
						 );
						 
	A39: and00 port map(Aa => Sx,
						 Ba => SA(7),
						 Ya => So(7)
						 );
						 
	A40: and00 port map(Aa => Sx,
						 Ba => SA(8),
						 Ya => So(8)
						 );
						 
	A41: and00 port map(Aa => Sx,
						 Ba => SA(9),
						 Ya => So(9)
						 );
						 
	A42: and00 port map(Aa => Sx,
						 Ba => SA(10),
						 Ya => So(10)
						 );
						 
	A43: and00 port map(Aa => Sx,
						 Ba => SA(11),
						 Ya => So(11)
						 );
						 
	A44: and00 port map(Aa => Sx,
						 Ba => SA(12),
						 Ya => So(12)
						 );
						 
	A45: and00 port map(Aa => Sx,
						 Ba => SA(13),
						 Ya => So(13)
						 );
						 
	A46: and00 port map(Aa => Sx,
						 Ba => SA(14),
						 Ya => So(14)
						 );
						 
	A47: and00 port map(Aa => Sx,
						 Ba => SA(15),
						 Ya => So(15)
						 );
--LED
	A48: xnor00 port map(Axn => SC(14),
						  Bxn => SC(15),
						  Yxn => Sx
						  );
	
	A49: xor00 port map(Ax => SC(14),
						 Bx => SC(15),
						 Yx => LED
						  );   
	
end adder16bit0; 