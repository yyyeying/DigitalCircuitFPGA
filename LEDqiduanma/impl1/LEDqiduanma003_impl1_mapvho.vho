
-- VHDL netlist produced by program ldbanno, Version Diamond (64-bit) 3.10.0.111.2

-- ldbanno -n VHDL -o LEDqiduanma003_impl1_mapvho.vho -w -neg -gui LEDqiduanma003_impl1_map.ncd 
-- Netlist created on Tue May 01 20:52:47 2018
-- Netlist written on Tue May 01 20:52:51 2018
-- Design is for device LCMXO2-4000HC
-- Design is for package CSBGA132
-- Design is for performance grade 4

-- entity lut4
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut4 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut4 : ENTITY IS TRUE;

  end lut4;

  architecture Structure of lut4 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"0E5F")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity lut40001
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40001 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40001 : ENTITY IS TRUE;

  end lut40001;

  architecture Structure of lut40001 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"0F39")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity SLICE_0
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_0 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_0";

      tipd_D1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_D0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_D1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_D0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
          A1: in Std_logic; D0: in Std_logic; C0: in Std_logic; 
          B0: in Std_logic; A0: in Std_logic; F0: out Std_logic; 
          F1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_0 : ENTITY IS TRUE;

  end SLICE_0;

  architecture Structure of SLICE_0 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal D1_ipd 	: std_logic := 'X';
    signal C1_ipd 	: std_logic := 'X';
    signal B1_ipd 	: std_logic := 'X';
    signal A1_ipd 	: std_logic := 'X';
    signal D0_ipd 	: std_logic := 'X';
    signal C0_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';

    component lut4
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40001
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    seg_data_1_c_2_bdd_4_lut: lut4
      port map (A=>A1_ipd, B=>B1_ipd, C=>C1_ipd, D=>D1_ipd, Z=>F1_out);
    mux_8_Mux_0_i15_4_lut: lut40001
      port map (A=>A0_ipd, B=>B0_ipd, C=>C0_ipd, D=>D0_ipd, Z=>F0_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(D1_ipd, D1, tipd_D1);
      VitalWireDelay(C1_ipd, C1, tipd_C1);
      VitalWireDelay(B1_ipd, B1, tipd_B1);
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(D0_ipd, D0, tipd_D0);
      VitalWireDelay(C0_ipd, C0, tipd_C0);
      VitalWireDelay(B0_ipd, B0, tipd_B0);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
    END BLOCK;

    VitalBehavior : PROCESS (D1_ipd, C1_ipd, B1_ipd, A1_ipd, D0_ipd, C0_ipd, 
      B0_ipd, A0_ipd, F0_out, F1_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    F0_zd 	:= F0_out;
    F1_zd 	:= F1_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => D0_ipd'last_event,
                           PathDelay => tpd_D0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => C0_ipd'last_event,
                           PathDelay => tpd_C0_F0,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_F0,
                           PathCondition => TRUE),
                     3 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => F1, OutSignalName => "F1", OutTemp => F1_zd,
      Paths      => (0 => (InputChangeTime => D1_ipd'last_event,
                           PathDelay => tpd_D1_F1,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => C1_ipd'last_event,
                           PathDelay => tpd_C1_F1,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => B1_ipd'last_event,
                           PathDelay => tpd_B1_F1,
                           PathCondition => TRUE),
                     3 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_F1,
                           PathCondition => TRUE)),
      GlitchData => F1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity lut40002
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40002 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40002 : ENTITY IS TRUE;

  end lut40002;

  architecture Structure of lut40002 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"154B")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity lut40003
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40003 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40003 : ENTITY IS TRUE;

  end lut40003;

  architecture Structure of lut40003 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"231F")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity SLICE_1
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_1 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_1";

      tipd_D1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_D0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_D1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_D0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
          A1: in Std_logic; D0: in Std_logic; C0: in Std_logic; 
          B0: in Std_logic; A0: in Std_logic; F0: out Std_logic; 
          F1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_1 : ENTITY IS TRUE;

  end SLICE_1;

  architecture Structure of SLICE_1 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal D1_ipd 	: std_logic := 'X';
    signal C1_ipd 	: std_logic := 'X';
    signal B1_ipd 	: std_logic := 'X';
    signal A1_ipd 	: std_logic := 'X';
    signal D0_ipd 	: std_logic := 'X';
    signal C0_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';

    component lut40002
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40003
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    seg_data_1_c_3_bdd_4_lut: lut40002
      port map (A=>A1_ipd, B=>B1_ipd, C=>C1_ipd, D=>D1_ipd, Z=>F1_out);
    seg_data_1_c_0_bdd_4_lut_234: lut40003
      port map (A=>A0_ipd, B=>B0_ipd, C=>C0_ipd, D=>D0_ipd, Z=>F0_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(D1_ipd, D1, tipd_D1);
      VitalWireDelay(C1_ipd, C1, tipd_C1);
      VitalWireDelay(B1_ipd, B1, tipd_B1);
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(D0_ipd, D0, tipd_D0);
      VitalWireDelay(C0_ipd, C0, tipd_C0);
      VitalWireDelay(B0_ipd, B0, tipd_B0);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
    END BLOCK;

    VitalBehavior : PROCESS (D1_ipd, C1_ipd, B1_ipd, A1_ipd, D0_ipd, C0_ipd, 
      B0_ipd, A0_ipd, F0_out, F1_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    F0_zd 	:= F0_out;
    F1_zd 	:= F1_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => D0_ipd'last_event,
                           PathDelay => tpd_D0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => C0_ipd'last_event,
                           PathDelay => tpd_C0_F0,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_F0,
                           PathCondition => TRUE),
                     3 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => F1, OutSignalName => "F1", OutTemp => F1_zd,
      Paths      => (0 => (InputChangeTime => D1_ipd'last_event,
                           PathDelay => tpd_D1_F1,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => C1_ipd'last_event,
                           PathDelay => tpd_C1_F1,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => B1_ipd'last_event,
                           PathDelay => tpd_B1_F1,
                           PathCondition => TRUE),
                     3 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_F1,
                           PathCondition => TRUE)),
      GlitchData => F1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity lut40004
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40004 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40004 : ENTITY IS TRUE;

  end lut40004;

  architecture Structure of lut40004 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"103D")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity SLICE_2
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_2 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_2";

      tipd_D1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_D0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_D1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_D0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
          A1: in Std_logic; D0: in Std_logic; C0: in Std_logic; 
          B0: in Std_logic; A0: in Std_logic; F0: out Std_logic; 
          F1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_2 : ENTITY IS TRUE;

  end SLICE_2;

  architecture Structure of SLICE_2 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal D1_ipd 	: std_logic := 'X';
    signal C1_ipd 	: std_logic := 'X';
    signal B1_ipd 	: std_logic := 'X';
    signal A1_ipd 	: std_logic := 'X';
    signal D0_ipd 	: std_logic := 'X';
    signal C0_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';

    component lut40002
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40004
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    seg_data_2_c_0_bdd_4_lut_233: lut40004
      port map (A=>A1_ipd, B=>B1_ipd, C=>C1_ipd, D=>D1_ipd, Z=>F1_out);
    seg_data_2_c_3_bdd_4_lut: lut40002
      port map (A=>A0_ipd, B=>B0_ipd, C=>C0_ipd, D=>D0_ipd, Z=>F0_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(D1_ipd, D1, tipd_D1);
      VitalWireDelay(C1_ipd, C1, tipd_C1);
      VitalWireDelay(B1_ipd, B1, tipd_B1);
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(D0_ipd, D0, tipd_D0);
      VitalWireDelay(C0_ipd, C0, tipd_C0);
      VitalWireDelay(B0_ipd, B0, tipd_B0);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
    END BLOCK;

    VitalBehavior : PROCESS (D1_ipd, C1_ipd, B1_ipd, A1_ipd, D0_ipd, C0_ipd, 
      B0_ipd, A0_ipd, F0_out, F1_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    F0_zd 	:= F0_out;
    F1_zd 	:= F1_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => D0_ipd'last_event,
                           PathDelay => tpd_D0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => C0_ipd'last_event,
                           PathDelay => tpd_C0_F0,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_F0,
                           PathCondition => TRUE),
                     3 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => F1, OutSignalName => "F1", OutTemp => F1_zd,
      Paths      => (0 => (InputChangeTime => D1_ipd'last_event,
                           PathDelay => tpd_D1_F1,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => C1_ipd'last_event,
                           PathDelay => tpd_C1_F1,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => B1_ipd'last_event,
                           PathDelay => tpd_B1_F1,
                           PathCondition => TRUE),
                     3 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_F1,
                           PathCondition => TRUE)),
      GlitchData => F1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity lut40005
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40005 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40005 : ENTITY IS TRUE;

  end lut40005;

  architecture Structure of lut40005 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"1366")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity SLICE_3
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_3 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_3";

      tipd_D1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_D0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_D1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_D0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
          A1: in Std_logic; D0: in Std_logic; C0: in Std_logic; 
          B0: in Std_logic; A0: in Std_logic; F0: out Std_logic; 
          F1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_3 : ENTITY IS TRUE;

  end SLICE_3;

  architecture Structure of SLICE_3 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal D1_ipd 	: std_logic := 'X';
    signal C1_ipd 	: std_logic := 'X';
    signal B1_ipd 	: std_logic := 'X';
    signal A1_ipd 	: std_logic := 'X';
    signal D0_ipd 	: std_logic := 'X';
    signal C0_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';

    component lut40001
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40005
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    seg_data_2_c_1_bdd_4_lut: lut40005
      port map (A=>A1_ipd, B=>B1_ipd, C=>C1_ipd, D=>D1_ipd, Z=>F1_out);
    mux_9_Mux_0_i15_4_lut: lut40001
      port map (A=>A0_ipd, B=>B0_ipd, C=>C0_ipd, D=>D0_ipd, Z=>F0_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(D1_ipd, D1, tipd_D1);
      VitalWireDelay(C1_ipd, C1, tipd_C1);
      VitalWireDelay(B1_ipd, B1, tipd_B1);
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(D0_ipd, D0, tipd_D0);
      VitalWireDelay(C0_ipd, C0, tipd_C0);
      VitalWireDelay(B0_ipd, B0, tipd_B0);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
    END BLOCK;

    VitalBehavior : PROCESS (D1_ipd, C1_ipd, B1_ipd, A1_ipd, D0_ipd, C0_ipd, 
      B0_ipd, A0_ipd, F0_out, F1_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    F0_zd 	:= F0_out;
    F1_zd 	:= F1_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => D0_ipd'last_event,
                           PathDelay => tpd_D0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => C0_ipd'last_event,
                           PathDelay => tpd_C0_F0,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_F0,
                           PathCondition => TRUE),
                     3 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => F1, OutSignalName => "F1", OutTemp => F1_zd,
      Paths      => (0 => (InputChangeTime => D1_ipd'last_event,
                           PathDelay => tpd_D1_F1,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => C1_ipd'last_event,
                           PathDelay => tpd_C1_F1,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => B1_ipd'last_event,
                           PathDelay => tpd_B1_F1,
                           PathCondition => TRUE),
                     3 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_F1,
                           PathCondition => TRUE)),
      GlitchData => F1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity lut40006
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40006 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40006 : ENTITY IS TRUE;

  end lut40006;

  architecture Structure of lut40006 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"0511")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity SLICE_4
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_4 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_4";

      tipd_D1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_D0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_D1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_D0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
          A1: in Std_logic; D0: in Std_logic; C0: in Std_logic; 
          B0: in Std_logic; A0: in Std_logic; F0: out Std_logic; 
          F1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_4 : ENTITY IS TRUE;

  end SLICE_4;

  architecture Structure of SLICE_4 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal D1_ipd 	: std_logic := 'X';
    signal C1_ipd 	: std_logic := 'X';
    signal B1_ipd 	: std_logic := 'X';
    signal A1_ipd 	: std_logic := 'X';
    signal D0_ipd 	: std_logic := 'X';
    signal C0_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';

    component lut40003
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40006
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    i232_4_lut: lut40006
      port map (A=>A1_ipd, B=>B1_ipd, C=>C1_ipd, D=>D1_ipd, Z=>F1_out);
    seg_data_2_c_0_bdd_4_lut: lut40003
      port map (A=>A0_ipd, B=>B0_ipd, C=>C0_ipd, D=>D0_ipd, Z=>F0_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(D1_ipd, D1, tipd_D1);
      VitalWireDelay(C1_ipd, C1, tipd_C1);
      VitalWireDelay(B1_ipd, B1, tipd_B1);
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(D0_ipd, D0, tipd_D0);
      VitalWireDelay(C0_ipd, C0, tipd_C0);
      VitalWireDelay(B0_ipd, B0, tipd_B0);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
    END BLOCK;

    VitalBehavior : PROCESS (D1_ipd, C1_ipd, B1_ipd, A1_ipd, D0_ipd, C0_ipd, 
      B0_ipd, A0_ipd, F0_out, F1_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    F0_zd 	:= F0_out;
    F1_zd 	:= F1_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => D0_ipd'last_event,
                           PathDelay => tpd_D0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => C0_ipd'last_event,
                           PathDelay => tpd_C0_F0,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_F0,
                           PathCondition => TRUE),
                     3 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => F1, OutSignalName => "F1", OutTemp => F1_zd,
      Paths      => (0 => (InputChangeTime => D1_ipd'last_event,
                           PathDelay => tpd_D1_F1,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => C1_ipd'last_event,
                           PathDelay => tpd_C1_F1,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => B1_ipd'last_event,
                           PathDelay => tpd_B1_F1,
                           PathCondition => TRUE),
                     3 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_F1,
                           PathCondition => TRUE)),
      GlitchData => F1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity SLICE_5
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_5 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_5";

      tipd_D1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_D0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_D1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_D0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
          A1: in Std_logic; D0: in Std_logic; C0: in Std_logic; 
          B0: in Std_logic; A0: in Std_logic; F0: out Std_logic; 
          F1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_5 : ENTITY IS TRUE;

  end SLICE_5;

  architecture Structure of SLICE_5 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal D1_ipd 	: std_logic := 'X';
    signal C1_ipd 	: std_logic := 'X';
    signal B1_ipd 	: std_logic := 'X';
    signal A1_ipd 	: std_logic := 'X';
    signal D0_ipd 	: std_logic := 'X';
    signal C0_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';

    component lut40004
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40005
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    seg_data_1_c_0_bdd_4_lut: lut40004
      port map (A=>A1_ipd, B=>B1_ipd, C=>C1_ipd, D=>D1_ipd, Z=>F1_out);
    seg_data_1_c_1_bdd_4_lut: lut40005
      port map (A=>A0_ipd, B=>B0_ipd, C=>C0_ipd, D=>D0_ipd, Z=>F0_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(D1_ipd, D1, tipd_D1);
      VitalWireDelay(C1_ipd, C1, tipd_C1);
      VitalWireDelay(B1_ipd, B1, tipd_B1);
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(D0_ipd, D0, tipd_D0);
      VitalWireDelay(C0_ipd, C0, tipd_C0);
      VitalWireDelay(B0_ipd, B0, tipd_B0);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
    END BLOCK;

    VitalBehavior : PROCESS (D1_ipd, C1_ipd, B1_ipd, A1_ipd, D0_ipd, C0_ipd, 
      B0_ipd, A0_ipd, F0_out, F1_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    F0_zd 	:= F0_out;
    F1_zd 	:= F1_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => D0_ipd'last_event,
                           PathDelay => tpd_D0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => C0_ipd'last_event,
                           PathDelay => tpd_C0_F0,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_F0,
                           PathCondition => TRUE),
                     3 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => F1, OutSignalName => "F1", OutTemp => F1_zd,
      Paths      => (0 => (InputChangeTime => D1_ipd'last_event,
                           PathDelay => tpd_D1_F1,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => C1_ipd'last_event,
                           PathDelay => tpd_C1_F1,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => B1_ipd'last_event,
                           PathDelay => tpd_B1_F1,
                           PathCondition => TRUE),
                     3 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_F1,
                           PathCondition => TRUE)),
      GlitchData => F1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity SLICE_6
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_6 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_6";

      tipd_D1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_D0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_D1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_D0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
          A1: in Std_logic; D0: in Std_logic; C0: in Std_logic; 
          B0: in Std_logic; A0: in Std_logic; F0: out Std_logic; 
          F1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_6 : ENTITY IS TRUE;

  end SLICE_6;

  architecture Structure of SLICE_6 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal D1_ipd 	: std_logic := 'X';
    signal C1_ipd 	: std_logic := 'X';
    signal B1_ipd 	: std_logic := 'X';
    signal A1_ipd 	: std_logic := 'X';
    signal D0_ipd 	: std_logic := 'X';
    signal C0_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';

    component lut4
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40006
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    i225_4_lut: lut40006
      port map (A=>A1_ipd, B=>B1_ipd, C=>C1_ipd, D=>D1_ipd, Z=>F1_out);
    seg_data_2_c_2_bdd_4_lut: lut4
      port map (A=>A0_ipd, B=>B0_ipd, C=>C0_ipd, D=>D0_ipd, Z=>F0_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(D1_ipd, D1, tipd_D1);
      VitalWireDelay(C1_ipd, C1, tipd_C1);
      VitalWireDelay(B1_ipd, B1, tipd_B1);
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(D0_ipd, D0, tipd_D0);
      VitalWireDelay(C0_ipd, C0, tipd_C0);
      VitalWireDelay(B0_ipd, B0, tipd_B0);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
    END BLOCK;

    VitalBehavior : PROCESS (D1_ipd, C1_ipd, B1_ipd, A1_ipd, D0_ipd, C0_ipd, 
      B0_ipd, A0_ipd, F0_out, F1_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    F0_zd 	:= F0_out;
    F1_zd 	:= F1_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => D0_ipd'last_event,
                           PathDelay => tpd_D0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => C0_ipd'last_event,
                           PathDelay => tpd_C0_F0,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_F0,
                           PathCondition => TRUE),
                     3 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => F1, OutSignalName => "F1", OutTemp => F1_zd,
      Paths      => (0 => (InputChangeTime => D1_ipd'last_event,
                           PathDelay => tpd_D1_F1,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => C1_ipd'last_event,
                           PathDelay => tpd_C1_F1,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => B1_ipd'last_event,
                           PathDelay => tpd_B1_F1,
                           PathCondition => TRUE),
                     3 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_F1,
                           PathCondition => TRUE)),
      GlitchData => F1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity lut40007
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40007 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40007 : ENTITY IS TRUE;

  end lut40007;

  architecture Structure of lut40007 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"0000")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity gnd
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity gnd is
    port (PWR0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF gnd : ENTITY IS TRUE;

  end gnd;

  architecture Structure of gnd is
  begin
    INST1: VLO
      port map (Z=>PWR0);
  end Structure;

-- entity SLICE_7
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_7 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_7");

    port (F0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_7 : ENTITY IS TRUE;

  end SLICE_7;

  architecture Structure of SLICE_7 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal F0_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component lut40007
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
  begin
    i2: lut40007
      port map (A=>GNDI, B=>GNDI, C=>GNDI, D=>GNDI, Z=>F0_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
    END BLOCK;

    VitalBehavior : PROCESS (F0_out)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    F0 	<= F0_out;


    END PROCESS;

  end Structure;

-- entity xo2iobuf
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity xo2iobuf is
    port (Z: out Std_logic; PAD: in Std_logic);

    ATTRIBUTE Vital_Level0 OF xo2iobuf : ENTITY IS TRUE;

  end xo2iobuf;

  architecture Structure of xo2iobuf is
  begin
    INST1: IBPD
      port map (I=>PAD, O=>Z);
  end Structure;

-- entity seg_data_2_0_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity seg_data_2_0_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "seg_data_2_0_B";

      tipd_segdata20  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_segdata20_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_segdata20 	: VitalDelayType := 0 ns;
      tpw_segdata20_posedge	: VitalDelayType := 0 ns;
      tpw_segdata20_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; segdata20: in Std_logic);

    ATTRIBUTE Vital_Level0 OF seg_data_2_0_B : ENTITY IS TRUE;

  end seg_data_2_0_B;

  architecture Structure of seg_data_2_0_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal segdata20_ipd 	: std_logic := 'X';

    component xo2iobuf
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    seg_data_2_pad_0: xo2iobuf
      port map (Z=>PADDI_out, PAD=>segdata20_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(segdata20_ipd, segdata20, tipd_segdata20);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, segdata20_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_segdata20_segdata20          	: x01 := '0';
    VARIABLE periodcheckinfo_segdata20	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => segdata20_ipd,
        TestSignalName => "segdata20",
        Period => tperiod_segdata20,
        PulseWidthHigh => tpw_segdata20_posedge,
        PulseWidthLow => tpw_segdata20_negedge,
        PeriodData => periodcheckinfo_segdata20,
        Violation => tviol_segdata20_segdata20,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => segdata20_ipd'last_event,
                           PathDelay => tpd_segdata20_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity seg_data_2_1_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity seg_data_2_1_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "seg_data_2_1_B";

      tipd_segdata21  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_segdata21_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_segdata21 	: VitalDelayType := 0 ns;
      tpw_segdata21_posedge	: VitalDelayType := 0 ns;
      tpw_segdata21_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; segdata21: in Std_logic);

    ATTRIBUTE Vital_Level0 OF seg_data_2_1_B : ENTITY IS TRUE;

  end seg_data_2_1_B;

  architecture Structure of seg_data_2_1_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal segdata21_ipd 	: std_logic := 'X';

    component xo2iobuf
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    seg_data_2_pad_1: xo2iobuf
      port map (Z=>PADDI_out, PAD=>segdata21_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(segdata21_ipd, segdata21, tipd_segdata21);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, segdata21_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_segdata21_segdata21          	: x01 := '0';
    VARIABLE periodcheckinfo_segdata21	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => segdata21_ipd,
        TestSignalName => "segdata21",
        Period => tperiod_segdata21,
        PulseWidthHigh => tpw_segdata21_posedge,
        PulseWidthLow => tpw_segdata21_negedge,
        PeriodData => periodcheckinfo_segdata21,
        Violation => tviol_segdata21_segdata21,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => segdata21_ipd'last_event,
                           PathDelay => tpd_segdata21_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity seg_data_2_2_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity seg_data_2_2_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "seg_data_2_2_B";

      tipd_segdata22  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_segdata22_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_segdata22 	: VitalDelayType := 0 ns;
      tpw_segdata22_posedge	: VitalDelayType := 0 ns;
      tpw_segdata22_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; segdata22: in Std_logic);

    ATTRIBUTE Vital_Level0 OF seg_data_2_2_B : ENTITY IS TRUE;

  end seg_data_2_2_B;

  architecture Structure of seg_data_2_2_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal segdata22_ipd 	: std_logic := 'X';

    component xo2iobuf
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    seg_data_2_pad_2: xo2iobuf
      port map (Z=>PADDI_out, PAD=>segdata22_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(segdata22_ipd, segdata22, tipd_segdata22);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, segdata22_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_segdata22_segdata22          	: x01 := '0';
    VARIABLE periodcheckinfo_segdata22	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => segdata22_ipd,
        TestSignalName => "segdata22",
        Period => tperiod_segdata22,
        PulseWidthHigh => tpw_segdata22_posedge,
        PulseWidthLow => tpw_segdata22_negedge,
        PeriodData => periodcheckinfo_segdata22,
        Violation => tviol_segdata22_segdata22,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => segdata22_ipd'last_event,
                           PathDelay => tpd_segdata22_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity seg_data_2_3_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity seg_data_2_3_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "seg_data_2_3_B";

      tipd_segdata23  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_segdata23_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_segdata23 	: VitalDelayType := 0 ns;
      tpw_segdata23_posedge	: VitalDelayType := 0 ns;
      tpw_segdata23_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; segdata23: in Std_logic);

    ATTRIBUTE Vital_Level0 OF seg_data_2_3_B : ENTITY IS TRUE;

  end seg_data_2_3_B;

  architecture Structure of seg_data_2_3_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal segdata23_ipd 	: std_logic := 'X';

    component xo2iobuf
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    seg_data_2_pad_3: xo2iobuf
      port map (Z=>PADDI_out, PAD=>segdata23_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(segdata23_ipd, segdata23, tipd_segdata23);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, segdata23_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_segdata23_segdata23          	: x01 := '0';
    VARIABLE periodcheckinfo_segdata23	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => segdata23_ipd,
        TestSignalName => "segdata23",
        Period => tperiod_segdata23,
        PulseWidthHigh => tpw_segdata23_posedge,
        PulseWidthLow => tpw_segdata23_negedge,
        PeriodData => periodcheckinfo_segdata23,
        Violation => tviol_segdata23_segdata23,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => segdata23_ipd'last_event,
                           PathDelay => tpd_segdata23_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity seg_data_1_0_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity seg_data_1_0_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "seg_data_1_0_B";

      tipd_segdata10  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_segdata10_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_segdata10 	: VitalDelayType := 0 ns;
      tpw_segdata10_posedge	: VitalDelayType := 0 ns;
      tpw_segdata10_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; segdata10: in Std_logic);

    ATTRIBUTE Vital_Level0 OF seg_data_1_0_B : ENTITY IS TRUE;

  end seg_data_1_0_B;

  architecture Structure of seg_data_1_0_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal segdata10_ipd 	: std_logic := 'X';

    component xo2iobuf
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    seg_data_1_pad_0: xo2iobuf
      port map (Z=>PADDI_out, PAD=>segdata10_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(segdata10_ipd, segdata10, tipd_segdata10);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, segdata10_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_segdata10_segdata10          	: x01 := '0';
    VARIABLE periodcheckinfo_segdata10	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => segdata10_ipd,
        TestSignalName => "segdata10",
        Period => tperiod_segdata10,
        PulseWidthHigh => tpw_segdata10_posedge,
        PulseWidthLow => tpw_segdata10_negedge,
        PeriodData => periodcheckinfo_segdata10,
        Violation => tviol_segdata10_segdata10,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => segdata10_ipd'last_event,
                           PathDelay => tpd_segdata10_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity seg_data_1_1_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity seg_data_1_1_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "seg_data_1_1_B";

      tipd_segdata11  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_segdata11_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_segdata11 	: VitalDelayType := 0 ns;
      tpw_segdata11_posedge	: VitalDelayType := 0 ns;
      tpw_segdata11_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; segdata11: in Std_logic);

    ATTRIBUTE Vital_Level0 OF seg_data_1_1_B : ENTITY IS TRUE;

  end seg_data_1_1_B;

  architecture Structure of seg_data_1_1_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal segdata11_ipd 	: std_logic := 'X';

    component xo2iobuf
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    seg_data_1_pad_1: xo2iobuf
      port map (Z=>PADDI_out, PAD=>segdata11_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(segdata11_ipd, segdata11, tipd_segdata11);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, segdata11_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_segdata11_segdata11          	: x01 := '0';
    VARIABLE periodcheckinfo_segdata11	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => segdata11_ipd,
        TestSignalName => "segdata11",
        Period => tperiod_segdata11,
        PulseWidthHigh => tpw_segdata11_posedge,
        PulseWidthLow => tpw_segdata11_negedge,
        PeriodData => periodcheckinfo_segdata11,
        Violation => tviol_segdata11_segdata11,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => segdata11_ipd'last_event,
                           PathDelay => tpd_segdata11_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity seg_data_1_2_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity seg_data_1_2_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "seg_data_1_2_B";

      tipd_segdata12  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_segdata12_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_segdata12 	: VitalDelayType := 0 ns;
      tpw_segdata12_posedge	: VitalDelayType := 0 ns;
      tpw_segdata12_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; segdata12: in Std_logic);

    ATTRIBUTE Vital_Level0 OF seg_data_1_2_B : ENTITY IS TRUE;

  end seg_data_1_2_B;

  architecture Structure of seg_data_1_2_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal segdata12_ipd 	: std_logic := 'X';

    component xo2iobuf
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    seg_data_1_pad_2: xo2iobuf
      port map (Z=>PADDI_out, PAD=>segdata12_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(segdata12_ipd, segdata12, tipd_segdata12);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, segdata12_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_segdata12_segdata12          	: x01 := '0';
    VARIABLE periodcheckinfo_segdata12	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => segdata12_ipd,
        TestSignalName => "segdata12",
        Period => tperiod_segdata12,
        PulseWidthHigh => tpw_segdata12_posedge,
        PulseWidthLow => tpw_segdata12_negedge,
        PeriodData => periodcheckinfo_segdata12,
        Violation => tviol_segdata12_segdata12,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => segdata12_ipd'last_event,
                           PathDelay => tpd_segdata12_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity seg_data_1_3_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity seg_data_1_3_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "seg_data_1_3_B";

      tipd_segdata13  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_segdata13_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_segdata13 	: VitalDelayType := 0 ns;
      tpw_segdata13_posedge	: VitalDelayType := 0 ns;
      tpw_segdata13_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; segdata13: in Std_logic);

    ATTRIBUTE Vital_Level0 OF seg_data_1_3_B : ENTITY IS TRUE;

  end seg_data_1_3_B;

  architecture Structure of seg_data_1_3_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal segdata13_ipd 	: std_logic := 'X';

    component xo2iobuf
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    seg_data_1_pad_3: xo2iobuf
      port map (Z=>PADDI_out, PAD=>segdata13_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(segdata13_ipd, segdata13, tipd_segdata13);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, segdata13_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_segdata13_segdata13          	: x01 := '0';
    VARIABLE periodcheckinfo_segdata13	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => segdata13_ipd,
        TestSignalName => "segdata13",
        Period => tperiod_segdata13,
        PulseWidthHigh => tpw_segdata13_posedge,
        PulseWidthLow => tpw_segdata13_negedge,
        PeriodData => periodcheckinfo_segdata13,
        Violation => tviol_segdata13_segdata13,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => segdata13_ipd'last_event,
                           PathDelay => tpd_segdata13_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity xo2iobuf0008
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity xo2iobuf0008 is
    port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);

    ATTRIBUTE Vital_Level0 OF xo2iobuf0008 : ENTITY IS TRUE;

  end xo2iobuf0008;

  architecture Structure of xo2iobuf0008 is
  begin
    INST5: OBZPD
      port map (I=>I, T=>T, O=>PAD);
  end Structure;

-- entity seg_led_2_0_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity seg_led_2_0_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "seg_led_2_0_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_segled20	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; segled20: out Std_logic);

    ATTRIBUTE Vital_Level0 OF seg_led_2_0_B : ENTITY IS TRUE;

  end seg_led_2_0_B;

  architecture Structure of seg_led_2_0_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal segled20_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf0008
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    seg_led_2_pad_0: xo2iobuf0008
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>segled20_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, segled20_out)
    VARIABLE segled20_zd         	: std_logic := 'X';
    VARIABLE segled20_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    segled20_zd 	:= segled20_out;

    VitalPathDelay01 (
      OutSignal => segled20, OutSignalName => "segled20", OutTemp => segled20_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_segled20,
                           PathCondition => TRUE)),
      GlitchData => segled20_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity seg_led_2_1_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity seg_led_2_1_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "seg_led_2_1_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_segled21	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; segled21: out Std_logic);

    ATTRIBUTE Vital_Level0 OF seg_led_2_1_B : ENTITY IS TRUE;

  end seg_led_2_1_B;

  architecture Structure of seg_led_2_1_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal segled21_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf0008
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    seg_led_2_pad_1: xo2iobuf0008
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>segled21_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, segled21_out)
    VARIABLE segled21_zd         	: std_logic := 'X';
    VARIABLE segled21_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    segled21_zd 	:= segled21_out;

    VitalPathDelay01 (
      OutSignal => segled21, OutSignalName => "segled21", OutTemp => segled21_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_segled21,
                           PathCondition => TRUE)),
      GlitchData => segled21_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity seg_led_2_2_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity seg_led_2_2_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "seg_led_2_2_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_segled22	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; segled22: out Std_logic);

    ATTRIBUTE Vital_Level0 OF seg_led_2_2_B : ENTITY IS TRUE;

  end seg_led_2_2_B;

  architecture Structure of seg_led_2_2_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal segled22_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf0008
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    seg_led_2_pad_2: xo2iobuf0008
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>segled22_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, segled22_out)
    VARIABLE segled22_zd         	: std_logic := 'X';
    VARIABLE segled22_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    segled22_zd 	:= segled22_out;

    VitalPathDelay01 (
      OutSignal => segled22, OutSignalName => "segled22", OutTemp => segled22_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_segled22,
                           PathCondition => TRUE)),
      GlitchData => segled22_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity seg_led_2_3_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity seg_led_2_3_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "seg_led_2_3_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_segled23	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; segled23: out Std_logic);

    ATTRIBUTE Vital_Level0 OF seg_led_2_3_B : ENTITY IS TRUE;

  end seg_led_2_3_B;

  architecture Structure of seg_led_2_3_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal segled23_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf0008
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    seg_led_2_pad_3: xo2iobuf0008
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>segled23_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, segled23_out)
    VARIABLE segled23_zd         	: std_logic := 'X';
    VARIABLE segled23_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    segled23_zd 	:= segled23_out;

    VitalPathDelay01 (
      OutSignal => segled23, OutSignalName => "segled23", OutTemp => segled23_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_segled23,
                           PathCondition => TRUE)),
      GlitchData => segled23_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity seg_led_2_4_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity seg_led_2_4_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "seg_led_2_4_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_segled24	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; segled24: out Std_logic);

    ATTRIBUTE Vital_Level0 OF seg_led_2_4_B : ENTITY IS TRUE;

  end seg_led_2_4_B;

  architecture Structure of seg_led_2_4_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal segled24_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf0008
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    seg_led_2_pad_4: xo2iobuf0008
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>segled24_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, segled24_out)
    VARIABLE segled24_zd         	: std_logic := 'X';
    VARIABLE segled24_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    segled24_zd 	:= segled24_out;

    VitalPathDelay01 (
      OutSignal => segled24, OutSignalName => "segled24", OutTemp => segled24_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_segled24,
                           PathCondition => TRUE)),
      GlitchData => segled24_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity seg_led_2_5_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity seg_led_2_5_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "seg_led_2_5_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_segled25	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; segled25: out Std_logic);

    ATTRIBUTE Vital_Level0 OF seg_led_2_5_B : ENTITY IS TRUE;

  end seg_led_2_5_B;

  architecture Structure of seg_led_2_5_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal segled25_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf0008
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    seg_led_2_pad_5: xo2iobuf0008
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>segled25_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, segled25_out)
    VARIABLE segled25_zd         	: std_logic := 'X';
    VARIABLE segled25_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    segled25_zd 	:= segled25_out;

    VitalPathDelay01 (
      OutSignal => segled25, OutSignalName => "segled25", OutTemp => segled25_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_segled25,
                           PathCondition => TRUE)),
      GlitchData => segled25_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity seg_led_2_6_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity seg_led_2_6_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "seg_led_2_6_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_segled26	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; segled26: out Std_logic);

    ATTRIBUTE Vital_Level0 OF seg_led_2_6_B : ENTITY IS TRUE;

  end seg_led_2_6_B;

  architecture Structure of seg_led_2_6_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal segled26_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf0008
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    seg_led_2_pad_6: xo2iobuf0008
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>segled26_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, segled26_out)
    VARIABLE segled26_zd         	: std_logic := 'X';
    VARIABLE segled26_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    segled26_zd 	:= segled26_out;

    VitalPathDelay01 (
      OutSignal => segled26, OutSignalName => "segled26", OutTemp => segled26_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_segled26,
                           PathCondition => TRUE)),
      GlitchData => segled26_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity seg_led_2_7_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity seg_led_2_7_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "seg_led_2_7_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_segled27	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; segled27: out Std_logic);

    ATTRIBUTE Vital_Level0 OF seg_led_2_7_B : ENTITY IS TRUE;

  end seg_led_2_7_B;

  architecture Structure of seg_led_2_7_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal segled27_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf0008
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    seg_led_2_pad_7: xo2iobuf0008
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>segled27_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, segled27_out)
    VARIABLE segled27_zd         	: std_logic := 'X';
    VARIABLE segled27_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    segled27_zd 	:= segled27_out;

    VitalPathDelay01 (
      OutSignal => segled27, OutSignalName => "segled27", OutTemp => segled27_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_segled27,
                           PathCondition => TRUE)),
      GlitchData => segled27_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity seg_led_2_8_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity seg_led_2_8_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "seg_led_2_8_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_segled28	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; segled28: out Std_logic);

    ATTRIBUTE Vital_Level0 OF seg_led_2_8_B : ENTITY IS TRUE;

  end seg_led_2_8_B;

  architecture Structure of seg_led_2_8_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal segled28_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf0008
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    seg_led_2_pad_8: xo2iobuf0008
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>segled28_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, segled28_out)
    VARIABLE segled28_zd         	: std_logic := 'X';
    VARIABLE segled28_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    segled28_zd 	:= segled28_out;

    VitalPathDelay01 (
      OutSignal => segled28, OutSignalName => "segled28", OutTemp => segled28_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_segled28,
                           PathCondition => TRUE)),
      GlitchData => segled28_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity seg_led_1_0_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity seg_led_1_0_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "seg_led_1_0_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_segled10	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; segled10: out Std_logic);

    ATTRIBUTE Vital_Level0 OF seg_led_1_0_B : ENTITY IS TRUE;

  end seg_led_1_0_B;

  architecture Structure of seg_led_1_0_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal segled10_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf0008
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    seg_led_1_pad_0: xo2iobuf0008
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>segled10_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, segled10_out)
    VARIABLE segled10_zd         	: std_logic := 'X';
    VARIABLE segled10_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    segled10_zd 	:= segled10_out;

    VitalPathDelay01 (
      OutSignal => segled10, OutSignalName => "segled10", OutTemp => segled10_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_segled10,
                           PathCondition => TRUE)),
      GlitchData => segled10_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity seg_led_1_1_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity seg_led_1_1_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "seg_led_1_1_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_segled11	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; segled11: out Std_logic);

    ATTRIBUTE Vital_Level0 OF seg_led_1_1_B : ENTITY IS TRUE;

  end seg_led_1_1_B;

  architecture Structure of seg_led_1_1_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal segled11_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf0008
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    seg_led_1_pad_1: xo2iobuf0008
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>segled11_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, segled11_out)
    VARIABLE segled11_zd         	: std_logic := 'X';
    VARIABLE segled11_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    segled11_zd 	:= segled11_out;

    VitalPathDelay01 (
      OutSignal => segled11, OutSignalName => "segled11", OutTemp => segled11_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_segled11,
                           PathCondition => TRUE)),
      GlitchData => segled11_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity seg_led_1_2_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity seg_led_1_2_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "seg_led_1_2_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_segled12	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; segled12: out Std_logic);

    ATTRIBUTE Vital_Level0 OF seg_led_1_2_B : ENTITY IS TRUE;

  end seg_led_1_2_B;

  architecture Structure of seg_led_1_2_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal segled12_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf0008
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    seg_led_1_pad_2: xo2iobuf0008
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>segled12_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, segled12_out)
    VARIABLE segled12_zd         	: std_logic := 'X';
    VARIABLE segled12_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    segled12_zd 	:= segled12_out;

    VitalPathDelay01 (
      OutSignal => segled12, OutSignalName => "segled12", OutTemp => segled12_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_segled12,
                           PathCondition => TRUE)),
      GlitchData => segled12_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity seg_led_1_3_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity seg_led_1_3_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "seg_led_1_3_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_segled13	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; segled13: out Std_logic);

    ATTRIBUTE Vital_Level0 OF seg_led_1_3_B : ENTITY IS TRUE;

  end seg_led_1_3_B;

  architecture Structure of seg_led_1_3_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal segled13_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf0008
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    seg_led_1_pad_3: xo2iobuf0008
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>segled13_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, segled13_out)
    VARIABLE segled13_zd         	: std_logic := 'X';
    VARIABLE segled13_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    segled13_zd 	:= segled13_out;

    VitalPathDelay01 (
      OutSignal => segled13, OutSignalName => "segled13", OutTemp => segled13_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_segled13,
                           PathCondition => TRUE)),
      GlitchData => segled13_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity seg_led_1_4_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity seg_led_1_4_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "seg_led_1_4_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_segled14	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; segled14: out Std_logic);

    ATTRIBUTE Vital_Level0 OF seg_led_1_4_B : ENTITY IS TRUE;

  end seg_led_1_4_B;

  architecture Structure of seg_led_1_4_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal segled14_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf0008
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    seg_led_1_pad_4: xo2iobuf0008
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>segled14_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, segled14_out)
    VARIABLE segled14_zd         	: std_logic := 'X';
    VARIABLE segled14_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    segled14_zd 	:= segled14_out;

    VitalPathDelay01 (
      OutSignal => segled14, OutSignalName => "segled14", OutTemp => segled14_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_segled14,
                           PathCondition => TRUE)),
      GlitchData => segled14_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity seg_led_1_5_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity seg_led_1_5_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "seg_led_1_5_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_segled15	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; segled15: out Std_logic);

    ATTRIBUTE Vital_Level0 OF seg_led_1_5_B : ENTITY IS TRUE;

  end seg_led_1_5_B;

  architecture Structure of seg_led_1_5_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal segled15_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf0008
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    seg_led_1_pad_5: xo2iobuf0008
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>segled15_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, segled15_out)
    VARIABLE segled15_zd         	: std_logic := 'X';
    VARIABLE segled15_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    segled15_zd 	:= segled15_out;

    VitalPathDelay01 (
      OutSignal => segled15, OutSignalName => "segled15", OutTemp => segled15_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_segled15,
                           PathCondition => TRUE)),
      GlitchData => segled15_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity seg_led_1_6_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity seg_led_1_6_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "seg_led_1_6_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_segled16	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; segled16: out Std_logic);

    ATTRIBUTE Vital_Level0 OF seg_led_1_6_B : ENTITY IS TRUE;

  end seg_led_1_6_B;

  architecture Structure of seg_led_1_6_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal segled16_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf0008
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    seg_led_1_pad_6: xo2iobuf0008
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>segled16_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, segled16_out)
    VARIABLE segled16_zd         	: std_logic := 'X';
    VARIABLE segled16_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    segled16_zd 	:= segled16_out;

    VitalPathDelay01 (
      OutSignal => segled16, OutSignalName => "segled16", OutTemp => segled16_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_segled16,
                           PathCondition => TRUE)),
      GlitchData => segled16_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity seg_led_1_7_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity seg_led_1_7_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "seg_led_1_7_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_segled17	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; segled17: out Std_logic);

    ATTRIBUTE Vital_Level0 OF seg_led_1_7_B : ENTITY IS TRUE;

  end seg_led_1_7_B;

  architecture Structure of seg_led_1_7_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal segled17_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf0008
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    seg_led_1_pad_7: xo2iobuf0008
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>segled17_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, segled17_out)
    VARIABLE segled17_zd         	: std_logic := 'X';
    VARIABLE segled17_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    segled17_zd 	:= segled17_out;

    VitalPathDelay01 (
      OutSignal => segled17, OutSignalName => "segled17", OutTemp => segled17_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_segled17,
                           PathCondition => TRUE)),
      GlitchData => segled17_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity seg_led_1_8_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity seg_led_1_8_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "seg_led_1_8_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_segled18	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; segled18: out Std_logic);

    ATTRIBUTE Vital_Level0 OF seg_led_1_8_B : ENTITY IS TRUE;

  end seg_led_1_8_B;

  architecture Structure of seg_led_1_8_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal segled18_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf0008
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    seg_led_1_pad_8: xo2iobuf0008
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>segled18_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, segled18_out)
    VARIABLE segled18_zd         	: std_logic := 'X';
    VARIABLE segled18_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    segled18_zd 	:= segled18_out;

    VitalPathDelay01 (
      OutSignal => segled18, OutSignalName => "segled18", OutTemp => segled18_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_segled18,
                           PathCondition => TRUE)),
      GlitchData => segled18_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity LED
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity LED is
    port (seg_data_1: in Std_logic_vector (3 downto 0); 
          seg_data_2: in Std_logic_vector (3 downto 0); 
          seg_led_1: out Std_logic_vector (8 downto 0); 
          seg_led_2: out Std_logic_vector (8 downto 0));



  end LED;

  architecture Structure of LED is
    signal seg_data_1_c_1: Std_logic;
    signal seg_data_1_c_3: Std_logic;
    signal seg_data_1_c_0: Std_logic;
    signal seg_data_1_c_2: Std_logic;
    signal seg_led_1_c_0: Std_logic;
    signal seg_led_1_c_2: Std_logic;
    signal seg_led_1_c_1: Std_logic;
    signal seg_led_1_c_3: Std_logic;
    signal seg_data_2_c_1: Std_logic;
    signal seg_data_2_c_2: Std_logic;
    signal seg_data_2_c_3: Std_logic;
    signal seg_data_2_c_0: Std_logic;
    signal seg_led_2_c_3: Std_logic;
    signal seg_led_2_c_5: Std_logic;
    signal seg_led_2_c_0: Std_logic;
    signal seg_led_2_c_6: Std_logic;
    signal seg_led_2_c_1: Std_logic;
    signal seg_led_2_c_4: Std_logic;
    signal seg_led_1_c_6: Std_logic;
    signal seg_led_1_c_5: Std_logic;
    signal seg_led_2_c_2: Std_logic;
    signal seg_led_1_c_4: Std_logic;
    signal GND_net: Std_logic;
    signal VCCI: Std_logic;
    component SLICE_0
      port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
            A1: in Std_logic; D0: in Std_logic; C0: in Std_logic; 
            B0: in Std_logic; A0: in Std_logic; F0: out Std_logic; 
            F1: out Std_logic);
    end component;
    component SLICE_1
      port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
            A1: in Std_logic; D0: in Std_logic; C0: in Std_logic; 
            B0: in Std_logic; A0: in Std_logic; F0: out Std_logic; 
            F1: out Std_logic);
    end component;
    component SLICE_2
      port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
            A1: in Std_logic; D0: in Std_logic; C0: in Std_logic; 
            B0: in Std_logic; A0: in Std_logic; F0: out Std_logic; 
            F1: out Std_logic);
    end component;
    component SLICE_3
      port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
            A1: in Std_logic; D0: in Std_logic; C0: in Std_logic; 
            B0: in Std_logic; A0: in Std_logic; F0: out Std_logic; 
            F1: out Std_logic);
    end component;
    component SLICE_4
      port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
            A1: in Std_logic; D0: in Std_logic; C0: in Std_logic; 
            B0: in Std_logic; A0: in Std_logic; F0: out Std_logic; 
            F1: out Std_logic);
    end component;
    component SLICE_5
      port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
            A1: in Std_logic; D0: in Std_logic; C0: in Std_logic; 
            B0: in Std_logic; A0: in Std_logic; F0: out Std_logic; 
            F1: out Std_logic);
    end component;
    component SLICE_6
      port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
            A1: in Std_logic; D0: in Std_logic; C0: in Std_logic; 
            B0: in Std_logic; A0: in Std_logic; F0: out Std_logic; 
            F1: out Std_logic);
    end component;
    component SLICE_7
      port (F0: out Std_logic);
    end component;
    component seg_data_2_0_B
      port (PADDI: out Std_logic; segdata20: in Std_logic);
    end component;
    component seg_data_2_1_B
      port (PADDI: out Std_logic; segdata21: in Std_logic);
    end component;
    component seg_data_2_2_B
      port (PADDI: out Std_logic; segdata22: in Std_logic);
    end component;
    component seg_data_2_3_B
      port (PADDI: out Std_logic; segdata23: in Std_logic);
    end component;
    component seg_data_1_0_B
      port (PADDI: out Std_logic; segdata10: in Std_logic);
    end component;
    component seg_data_1_1_B
      port (PADDI: out Std_logic; segdata11: in Std_logic);
    end component;
    component seg_data_1_2_B
      port (PADDI: out Std_logic; segdata12: in Std_logic);
    end component;
    component seg_data_1_3_B
      port (PADDI: out Std_logic; segdata13: in Std_logic);
    end component;
    component seg_led_2_0_B
      port (PADDO: in Std_logic; segled20: out Std_logic);
    end component;
    component seg_led_2_1_B
      port (PADDO: in Std_logic; segled21: out Std_logic);
    end component;
    component seg_led_2_2_B
      port (PADDO: in Std_logic; segled22: out Std_logic);
    end component;
    component seg_led_2_3_B
      port (PADDO: in Std_logic; segled23: out Std_logic);
    end component;
    component seg_led_2_4_B
      port (PADDO: in Std_logic; segled24: out Std_logic);
    end component;
    component seg_led_2_5_B
      port (PADDO: in Std_logic; segled25: out Std_logic);
    end component;
    component seg_led_2_6_B
      port (PADDO: in Std_logic; segled26: out Std_logic);
    end component;
    component seg_led_2_7_B
      port (PADDO: in Std_logic; segled27: out Std_logic);
    end component;
    component seg_led_2_8_B
      port (PADDO: in Std_logic; segled28: out Std_logic);
    end component;
    component seg_led_1_0_B
      port (PADDO: in Std_logic; segled10: out Std_logic);
    end component;
    component seg_led_1_1_B
      port (PADDO: in Std_logic; segled11: out Std_logic);
    end component;
    component seg_led_1_2_B
      port (PADDO: in Std_logic; segled12: out Std_logic);
    end component;
    component seg_led_1_3_B
      port (PADDO: in Std_logic; segled13: out Std_logic);
    end component;
    component seg_led_1_4_B
      port (PADDO: in Std_logic; segled14: out Std_logic);
    end component;
    component seg_led_1_5_B
      port (PADDO: in Std_logic; segled15: out Std_logic);
    end component;
    component seg_led_1_6_B
      port (PADDO: in Std_logic; segled16: out Std_logic);
    end component;
    component seg_led_1_7_B
      port (PADDO: in Std_logic; segled17: out Std_logic);
    end component;
    component seg_led_1_8_B
      port (PADDO: in Std_logic; segled18: out Std_logic);
    end component;
  begin
    SLICE_0I: SLICE_0
      port map (D1=>seg_data_1_c_1, C1=>seg_data_1_c_3, B1=>seg_data_1_c_0, 
                A1=>seg_data_1_c_2, D0=>seg_data_1_c_1, C0=>seg_data_1_c_3, 
                B0=>seg_data_1_c_2, A0=>seg_data_1_c_0, F0=>seg_led_1_c_0, 
                F1=>seg_led_1_c_2);
    SLICE_1I: SLICE_1
      port map (D1=>seg_data_1_c_1, C1=>seg_data_1_c_2, B1=>seg_data_1_c_0, 
                A1=>seg_data_1_c_3, D0=>seg_data_1_c_1, C0=>seg_data_1_c_2, 
                B0=>seg_data_1_c_3, A0=>seg_data_1_c_0, F0=>seg_led_1_c_1, 
                F1=>seg_led_1_c_3);
    SLICE_2I: SLICE_2
      port map (D1=>seg_data_2_c_1, C1=>seg_data_2_c_2, B1=>seg_data_2_c_3, 
                A1=>seg_data_2_c_0, D0=>seg_data_2_c_1, C0=>seg_data_2_c_2, 
                B0=>seg_data_2_c_0, A0=>seg_data_2_c_3, F0=>seg_led_2_c_3, 
                F1=>seg_led_2_c_5);
    SLICE_3I: SLICE_3
      port map (D1=>seg_data_2_c_2, C1=>seg_data_2_c_0, B1=>seg_data_2_c_3, 
                A1=>seg_data_2_c_1, D0=>seg_data_2_c_1, C0=>seg_data_2_c_3, 
                B0=>seg_data_2_c_2, A0=>seg_data_2_c_0, F0=>seg_led_2_c_0, 
                F1=>seg_led_2_c_6);
    SLICE_4I: SLICE_4
      port map (D1=>seg_data_2_c_1, C1=>seg_data_2_c_3, B1=>seg_data_2_c_2, 
                A1=>seg_data_2_c_0, D0=>seg_data_2_c_1, C0=>seg_data_2_c_2, 
                B0=>seg_data_2_c_3, A0=>seg_data_2_c_0, F0=>seg_led_2_c_1, 
                F1=>seg_led_2_c_4);
    SLICE_5I: SLICE_5
      port map (D1=>seg_data_1_c_1, C1=>seg_data_1_c_2, B1=>seg_data_1_c_3, 
                A1=>seg_data_1_c_0, D0=>seg_data_1_c_2, C0=>seg_data_1_c_0, 
                B0=>seg_data_1_c_3, A0=>seg_data_1_c_1, F0=>seg_led_1_c_6, 
                F1=>seg_led_1_c_5);
    SLICE_6I: SLICE_6
      port map (D1=>seg_data_1_c_1, C1=>seg_data_1_c_3, B1=>seg_data_1_c_2, 
                A1=>seg_data_1_c_0, D0=>seg_data_2_c_1, C0=>seg_data_2_c_3, 
                B0=>seg_data_2_c_0, A0=>seg_data_2_c_2, F0=>seg_led_2_c_2, 
                F1=>seg_led_1_c_4);
    SLICE_7I: SLICE_7
      port map (F0=>GND_net);
    seg_data_2_0_I: seg_data_2_0_B
      port map (PADDI=>seg_data_2_c_0, segdata20=>seg_data_2(0));
    seg_data_2_1_I: seg_data_2_1_B
      port map (PADDI=>seg_data_2_c_1, segdata21=>seg_data_2(1));
    seg_data_2_2_I: seg_data_2_2_B
      port map (PADDI=>seg_data_2_c_2, segdata22=>seg_data_2(2));
    seg_data_2_3_I: seg_data_2_3_B
      port map (PADDI=>seg_data_2_c_3, segdata23=>seg_data_2(3));
    seg_data_1_0_I: seg_data_1_0_B
      port map (PADDI=>seg_data_1_c_0, segdata10=>seg_data_1(0));
    seg_data_1_1_I: seg_data_1_1_B
      port map (PADDI=>seg_data_1_c_1, segdata11=>seg_data_1(1));
    seg_data_1_2_I: seg_data_1_2_B
      port map (PADDI=>seg_data_1_c_2, segdata12=>seg_data_1(2));
    seg_data_1_3_I: seg_data_1_3_B
      port map (PADDI=>seg_data_1_c_3, segdata13=>seg_data_1(3));
    seg_led_2_0_I: seg_led_2_0_B
      port map (PADDO=>seg_led_2_c_0, segled20=>seg_led_2(0));
    seg_led_2_1_I: seg_led_2_1_B
      port map (PADDO=>seg_led_2_c_1, segled21=>seg_led_2(1));
    seg_led_2_2_I: seg_led_2_2_B
      port map (PADDO=>seg_led_2_c_2, segled22=>seg_led_2(2));
    seg_led_2_3_I: seg_led_2_3_B
      port map (PADDO=>seg_led_2_c_3, segled23=>seg_led_2(3));
    seg_led_2_4_I: seg_led_2_4_B
      port map (PADDO=>seg_led_2_c_4, segled24=>seg_led_2(4));
    seg_led_2_5_I: seg_led_2_5_B
      port map (PADDO=>seg_led_2_c_5, segled25=>seg_led_2(5));
    seg_led_2_6_I: seg_led_2_6_B
      port map (PADDO=>seg_led_2_c_6, segled26=>seg_led_2(6));
    seg_led_2_7_I: seg_led_2_7_B
      port map (PADDO=>GND_net, segled27=>seg_led_2(7));
    seg_led_2_8_I: seg_led_2_8_B
      port map (PADDO=>GND_net, segled28=>seg_led_2(8));
    seg_led_1_0_I: seg_led_1_0_B
      port map (PADDO=>seg_led_1_c_0, segled10=>seg_led_1(0));
    seg_led_1_1_I: seg_led_1_1_B
      port map (PADDO=>seg_led_1_c_1, segled11=>seg_led_1(1));
    seg_led_1_2_I: seg_led_1_2_B
      port map (PADDO=>seg_led_1_c_2, segled12=>seg_led_1(2));
    seg_led_1_3_I: seg_led_1_3_B
      port map (PADDO=>seg_led_1_c_3, segled13=>seg_led_1(3));
    seg_led_1_4_I: seg_led_1_4_B
      port map (PADDO=>seg_led_1_c_4, segled14=>seg_led_1(4));
    seg_led_1_5_I: seg_led_1_5_B
      port map (PADDO=>seg_led_1_c_5, segled15=>seg_led_1(5));
    seg_led_1_6_I: seg_led_1_6_B
      port map (PADDO=>seg_led_1_c_6, segled16=>seg_led_1(6));
    seg_led_1_7_I: seg_led_1_7_B
      port map (PADDO=>GND_net, segled17=>seg_led_1(7));
    seg_led_1_8_I: seg_led_1_8_B
      port map (PADDO=>GND_net, segled18=>seg_led_1(8));
    VHI_INST: VHI
      port map (Z=>VCCI);
    PUR_INST: PUR
      port map (PUR=>VCCI);
    GSR_INST: GSR
      port map (GSR=>VCCI);
  end Structure;



  library IEEE, vital2000, MACHXO2;
  configuration Structure_CON of LED is
    for Structure
    end for;
  end Structure_CON;


