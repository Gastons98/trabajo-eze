-- Created on Sun Nov 05 19:09:18 2023
--Parte D Guia 5

--PREGUNTAR: en el punto 6, solapa ACTIONS, q es lo
--q se agrega en ADDITIONAL CONDITIONS cuando es MEALY ??

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY maq_estado IS
    PORT (
        reset : IN STD_LOGIC := '0';
        clock : IN STD_LOGIC;
        x : IN STD_LOGIC := '0';
        d4 : OUT STD_LOGIC;
        d3 : OUT STD_LOGIC;
        d2 : OUT STD_LOGIC;
        d1 : OUT STD_LOGIC
    );
END maq_estado;

ARCHITECTURE BEHAVIOR OF maq_estado IS
    TYPE type_fstate IS (state2,state7,state4,state1,state3,state5,state6);
    SIGNAL fstate : type_fstate;
    SIGNAL reg_fstate : type_fstate;
BEGIN
    PROCESS (clock,reg_fstate)
    BEGIN
        IF (clock='1' AND clock'event) THEN
            fstate <= reg_fstate;
        END IF;
    END PROCESS;

    PROCESS (fstate,reset,x)
    BEGIN
        IF (reset='1') THEN
            reg_fstate <= state1;
            d4 <= '0';
            d3 <= '0';
            d2 <= '0';
            d1 <= '0';
        ELSE
            d4 <= '0';
            d3 <= '0';
            d2 <= '0';
            d1 <= '0';
            CASE fstate IS
                WHEN state2 =>
                    reg_fstate <= state3;

                    IF (((x = '0') OR (x = '1'))) THEN
                        d3 <= '1';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        d3 <= '0';
                    END IF;

                    IF (((x = '0') OR (x = '1'))) THEN
                        d2 <= '1';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        d2 <= '0';
                    END IF;

                    IF (((x = '0') OR (x = '1'))) THEN
                        d1 <= '0';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        d1 <= '0';
                    END IF;

                    IF (((x = '0') OR (x = '1'))) THEN
                        d4 <= '0';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        d4 <= '0';
                    END IF;
                WHEN state7 =>
                    reg_fstate <= state1;

                    IF (((x = '0') OR (x = '1'))) THEN
                        d3 <= '1';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        d3 <= '0';
                    END IF;

                    IF (((x = '0') OR (x = '1'))) THEN
                        d2 <= '1';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        d2 <= '0';
                    END IF;

                    IF (((x = '0') OR (x = '1'))) THEN
                        d1 <= '1';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        d1 <= '0';
                    END IF;

                    IF (((x = '0') OR (x = '1'))) THEN
                        d4 <= '1';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        d4 <= '0';
                    END IF;
                WHEN state4 =>
                    reg_fstate <= state1;

                    IF (((x = '0') OR (x = '1'))) THEN
                        d3 <= '0';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        d3 <= '0';
                    END IF;

                    IF (((x = '0') OR (x = '1'))) THEN
                        d2 <= '0';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        d2 <= '0';
                    END IF;

                    IF (((x = '0') OR (x = '1'))) THEN
                        d1 <= '1';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        d1 <= '0';
                    END IF;

                    IF (((x = '0') OR (x = '1'))) THEN
                        d4 <= '1';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        d4 <= '0';
                    END IF;
                WHEN state1 =>
                    IF ((x = '0')) THEN
                        reg_fstate <= state2;
                    ELSIF ((x = '1')) THEN
                        reg_fstate <= state5;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= state1;
                    END IF;

                    IF ((x = '0')) THEN
                        d3 <= '0';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        d3 <= '0';
                    END IF;

                    IF ((x = '0')) THEN
                        d2 <= '0';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        d2 <= '0';
                    END IF;

                    IF ((x = '0')) THEN
                        d1 <= '0';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        d1 <= '0';
                    END IF;

                    IF ((x = '0')) THEN
                        d4 <= '0';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        d4 <= '0';
                    END IF;
                WHEN state3 =>
                    IF ((x = '0')) THEN
                        reg_fstate <= state4;
                    ELSIF ((x = '1')) THEN
                        reg_fstate <= state7;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= state3;
                    END IF;

                    IF ((x = '0')) THEN
                        d3 <= '1';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        d3 <= '0';
                    END IF;

                    IF ((x = '0')) THEN
                        d2 <= '1';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        d2 <= '0';
                    END IF;

                    IF ((x = '0')) THEN
                        d1 <= '1';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        d1 <= '0';
                    END IF;

                    IF ((x = '0')) THEN
                        d4 <= '1';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        d4 <= '0';
                    END IF;
                WHEN state5 =>
                    reg_fstate <= state6;

                    IF (((x = '0') OR (x = '1'))) THEN
                        d3 <= '0';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        d3 <= '0';
                    END IF;

                    IF (((x = '0') OR (x = '1'))) THEN
                        d2 <= '0';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        d2 <= '0';
                    END IF;

                    IF (((x = '0') OR (x = '1'))) THEN
                        d1 <= '0';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        d1 <= '0';
                    END IF;

                    IF (((x = '0') OR (x = '1'))) THEN
                        d4 <= '1';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        d4 <= '0';
                    END IF;
                WHEN state6 =>
                    reg_fstate <= state3;

                    IF (((x = '0') OR (x = '1'))) THEN
                        d3 <= '1';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        d3 <= '0';
                    END IF;

                    IF (((x = '0') OR (x = '1'))) THEN
                        d2 <= '0';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        d2 <= '0';
                    END IF;

                    IF (((x = '0') OR (x = '1'))) THEN
                        d1 <= '0';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        d1 <= '0';
                    END IF;

                    IF (((x = '0') OR (x = '1'))) THEN
                        d4 <= '1';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        d4 <= '0';
                    END IF;
                WHEN OTHERS => 
                    d4 <= 'X';
                    d3 <= 'X';
                    d2 <= 'X';
                    d1 <= 'X';
                    report "Reach undefined state";
            END CASE;
        END IF;
    END PROCESS;
END BEHAVIOR;
