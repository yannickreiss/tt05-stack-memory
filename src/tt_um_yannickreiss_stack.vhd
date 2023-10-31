-- tt_um_yannickreiss_stack.vhd
-- Created on: Di 31. Okt 15:41:53 CET 2023
-- Author(s): Yannick Reiß
-- Content: Implementation of a stack
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Entity yannickreiss_stack: yannickreiss_stack
entity tt_um_yannickreiss_stack is
    port(
        ui_in	: in	std_logic_vector(7 downto 0);
		uo_out	: out	std_logic_vector(7 downto 0);
		uio_in	: in	std_logic_vector(7 downto 0);
		uio_out	: out	std_logic_vector(7 downto 0);
		uio_oe	: out	std_logic_vector(7 downto 0);
		ena	:	in	std_logic;
		clk	:	in	std_logic;
		rst_n	:	in	std_logic
    );
end tt_um_yannickreiss_stack;

-- Architecture arch of yannickreiss_stack:
architecture arch of tt_um_yannickreiss_stack is
    signal reset    : std_logic := '0';
    signal push     : std_logic := '0';
    signal pop      : std_logic := '0';
    signal stack_pointer : std_logic_vector(7 downto 0) := (others => '0');
    type stack_mem is array(0 to 255) of std_logic_vector(7 downto 0);
    signal stack    : stack_mem := (others => (others => '0'));
    signal step     : std_logic := '0';
    signal oo_out   : std_logic_vector(7 downto 0) := (others => '0');
begin


    -- Process proc  push and pop operation
    proc : process (clk, rst_n) -- runs only, when clk, rst_n changed
    begin

        if rising_edge(clk) then
            if step = '0' then

                -- push:    set input on push
                if push = '1' then
                    stack(to_integer(unsigned(stack_pointer))) <= ui_in;
                end if;

                -- pop:     lower stack stack_pointer
                if pop = '1' then
                    stack_pointer <= std_logic_vector(unsigned(stack_pointer) - 1);
                end if;

                step <= '1';
            else

                -- push:    raise stack_pointer
                if push = '1' then
                    stack_pointer <= std_logic_vector(unsigned(stack_pointer) + 1);
                end if;

                -- pop:     read output
                if pop = '1' then
                    oo_out <= stack(to_integer(unsigned(stack_pointer)));
                end if;

                step <= '0';
            end if;
        end if;

--        if (falling_edge(rst_n)) then
--            stack <= (others => (others => '0'));
--            stack_pointer <= (others => '0');
--            step <= '0';
--        end if;
    end process;

    uio_oe  <=  (others => '0');
    uio_out <=  (others => '0');
    uo_out  <=  oo_out;
    push    <=  uio_in(0);
    pop     <=  uio_in(1);
    reset   <=  not rst_n;

end arch;
