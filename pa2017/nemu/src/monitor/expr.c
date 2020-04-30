#include "nemu.h"
#include "cpu/reg.h"
#include "memory/memory.h"

#include <stdlib.h>

/* We use the POSIX regex functions to process regular expressions.
 * Type 'man regex' for more information about POSIX regex functions.
 */
#include <sys/types.h>
#include <regex.h>
#include <cpu/cpu.h>
#include <elf.h>

uint32_t eval(uint32_t p, uint32_t q, bool *success);
bool check_parentheses(uint32_t p, uint32_t q, bool *success);
uint32_t look_up_symtab(char *sym, bool *success);

enum {
	NOTYPE = 256, EQ, NUM, HNUM, DEREF, REG, NEQ, AND, OR, NOT, NEG, VARI

	/* TODO: Add more token types */

};

static struct rule {
	char *regex;
	int token_type;
} rules[] = {

	/* TODO: Add more rules.
	 * Pay attention to the precedence level of different rules.
	 */

	{" +",	NOTYPE},				// white space
	{"\\+", '+'},
	{"-", '-'},
	{"0[xX][0-9a-fA-F]+", HNUM},
	{"[0-9]{1,10}", NUM},
	{"==", EQ},
	{"\\*", '*'},
	{"\\(", '('},
	{"\\)", ')'},
	{"/", '/'},
	{"\\$[a-zA-Z]+", REG},
	{"!=", NEQ},
	{"&&", AND},
	{"\\|\\|", OR},
	{"!", NOT},
	{"[a-zA-Z_][0-9a-zA-Z_]+", VARI}

};

#define NR_REGEX (sizeof(rules) / sizeof(rules[0]) )

static regex_t re[NR_REGEX];

/* Rules are used for more times.
 * Therefore we compile them only once before any usage.
 */
void init_regex() {
	int i;
	char error_msg[128];
	int ret;

	for(i = 0; i < NR_REGEX; i ++) {
		ret = regcomp(&re[i], rules[i].regex, REG_EXTENDED);
		if(ret != 0) {
			regerror(ret, &re[i], error_msg, 128);
			assert(ret != 0);
		}
	}
}

typedef struct token {
	int type;
	char str[32];
} Token;

Token tokens[32];
int nr_token;

static bool make_token(char *e) {
	int position = 0;
	int i;
	regmatch_t pmatch;
	
	nr_token = 0;

	while(e[position] != '\0') {
		/* Try all rules one by one. */
		for(i = 0; i < NR_REGEX; i ++) {
			if(regexec(&re[i], e + position, 1, &pmatch, 0) == 0 && pmatch.rm_so == 0) {
				char *substr_start = e + position;
				int substr_len = pmatch.rm_eo;

				printf("match regex[%d] at position %d with len %d: %.*s\n", i, position, substr_len, substr_len, substr_start);
				position += substr_len;

				/* TODO: Now a new token is recognized with rules[i]. 
				 * Add codes to perform some actions with this
				 */
                                

				switch(rules[i].token_type) {
					case NUM:
					case HNUM:
					case REG:
					case VARI:
					{
						tokens[nr_token].type = rules[i].token_type;
						strncpy(tokens[nr_token].str, substr_start, substr_len);
						tokens[nr_token].str[substr_len] = '\0';
						nr_token++;
						break;
					}
					default: tokens[nr_token].type = rules[i].token_type;
							 nr_token ++;
				}

				break;
			}
		}

		if(i == NR_REGEX) {
			printf("no match at position %d\n%s\n%*.s^\n", position, e, position, "");
			return false;
		}
	}

	return true; 
}

uint32_t expr(char *e, bool *success) {
	if(!make_token(e)) {
		*success = false;
		return 0;
	}
	/*
	printf("\nPlease implement expr at expr.c\n");
	assert(0);
	*/
	for(int i = 0; i < nr_token; i ++){ 
		if(tokens[i].type == '*' && (i == 0 || (tokens[i - 1].type != NUM && tokens[i - 1].type != HNUM && tokens[i - 1].type != REG && tokens[i - 1].type!= ')')))
			tokens[i].type = DEREF;
		if(tokens[i].type == '-' && (i == 0 || (tokens[i - 1].type != NUM && tokens[i - 1].type != HNUM && tokens[i - 1].type != REG && tokens[i - 1].type!= ')'))) 
			tokens[i].type = NEG;
	}
	*success = true;
	return eval(0, nr_token - 1, success);
}

bool check_parentheses(uint32_t p, uint32_t q, bool *success)
{
			*success = true;
		    	Token b[32];
		        uint32_t t = 0;
			uint32_t m = p;
			while(m <= q)
			{
				switch(tokens[m].type)
				{
					case '(':
					{
						b[t].type = '(';
						t++;
						break;
					}
					case ')':
					{
						if(b[t-1].type == '(')
							t--;
						else
						{
							b[t].type = ')';
							t++;
						}
						break;
					}																				        default:
						break;
				}
				m++;
			}
			if(t == 0)
			{
				if(tokens[p].type == '(' && tokens[q].type == ')')
				{
					int x = 0;
					Token c[32];
					for(m = p + 1; m < q; m++)
					{
							switch(tokens[m].type)
							{
								case '(':
								{
									c[x].type = '(';
									x++;
									break;
								}
								case ')':
								{
									if(c[x-1].type == '(')
										x--;
									else
									{
										c[x].type = ')';
										x++;
										break;
									}
								}																				        default:
									break;
							}
					}
					if(x == 0)
						return true;
					else	return false;
				}
				else	return false;
			}
			else 
			{
				*success = false;
				return false;
			}
}

uint32_t eval(uint32_t p, uint32_t q, bool *success) {
	if(p > q) {
		*success = false;
	       	return 0;	
	}
	else if(p == q) {
		/* Single token.
		 * * For now this token should be a number.
		 * * Return the value of the number.
		 * */
		uint32_t tmp;
		switch(tokens[p].type){
		case VARI: return look_up_symtab(tokens[p].str, success);
		case NUM: tmp = atoi(tokens[p].str); 
			  return tmp;
		case HNUM: sscanf(tokens[p].str, "%x", &tmp);       
			   return tmp;
		case REG: if(strcmp(tokens[p].str, "$eax"))
				 return cpu.eax;
			  if(strcmp(tokens[p].str, "$ebx"))
				 return cpu.ebx; 
			  if(strcmp(tokens[p].str, "$ecx"))
				 return cpu.ecx;
			  if(strcmp(tokens[p].str, "$esp"))
				 return cpu.esp; 
			  if(strcmp(tokens[p].str, "$ebp"))
				 return cpu.ebp;
			  if(strcmp(tokens[p].str, "$esi"))
				 return cpu.esi;
			  if(strcmp(tokens[p].str, "$edi"))
				 return cpu.edi;
			  if(strcmp(tokens[p].str, "$eip"))
				 return cpu.eip; 
		default: *success = false; return 0;
		}
	}
	else if(check_parentheses(p, q, success) == true && *success == true) {
		/* The expression is surrounded by a matched pair of parentheses.
		 * * If that is the case, just throw away the parentheses.
		 * */
		return eval(p + 1, q - 1, success);
	}
	else {
		/* We should do more things here. */
		/*op = the position of dominant operator in the token expression;*/
		if(*success == false)
			return 0;
		int op, t = 0, m = 0;
		int aim[32];
		Token a[32];
		int level[32];
		for(int i = p; i <= q; i++)
		{
			if(tokens[i].type == '(')
			{
				a[t].type = '(';
				t++;
			}
			if(tokens[i].type == ')')
			{
				if(a[t-1].type == '(')
					t--;
				else
				{
					a[t].type = ')';
					t++;
				}
			}
			if(tokens[i].type == '+' || tokens[i].type == '-' || tokens[i].type == '*' || tokens[i].type == '/'|| tokens[i].type == EQ || tokens[i].type == NEQ || tokens[i].type == AND || tokens[i].type == OR || tokens[i].type == NOT || tokens[i].type == DEREF || tokens[i].type == NEG)
			{
				if(t == 0)
				{
					switch(tokens[i].type)
					{
					case '+':
					case '-':
					{
						aim[m] = i;
						level[m] = 3;
						m++;
						break;
					}
					case '*':
					case '/':
					{
						aim[m] = i;
						level[m] = 4;
						m++;
						break;
					}
					case EQ:
					case NEQ:
					{
						aim[m] = i;
						level[m] = 2;
						m++;
						break;
					}
					case AND:
					{
						aim[m] = i;
						level[m] = 1;
						m++;
						break;
					}
					case OR:
					{
						aim[m] = i;
						level[m] = 0;
						m++;
						break;
					}
					case NOT:
					case DEREF:
					case NEG:
					{
						aim[m] = i;
						level[m] = 5;
						m++;
						break;
					}
					default: return 0;
					}
				}
			}	
		}
		int tmp = 0;
		for(int i = 0; i < m; i++)
		{
			if(level[tmp] >= level[i])
			{
				if(!(level[tmp] == level[i] && level[tmp] == 5))
					tmp = i;
			}
		}
		op = aim[tmp];
		if(op == p)
		{
			uint32_t val = eval(op + 1, q, success);	
			switch(tokens[op].type){
				case NOT: return ~val;
				case DEREF: return vaddr_read(val, 0, 4);
				case NEG: return -val;
				default: *success = false; return 0;
			}	  
		}
		else
		{
		uint32_t val1 = eval(p, op - 1, success);
		uint32_t val2 = eval(op + 1, q, success);
		switch(tokens[op].type) {
		case '+': return val1 + val2;
		case '-': return val1 - val2;
		case '*': return val1 * val2;
		case '/': return val1 / val2;
		case EQ:  return (val1 == val2);
		case NEQ: return (val1 != val2);
		case AND: return (val1 && val2);
		case OR:  return (val1 || val2);
		default: *success = false; return 0;
		}
		}
	}
}
