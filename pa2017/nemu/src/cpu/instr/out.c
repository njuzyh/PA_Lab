#include "cpu/instr.h"
#include "device/port_io.h"

make_instr_func(out_i2a_v)
{
	OPERAND imm;
	imm.type = OPR_IMM;
	imm.data_size = 8;
	imm.addr = eip + 1;
	operand_read(&imm);
	uint16_t port = imm.val; 
	if(data_size == 32)
	{
		pio_write(port, 4, cpu.eax);
	}
	else
	{
		pio_write(port, 2, cpu.gpr[0]._16);
	}
	return 2;
}

make_instr_func(out_i2a_b)
{
	OPERAND imm;
	imm.type = OPR_IMM;
	imm.data_size = 8;
	imm.addr = eip + 1;
	operand_read(&imm);
	uint16_t port = imm.val; 
	uint32_t al = cpu.gpr[0]._8[0];
	pio_write(port, 1, al);
	return 2;
}

make_instr_func(out_v)
{
	uint16_t port = cpu.gpr[2]._16;
	if(data_size == 32)
	{
		pio_write(port, 4, cpu.eax);
	}
	else
	{
		pio_write(port, 2, cpu.gpr[0]._16);
	}
	return 1;
}

make_instr_func(out_b)
{
	uint16_t port = cpu.gpr[2]._16;
	uint32_t al = cpu.gpr[0]._8[0];
	pio_write(port, 1, al);
	return 1;
}
