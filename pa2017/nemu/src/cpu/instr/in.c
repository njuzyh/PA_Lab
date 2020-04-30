#include "cpu/instr.h"
#include "device/port_io.h"

make_instr_func(in_i2a_v)
{
	OPERAND imm;
	imm.type = OPR_IMM;
	imm.data_size = 8;
	imm.addr = eip + 1;
	operand_read(&imm);
	uint16_t port = imm.val;
	if(data_size == 32)
	{
		uint32_t val = pio_read(port, 4);
		cpu.eax = val;
	}
	else
	{
		uint32_t val = pio_read(port, 2);
		cpu.gpr[0]._16 = val;
	}
	return 2;
}


make_instr_func(in_i2a_b)
{
	OPERAND imm;
	imm.type = OPR_IMM;
	imm.data_size = 8;
	imm.addr = eip + 1;
	operand_read(&imm);
	uint16_t port = imm.val;
	uint32_t val = pio_read(port, 1);
	cpu.gpr[0]._8[0] = val & 0x000000ff;
	return 2;
}

make_instr_func(in_v)
{
	uint16_t port = cpu.gpr[2]._16;
	if(data_size == 32)
	{
		uint32_t val = pio_read(port, 4);
		cpu.eax = val;
	}
	else
	{
		uint32_t val = pio_read(port, 2);
		cpu.gpr[0]._16 = val;
	}
	return 1;
}

make_instr_func(in_b)
{
	uint16_t port = cpu.gpr[2]._16;
	uint32_t val = pio_read(port, 1);
	cpu.gpr[0]._8[0] = val & 0x000000ff; 
	return 1;
}
