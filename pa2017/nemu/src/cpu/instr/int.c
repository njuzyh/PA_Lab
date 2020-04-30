#include "cpu/instr.h"
#include "cpu/intr.h"

make_instr_func(int_)
{
	OPERAND r;
	r.type = OPR_IMM;
	r.addr = cpu.eip + 1;
    r.data_size = 8;
    operand_read(&r);
	uint8_t intr_no = r.val;
	raise_sw_intr(intr_no);
	return 0;
}
