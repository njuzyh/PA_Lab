#include "cpu/cpu.h"

void set_CF_add(uint32_t result, uint32_t src) {
	cpu.eflags.CF = result < src;
}

void set_PF(uint32_t result) {
	// set according to the low-order 8-bits of the result
	uint32_t n = result;
	uint32_t a = 0, b = 0;
	for(int i = 0; i < 8; i++)
	{
	   a = n % 2;
	   if(a == 1)
	      b++;
	   n >>= 1;
	}
	cpu.eflags.PF = ((b%2)==0);
}

void set_ZF(uint32_t result) {
	cpu.eflags.ZF = (result == 0);
}

void set_SF(uint32_t result) {
	cpu.eflags.SF = sign(result);
}

void set_ZF_64(uint64_t result) {
	cpu.eflags.ZF = (result == 0);
}

void set_SF_64(uint64_t result) {
	cpu.eflags.SF = sign(result);
}

void set_PF_64(uint64_t result){	
	uint64_t n = result;
	uint64_t a = 0, b = 0;
	for(int i = 0; i < 8; i++)
	{
	   a = n % 2;
	   if(a == 1)
	      b++;
	   n >>= 1;
	}
	cpu.eflags.PF = ((b%2)==0);
}

void set_OF_add(uint32_t result, uint32_t src, uint32_t dest) {
	if(sign(src) == sign(dest)) {
		if(sign(src) != sign(result))
			cpu.eflags.OF = 1;
		else
			cpu.eflags.OF = 0;
	} else {
		cpu.eflags.OF = 0;
	}
}

void set_CF_adc(uint32_t result, uint32_t src){
	if(cpu.eflags.CF == 0)
		cpu.eflags.CF = result < src;
	else
		cpu.eflags.CF = (result < src) | (result == src);
}

void set_OF_adc(uint32_t result, uint32_t src, uint32_t dest){
	if(sign(src) == sign(dest)) {
		if(sign(src) != sign(result))
			cpu.eflags.OF = 1;
		else
			cpu.eflags.OF = 0;
	} else {
		cpu.eflags.OF = 0;
	}
}

void set_CF_sub(uint32_t src, uint32_t dest){
	cpu.eflags.CF = (dest < src);
}

void set_OF_sub(uint32_t result, uint32_t src, uint32_t dest) {
	if((sign(dest) != sign(src)) && (sign(result) == sign(src)))
		cpu.eflags.OF = 1;
	else cpu.eflags.OF = 0;
}

void set_CF_sbb(uint32_t src, uint32_t dest) {
	if(cpu.eflags.CF == 0)
	       cpu.eflags.CF = (dest < src);
	else cpu.eflags.CF = (dest <=  src);	
}

void set_OF_sbb(uint32_t result, uint32_t src, uint32_t dest) {
	src = src + cpu.eflags.CF;
	set_OF_sub(result, src, dest);
}

void set_CF_shl(uint32_t src, uint32_t dest, uint32_t data_size) {
	if(data_size == 32)
		cpu.eflags.CF = (dest >> (32 - src));
	else{
	        dest = dest << (32 -data_size + src - 1);
		cpu.eflags.CF = (dest >> 31);
	}
}


void set_CF_shr(uint32_t src, uint32_t dest, uint32_t data_size) {
	cpu.eflags.CF = (dest >> (src -1)) % 2;
}

void set_ZF_data_size(uint32_t res, uint32_t data_size){
	res = (res << (32 - data_size)) >> (32 - data_size);
	set_ZF(res);
}


void set_SF_data_size(uint32_t res, uint32_t data_size){
	res = (res << (32 - data_size));
	set_SF(res);
}

void set_CF_mul(uint64_t res, uint32_t data_size){
	if(data_size == 32){
		res = res >> 32;
		cpu.eflags.CF = (res != 0);	
	}
	else if(data_size == 16){
		res = res >> 16;
		cpu.eflags.CF = (res != 0);
	}
	else if(data_size == 8){	
		res = res >> 8;
		cpu.eflags.CF = (res != 0);
	}	
}

void set_OF_mul(uint64_t res, uint32_t data_size){			
	if(data_size == 32){
		res = res >> 32;
		cpu.eflags.OF = (res != 0);	
	}
	else if(data_size == 16){
		res = res >> 16;
		cpu.eflags.OF = (res != 0);
	}
	else if(data_size == 8){	
		res = res >> 8;
		cpu.eflags.OF = (res != 0);
	}	
}

uint32_t alu_add(uint32_t src, uint32_t dest) {
	/*
	printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
	assert(0);
	return 0;
	*/
	uint32_t res = 0;
        res = dest + src;
        set_CF_add(res, src);
        set_PF(res);
        // set_AF();
        set_ZF(res);
        set_SF(res);
        set_OF_add(res, src, dest);
	return res;
}

uint32_t alu_adc(uint32_t src, uint32_t dest) {
	/*
	printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
	assert(0);
	return 0;
	*/
	uint32_t res = 0;
	res = dest + src + cpu.eflags.CF;
	set_CF_adc(res, src);
	set_PF(res);
	// set_AF();
	set_ZF(res);
	set_SF(res);
	set_OF_adc(res, src, dest);
	return res;
}


uint32_t alu_sub(uint32_t src, uint32_t dest) {
	/*
	printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
	assert(0);
	return 0;
	*/
	uint32_t res = 0;
	res = dest - src;
	set_CF_sub(src, dest);
	set_PF(res);
	// set_AF();
	set_ZF(res);
	set_SF(res);
	set_OF_sub(res, src, dest);
	return res;
}

uint32_t alu_sbb(uint32_t src, uint32_t dest) {
	/*
	printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
	assert(0);
	return 0;
	*/
	uint32_t res = 0;
	res = dest - src - cpu.eflags.CF;
	set_CF_sbb(src, dest);
	set_PF(res);
	// set_AF();
	set_ZF(res);
	set_SF(res);
	set_OF_sbb(res, src, dest);
	return res;
}

uint64_t alu_mul(uint32_t src, uint32_t dest, size_t data_size) {
	/*
	printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
	assert(0);
	return 0;
	*/
	uint64_t res = 0;
	res = (uint64_t) dest * (uint64_t)src;
	set_CF_mul(res, data_size);
	set_PF(res);
	// set_AF();
	set_ZF(res);
	set_SF(res);
	set_OF_mul(res, data_size);
	return res;
}

int64_t alu_imul(int32_t src, int32_t dest, size_t data_size) {
	/*
	printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
	assert(0);
	return 0;
	*/
	int64_t res = 0;
	res = (int64_t) dest * (int64_t) src;
	return res;
}

uint32_t alu_div(uint64_t src, uint64_t dest, size_t data_size) {
	/*
	printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
	assert(0);
	return 0;
	*/
	uint32_t res = 0;
	if(src != 0){
		res = (uint32_t) (dest / src);
	}
	else {
		printf("error!");
		return 0;
	}
	return res;
}

int32_t alu_idiv(int64_t src, int64_t dest, size_t data_size) {
	/*
	printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
	assert(0);
	return 0;
	*/
	int32_t res = 0; 
	if(src != 0){
		res = (int32_t) (dest / src);
	}
	else {
		printf("error!");
		return 0;
	}
	return res;
}

uint32_t alu_mod(uint64_t src, uint64_t dest) {
	/*
	printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
	assert(0);
	return 0;
	*/
	uint32_t res = 0;
	res = (uint32_t) (dest % src);
	return res;
}

int32_t alu_imod(int64_t src, int64_t dest) {
	/*
	printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
	assert(0);
	return 0;
	*/
	int32_t res = 0;
	res = (int32_t) (dest % src);
	return res;
}

uint32_t alu_and(uint32_t src, uint32_t dest) {
	/*
	printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
	assert(0);
	return 0;
	*/
	uint32_t res = 0;
	res = dest & src;
	cpu.eflags.CF = 0;
	set_PF(res);
	// set_AF();
	set_ZF(res);
	set_SF(res);
	cpu.eflags.OF = 0;
	return res;
}

uint32_t alu_xor(uint32_t src, uint32_t dest) {
	/*
	printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
	assert(0);
	return 0;
	*/
	uint32_t res = 0;
	res = dest ^ src;
	cpu.eflags.CF = 0;
	set_PF(res);
	// set_AF();
	set_ZF(res);
	set_SF(res);
	cpu.eflags.OF = 0;
	return res;
}

uint32_t alu_or(uint32_t src, uint32_t dest) {
	/*
	printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
	assert(0);
	return 0;
	*/	
	uint32_t res = 0;
	res = dest | src;
	cpu.eflags.CF = 0;
	set_PF(res);
	// set_AF();
	set_ZF(res);
	set_SF(res);
	cpu.eflags.OF = 0;
	return res;
}

uint32_t alu_shl(uint32_t src, uint32_t dest, size_t data_size) {
	/*
	printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
	assert(0);
	return 0;
	*/
	uint32_t res = 0;
	if(data_size == 32)
		res = dest << src;
	else{
		uint32_t tmp1 = dest;
		uint32_t tmp2;
		tmp1 = (dest >> data_size) << data_size;
		tmp2 = dest << src;
		tmp2 = (tmp2 << (32 - data_size)) >> (32 - data_size);
		res = tmp1 + tmp2;
	}       	
	set_CF_shl(src, dest, data_size);
	set_PF(res);
	// set_AF();
	set_ZF_data_size(res, data_size);
	set_SF_data_size(res, data_size);
	return res;
}

uint32_t alu_shr(uint32_t src, uint32_t dest, size_t data_size) {
	/*
	printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
	assert(0);
	*/	
	uint32_t res = 0;
	if(data_size == 32)
		res = dest >> src;
	else{
		uint32_t tmp1 = dest;
		uint32_t tmp2;
		tmp1 = (dest >> data_size) << data_size;
		tmp2 = (dest << (32 - data_size)) >> (32 - data_size);
		tmp2 = tmp2 >> src;
		res = tmp1 + tmp2;
	}       	
	set_CF_shr(src, dest, data_size);
	set_PF(res);
	// set_AF();
	set_ZF_data_size(res, data_size);
	set_SF_data_size(res, data_size);
	return res;
}

uint32_t alu_sar(uint32_t src, uint32_t dest, size_t data_size) {
	/*
	printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
	assert(0);
	return 0;
	*/
	uint32_t res = 0;
	res = (int32_t)dest >> src;
	if(data_size == 32)
		res = (int32_t)dest >> src;
	else if(data_size == 8){
		uint32_t tmp1;
		uint32_t tmp2;
		tmp1 = (dest >> data_size) << data_size;
		tmp2 = dest << (32 - data_size); 
		tmp2 = tmp2 >> (32 - data_size);
		uint8_t tmp3 = tmp2;
		tmp3 = (int8_t)tmp3 >> src;
		res = tmp1 + tmp3;
	}
	else if(data_size == 16){
		uint32_t tmp1;
		uint32_t tmp2;
		tmp1 = (dest >> data_size) << data_size;
		tmp2 = dest << (32 - data_size); 
		tmp2 = tmp2 >> (32 - data_size);
		uint16_t tmp3 = tmp2;
		tmp3 = (int16_t) tmp3 >> src;
		res = tmp1 + tmp3;
	}
	set_CF_shr(src, dest, data_size);
	set_PF(res);
	// set_AF();
	set_ZF_data_size(res, data_size);
	set_SF_data_size(res, data_size);
	return res;
}

uint32_t alu_sal(uint32_t src, uint32_t dest, size_t data_size) {
	/*
	printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
	assert(0);
	return 0;
	*/
	uint32_t res = 0;
	if(data_size == 32)
		res = dest << src;
	else{
		uint32_t tmp1 = dest;
		uint32_t tmp2;
		tmp1 = (dest >> data_size) << data_size;
		tmp2 = dest << src;
		tmp2 = (tmp2 << (32 - data_size)) >> (32 - data_size);
		res = tmp1 + tmp2;
	}       	
	set_CF_shl(src, dest, data_size);
	set_PF(res);
	// set_AF();
	set_ZF_data_size(res, data_size);
	set_SF_data_size(res, data_size);
	return res;
}
