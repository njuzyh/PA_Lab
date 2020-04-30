
kernel:     file format elf32-i386


Disassembly of section .text:

c0030000 <start>:
c0030000:	fa                   	cli    
c0030001:	0f 01 15 4c 00 03 00 	lgdtl  0x3004c
c0030008:	0f 20 c0             	mov    %cr0,%eax
c003000b:	83 c8 01             	or     $0x1,%eax
c003000e:	0f 22 c0             	mov    %eax,%cr0
c0030011:	ea 18 00 03 00 08 00 	ljmp   $0x8,$0x30018

c0030018 <start_cond>:
c0030018:	66 b8 10 00          	mov    $0x10,%ax
c003001c:	8e d8                	mov    %eax,%ds
c003001e:	8e c0                	mov    %eax,%es
c0030020:	8e d0                	mov    %eax,%ss
c0030022:	bd 00 00 00 00       	mov    $0x0,%ebp
c0030027:	bc 00 00 00 08       	mov    $0x8000000,%esp
c003002c:	83 ec 10             	sub    $0x10,%esp
c003002f:	e9 20 08 00 00       	jmp    c0030854 <init>

c0030034 <gdt>:
	...
c003003c:	ff                   	(bad)  
c003003d:	ff 00                	incl   (%eax)
c003003f:	00 00                	add    %al,(%eax)
c0030041:	9a cf 00 ff ff 00 00 	lcall  $0x0,$0xffff00cf
c0030048:	00                   	.byte 0x0
c0030049:	92                   	xchg   %eax,%edx
c003004a:	cf                   	iret   
	...

c003004c <gdtdesc>:
c003004c:	17                   	pop    %ss
c003004d:	00 34 00             	add    %dh,(%eax,%eax,1)
c0030050:	03 00                	add    (%eax),%eax

c0030052 <vec0>:
c0030052:	6a 00                	push   $0x0
c0030054:	6a 00                	push   $0x0
c0030056:	eb 72                	jmp    c00300ca <asm_do_irq>

c0030058 <vec1>:
c0030058:	6a 00                	push   $0x0
c003005a:	6a 01                	push   $0x1
c003005c:	eb 6c                	jmp    c00300ca <asm_do_irq>

c003005e <vec2>:
c003005e:	6a 00                	push   $0x0
c0030060:	6a 02                	push   $0x2
c0030062:	eb 66                	jmp    c00300ca <asm_do_irq>

c0030064 <vec3>:
c0030064:	6a 00                	push   $0x0
c0030066:	6a 03                	push   $0x3
c0030068:	eb 60                	jmp    c00300ca <asm_do_irq>

c003006a <vec4>:
c003006a:	6a 00                	push   $0x0
c003006c:	6a 04                	push   $0x4
c003006e:	eb 5a                	jmp    c00300ca <asm_do_irq>

c0030070 <vec5>:
c0030070:	6a 00                	push   $0x0
c0030072:	6a 05                	push   $0x5
c0030074:	eb 54                	jmp    c00300ca <asm_do_irq>

c0030076 <vec6>:
c0030076:	6a 00                	push   $0x0
c0030078:	6a 06                	push   $0x6
c003007a:	eb 4e                	jmp    c00300ca <asm_do_irq>

c003007c <vec7>:
c003007c:	6a 00                	push   $0x0
c003007e:	6a 07                	push   $0x7
c0030080:	eb 48                	jmp    c00300ca <asm_do_irq>

c0030082 <vec8>:
c0030082:	6a 08                	push   $0x8
c0030084:	eb 44                	jmp    c00300ca <asm_do_irq>

c0030086 <vec9>:
c0030086:	6a 00                	push   $0x0
c0030088:	6a 09                	push   $0x9
c003008a:	eb 3e                	jmp    c00300ca <asm_do_irq>

c003008c <vec10>:
c003008c:	6a 0a                	push   $0xa
c003008e:	eb 3a                	jmp    c00300ca <asm_do_irq>

c0030090 <vec11>:
c0030090:	6a 0b                	push   $0xb
c0030092:	eb 36                	jmp    c00300ca <asm_do_irq>

c0030094 <vec12>:
c0030094:	6a 0c                	push   $0xc
c0030096:	eb 32                	jmp    c00300ca <asm_do_irq>

c0030098 <vec13>:
c0030098:	6a 0d                	push   $0xd
c003009a:	eb 2e                	jmp    c00300ca <asm_do_irq>

c003009c <vec14>:
c003009c:	6a 0e                	push   $0xe
c003009e:	eb 2a                	jmp    c00300ca <asm_do_irq>

c00300a0 <vecsys>:
c00300a0:	6a 00                	push   $0x0
c00300a2:	68 80 00 00 00       	push   $0x80
c00300a7:	eb 21                	jmp    c00300ca <asm_do_irq>

c00300a9 <irq0>:
c00300a9:	6a 00                	push   $0x0
c00300ab:	68 e8 03 00 00       	push   $0x3e8
c00300b0:	eb 18                	jmp    c00300ca <asm_do_irq>

c00300b2 <irq1>:
c00300b2:	6a 00                	push   $0x0
c00300b4:	68 e9 03 00 00       	push   $0x3e9
c00300b9:	eb 0f                	jmp    c00300ca <asm_do_irq>

c00300bb <irq14>:
c00300bb:	6a 00                	push   $0x0
c00300bd:	68 f6 03 00 00       	push   $0x3f6
c00300c2:	eb 06                	jmp    c00300ca <asm_do_irq>

c00300c4 <irq_empty>:
c00300c4:	6a 00                	push   $0x0
c00300c6:	6a ff                	push   $0xffffffff
c00300c8:	eb 00                	jmp    c00300ca <asm_do_irq>

c00300ca <asm_do_irq>:
c00300ca:	60                   	pusha  
c00300cb:	54                   	push   %esp
c00300cc:	e8 ef 15 00 00       	call   c00316c0 <irq_handle>
c00300d1:	83 c4 04             	add    $0x4,%esp
c00300d4:	61                   	popa   
c00300d5:	83 c4 08             	add    $0x8,%esp
c00300d8:	cf                   	iret   

c00300d9 <fs_open>:
c00300d9:	55                   	push   %ebp
c00300da:	89 e5                	mov    %esp,%ebp
c00300dc:	53                   	push   %ebx
c00300dd:	83 ec 14             	sub    $0x14,%esp
c00300e0:	e8 59 03 00 00       	call   c003043e <__x86.get_pc_thunk.bx>
c00300e5:	81 c3 1b bf 00 00    	add    $0xbf1b,%ebx
c00300eb:	c7 45 f4 03 00 00 00 	movl   $0x3,-0xc(%ebp)
c00300f2:	eb 52                	jmp    c0030146 <fs_open+0x6d>
c00300f4:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00300f7:	8d 48 fd             	lea    -0x3(%eax),%ecx
c00300fa:	8d 93 c0 fe ff ff    	lea    -0x140(%ebx),%edx
c0030100:	89 c8                	mov    %ecx,%eax
c0030102:	01 c0                	add    %eax,%eax
c0030104:	01 c8                	add    %ecx,%eax
c0030106:	c1 e0 02             	shl    $0x2,%eax
c0030109:	01 d0                	add    %edx,%eax
c003010b:	8b 00                	mov    (%eax),%eax
c003010d:	83 ec 08             	sub    $0x8,%esp
c0030110:	ff 75 08             	pushl  0x8(%ebp)
c0030113:	50                   	push   %eax
c0030114:	e8 57 1f 00 00       	call   c0032070 <strcmp>
c0030119:	83 c4 10             	add    $0x10,%esp
c003011c:	85 c0                	test   %eax,%eax
c003011e:	75 23                	jne    c0030143 <fs_open+0x6a>
c0030120:	c7 c0 60 f0 06 c0    	mov    $0xc006f060,%eax
c0030126:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0030129:	c6 04 d0 01          	movb   $0x1,(%eax,%edx,8)
c003012d:	c7 c0 60 f0 06 c0    	mov    $0xc006f060,%eax
c0030133:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0030136:	c7 44 d0 04 00 00 00 	movl   $0x0,0x4(%eax,%edx,8)
c003013d:	00 
c003013e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030141:	eb 3d                	jmp    c0030180 <fs_open+0xa7>
c0030143:	ff 45 f4             	incl   -0xc(%ebp)
c0030146:	83 7d f4 1b          	cmpl   $0x1b,-0xc(%ebp)
c003014a:	76 a8                	jbe    c00300f4 <fs_open+0x1b>
c003014c:	83 ec 0c             	sub    $0xc,%esp
c003014f:	8d 83 23 c9 ff ff    	lea    -0x36dd(%ebx),%eax
c0030155:	50                   	push   %eax
c0030156:	8d 83 90 c9 ff ff    	lea    -0x3670(%ebx),%eax
c003015c:	50                   	push   %eax
c003015d:	6a 38                	push   $0x38
c003015f:	8d 83 25 c9 ff ff    	lea    -0x36db(%ebx),%eax
c0030165:	50                   	push   %eax
c0030166:	8d 83 34 c9 ff ff    	lea    -0x36cc(%ebx),%eax
c003016c:	50                   	push   %eax
c003016d:	e8 e4 1a 00 00       	call   c0031c56 <printk>
c0030172:	83 c4 20             	add    $0x20,%esp
c0030175:	b8 01 00 00 00       	mov    $0x1,%eax
c003017a:	82 b8 ff ff ff ff 8b 	cmpb   $0x8b,-0x1(%eax)
c0030181:	5d                   	pop    %ebp
c0030182:	fc                   	cld    
c0030183:	c9                   	leave  
c0030184:	c3                   	ret    

c0030185 <fs_read>:
c0030185:	55                   	push   %ebp
c0030186:	89 e5                	mov    %esp,%ebp
c0030188:	53                   	push   %ebx
c0030189:	83 ec 14             	sub    $0x14,%esp
c003018c:	e8 ad 02 00 00       	call   c003043e <__x86.get_pc_thunk.bx>
c0030191:	81 c3 6f be 00 00    	add    $0xbe6f,%ebx
c0030197:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
c003019b:	7f 2f                	jg     c00301cc <fs_read+0x47>
c003019d:	83 ec 0c             	sub    $0xc,%esp
c00301a0:	8d 83 7e c9 ff ff    	lea    -0x3682(%ebx),%eax
c00301a6:	50                   	push   %eax
c00301a7:	8d 83 98 c9 ff ff    	lea    -0x3668(%ebx),%eax
c00301ad:	50                   	push   %eax
c00301ae:	6a 3d                	push   $0x3d
c00301b0:	8d 83 25 c9 ff ff    	lea    -0x36db(%ebx),%eax
c00301b6:	50                   	push   %eax
c00301b7:	8d 83 34 c9 ff ff    	lea    -0x36cc(%ebx),%eax
c00301bd:	50                   	push   %eax
c00301be:	e8 93 1a 00 00       	call   c0031c56 <printk>
c00301c3:	83 c4 20             	add    $0x20,%esp
c00301c6:	b8 01 00 00 00       	mov    $0x1,%eax
c00301cb:	82 8b 45 08 8d 48 fd 	orb    $0xfd,0x488d0845(%ebx)
c00301d2:	8d 93 c4 fe ff ff    	lea    -0x13c(%ebx),%edx
c00301d8:	89 c8                	mov    %ecx,%eax
c00301da:	01 c0                	add    %eax,%eax
c00301dc:	01 c8                	add    %ecx,%eax
c00301de:	c1 e0 02             	shl    $0x2,%eax
c00301e1:	01 d0                	add    %edx,%eax
c00301e3:	8b 00                	mov    (%eax),%eax
c00301e5:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00301e8:	8b 45 08             	mov    0x8(%ebp),%eax
c00301eb:	8d 48 fd             	lea    -0x3(%eax),%ecx
c00301ee:	8d 93 c8 fe ff ff    	lea    -0x138(%ebx),%edx
c00301f4:	89 c8                	mov    %ecx,%eax
c00301f6:	01 c0                	add    %eax,%eax
c00301f8:	01 c8                	add    %ecx,%eax
c00301fa:	c1 e0 02             	shl    $0x2,%eax
c00301fd:	01 d0                	add    %edx,%eax
c00301ff:	8b 08                	mov    (%eax),%ecx
c0030201:	c7 c0 60 f0 06 c0    	mov    $0xc006f060,%eax
c0030207:	8b 55 08             	mov    0x8(%ebp),%edx
c003020a:	8b 44 d0 04          	mov    0x4(%eax,%edx,8),%eax
c003020e:	01 c8                	add    %ecx,%eax
c0030210:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0030213:	c7 c0 60 f0 06 c0    	mov    $0xc006f060,%eax
c0030219:	8b 55 08             	mov    0x8(%ebp),%edx
c003021c:	8b 54 d0 04          	mov    0x4(%eax,%edx,8),%edx
c0030220:	8b 45 10             	mov    0x10(%ebp),%eax
c0030223:	01 c2                	add    %eax,%edx
c0030225:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030228:	48                   	dec    %eax
c0030229:	39 c2                	cmp    %eax,%edx
c003022b:	77 3a                	ja     c0030267 <fs_read+0xe2>
c003022d:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0030230:	83 ec 04             	sub    $0x4,%esp
c0030233:	ff 75 10             	pushl  0x10(%ebp)
c0030236:	50                   	push   %eax
c0030237:	ff 75 0c             	pushl  0xc(%ebp)
c003023a:	e8 cf 0b 00 00       	call   c0030e0e <ide_read>
c003023f:	83 c4 10             	add    $0x10,%esp
c0030242:	c7 c0 60 f0 06 c0    	mov    $0xc006f060,%eax
c0030248:	8b 55 08             	mov    0x8(%ebp),%edx
c003024b:	8b 54 d0 04          	mov    0x4(%eax,%edx,8),%edx
c003024f:	8b 45 10             	mov    0x10(%ebp),%eax
c0030252:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
c0030255:	c7 c0 60 f0 06 c0    	mov    $0xc006f060,%eax
c003025b:	8b 55 08             	mov    0x8(%ebp),%edx
c003025e:	89 4c d0 04          	mov    %ecx,0x4(%eax,%edx,8)
c0030262:	8b 45 10             	mov    0x10(%ebp),%eax
c0030265:	eb 3f                	jmp    c00302a6 <fs_read+0x121>
c0030267:	8b 4d f4             	mov    -0xc(%ebp),%ecx
c003026a:	c7 c0 60 f0 06 c0    	mov    $0xc006f060,%eax
c0030270:	8b 55 08             	mov    0x8(%ebp),%edx
c0030273:	8b 44 d0 04          	mov    0x4(%eax,%edx,8),%eax
c0030277:	29 c1                	sub    %eax,%ecx
c0030279:	89 c8                	mov    %ecx,%eax
c003027b:	8d 50 ff             	lea    -0x1(%eax),%edx
c003027e:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0030281:	83 ec 04             	sub    $0x4,%esp
c0030284:	52                   	push   %edx
c0030285:	50                   	push   %eax
c0030286:	ff 75 0c             	pushl  0xc(%ebp)
c0030289:	e8 80 0b 00 00       	call   c0030e0e <ide_read>
c003028e:	83 c4 10             	add    $0x10,%esp
c0030291:	8b 4d f4             	mov    -0xc(%ebp),%ecx
c0030294:	c7 c0 60 f0 06 c0    	mov    $0xc006f060,%eax
c003029a:	8b 55 08             	mov    0x8(%ebp),%edx
c003029d:	89 4c d0 04          	mov    %ecx,0x4(%eax,%edx,8)
c00302a1:	b8 00 00 00 00       	mov    $0x0,%eax
c00302a6:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00302a9:	c9                   	leave  
c00302aa:	c3                   	ret    

c00302ab <fs_write>:
c00302ab:	55                   	push   %ebp
c00302ac:	89 e5                	mov    %esp,%ebp
c00302ae:	53                   	push   %ebx
c00302af:	83 ec 14             	sub    $0x14,%esp
c00302b2:	e8 87 01 00 00       	call   c003043e <__x86.get_pc_thunk.bx>
c00302b7:	81 c3 49 bd 00 00    	add    $0xbd49,%ebx
c00302bd:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
c00302c1:	7e 2f                	jle    c00302f2 <fs_write+0x47>
c00302c3:	83 ec 0c             	sub    $0xc,%esp
c00302c6:	8d 83 85 c9 ff ff    	lea    -0x367b(%ebx),%eax
c00302cc:	50                   	push   %eax
c00302cd:	8d 83 a0 c9 ff ff    	lea    -0x3660(%ebx),%eax
c00302d3:	50                   	push   %eax
c00302d4:	6a 61                	push   $0x61
c00302d6:	8d 83 25 c9 ff ff    	lea    -0x36db(%ebx),%eax
c00302dc:	50                   	push   %eax
c00302dd:	8d 83 34 c9 ff ff    	lea    -0x36cc(%ebx),%eax
c00302e3:	50                   	push   %eax
c00302e4:	e8 6d 19 00 00       	call   c0031c56 <printk>
c00302e9:	83 c4 20             	add    $0x20,%esp
c00302ec:	b8 01 00 00 00       	mov    $0x1,%eax
c00302f1:	82 c7 45             	add    $0x45,%bh
c00302f4:	f4                   	hlt    
c00302f5:	00 00                	add    %al,(%eax)
c00302f7:	00 00                	add    %al,(%eax)
c00302f9:	eb 1c                	jmp    c0030317 <fs_write+0x6c>
c00302fb:	8b 55 f4             	mov    -0xc(%ebp),%edx
c00302fe:	8b 45 0c             	mov    0xc(%ebp),%eax
c0030301:	01 d0                	add    %edx,%eax
c0030303:	8a 00                	mov    (%eax),%al
c0030305:	0f be c0             	movsbl %al,%eax
c0030308:	83 ec 0c             	sub    $0xc,%esp
c003030b:	50                   	push   %eax
c003030c:	e8 0e 19 00 00       	call   c0031c1f <serial_printc>
c0030311:	83 c4 10             	add    $0x10,%esp
c0030314:	ff 45 f4             	incl   -0xc(%ebp)
c0030317:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003031a:	3b 45 10             	cmp    0x10(%ebp),%eax
c003031d:	72 dc                	jb     c00302fb <fs_write+0x50>
c003031f:	8b 45 10             	mov    0x10(%ebp),%eax
c0030322:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030325:	c9                   	leave  
c0030326:	c3                   	ret    

c0030327 <fs_lseek>:
c0030327:	55                   	push   %ebp
c0030328:	89 e5                	mov    %esp,%ebp
c003032a:	53                   	push   %ebx
c003032b:	83 ec 04             	sub    $0x4,%esp
c003032e:	e8 0b 01 00 00       	call   c003043e <__x86.get_pc_thunk.bx>
c0030333:	81 c3 cd bc 00 00    	add    $0xbccd,%ebx
c0030339:	8b 45 10             	mov    0x10(%ebp),%eax
c003033c:	83 f8 01             	cmp    $0x1,%eax
c003033f:	74 1e                	je     c003035f <fs_lseek+0x38>
c0030341:	83 f8 02             	cmp    $0x2,%eax
c0030344:	74 3b                	je     c0030381 <fs_lseek+0x5a>
c0030346:	85 c0                	test   %eax,%eax
c0030348:	75 65                	jne    c00303af <fs_lseek+0x88>
c003034a:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c003034d:	c7 c0 60 f0 06 c0    	mov    $0xc006f060,%eax
c0030353:	8b 55 08             	mov    0x8(%ebp),%edx
c0030356:	89 4c d0 04          	mov    %ecx,0x4(%eax,%edx,8)
c003035a:	e9 80 00 00 00       	jmp    c00303df <fs_lseek+0xb8>
c003035f:	c7 c0 60 f0 06 c0    	mov    $0xc006f060,%eax
c0030365:	8b 55 08             	mov    0x8(%ebp),%edx
c0030368:	8b 54 d0 04          	mov    0x4(%eax,%edx,8),%edx
c003036c:	8b 45 0c             	mov    0xc(%ebp),%eax
c003036f:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
c0030372:	c7 c0 60 f0 06 c0    	mov    $0xc006f060,%eax
c0030378:	8b 55 08             	mov    0x8(%ebp),%edx
c003037b:	89 4c d0 04          	mov    %ecx,0x4(%eax,%edx,8)
c003037f:	eb 5e                	jmp    c00303df <fs_lseek+0xb8>
c0030381:	8b 45 08             	mov    0x8(%ebp),%eax
c0030384:	8d 48 fd             	lea    -0x3(%eax),%ecx
c0030387:	8d 93 c4 fe ff ff    	lea    -0x13c(%ebx),%edx
c003038d:	89 c8                	mov    %ecx,%eax
c003038f:	01 c0                	add    %eax,%eax
c0030391:	01 c8                	add    %ecx,%eax
c0030393:	c1 e0 02             	shl    $0x2,%eax
c0030396:	01 d0                	add    %edx,%eax
c0030398:	8b 10                	mov    (%eax),%edx
c003039a:	8b 45 0c             	mov    0xc(%ebp),%eax
c003039d:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
c00303a0:	c7 c0 60 f0 06 c0    	mov    $0xc006f060,%eax
c00303a6:	8b 55 08             	mov    0x8(%ebp),%edx
c00303a9:	89 4c d0 04          	mov    %ecx,0x4(%eax,%edx,8)
c00303ad:	eb 30                	jmp    c00303df <fs_lseek+0xb8>
c00303af:	83 ec 0c             	sub    $0xc,%esp
c00303b2:	8d 83 23 c9 ff ff    	lea    -0x36dd(%ebx),%eax
c00303b8:	50                   	push   %eax
c00303b9:	8d 83 ac c9 ff ff    	lea    -0x3654(%ebx),%eax
c00303bf:	50                   	push   %eax
c00303c0:	6a 78                	push   $0x78
c00303c2:	8d 83 25 c9 ff ff    	lea    -0x36db(%ebx),%eax
c00303c8:	50                   	push   %eax
c00303c9:	8d 83 34 c9 ff ff    	lea    -0x36cc(%ebx),%eax
c00303cf:	50                   	push   %eax
c00303d0:	e8 81 18 00 00       	call   c0031c56 <printk>
c00303d5:	83 c4 20             	add    $0x20,%esp
c00303d8:	b8 01 00 00 00       	mov    $0x1,%eax
c00303dd:	82 90 c7 c0 60 f0 06 	adcb   $0x6,-0xf9f3f39(%eax)
c00303e4:	c0 8b 55 08 8b 44 d0 	rorb   $0xd0,0x448b0855(%ebx)
c00303eb:	04 8b                	add    $0x8b,%al
c00303ed:	5d                   	pop    %ebp
c00303ee:	fc                   	cld    
c00303ef:	c9                   	leave  
c00303f0:	c3                   	ret    

c00303f1 <fs_close>:
c00303f1:	55                   	push   %ebp
c00303f2:	89 e5                	mov    %esp,%ebp
c00303f4:	e8 41 00 00 00       	call   c003043a <__x86.get_pc_thunk.ax>
c00303f9:	05 07 bc 00 00       	add    $0xbc07,%eax
c00303fe:	c7 c2 60 f0 06 c0    	mov    $0xc006f060,%edx
c0030404:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0030407:	8a 14 ca             	mov    (%edx,%ecx,8),%dl
c003040a:	84 d2                	test   %dl,%dl
c003040c:	74 25                	je     c0030433 <fs_close+0x42>
c003040e:	c7 c2 60 f0 06 c0    	mov    $0xc006f060,%edx
c0030414:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0030417:	c6 04 ca 00          	movb   $0x0,(%edx,%ecx,8)
c003041b:	c7 c0 60 f0 06 c0    	mov    $0xc006f060,%eax
c0030421:	8b 55 08             	mov    0x8(%ebp),%edx
c0030424:	c7 44 d0 04 00 00 00 	movl   $0x0,0x4(%eax,%edx,8)
c003042b:	00 
c003042c:	b8 00 00 00 00       	mov    $0x0,%eax
c0030431:	eb 05                	jmp    c0030438 <fs_close+0x47>
c0030433:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0030438:	5d                   	pop    %ebp
c0030439:	c3                   	ret    

c003043a <__x86.get_pc_thunk.ax>:
c003043a:	8b 04 24             	mov    (%esp),%eax
c003043d:	c3                   	ret    

c003043e <__x86.get_pc_thunk.bx>:
c003043e:	8b 1c 24             	mov    (%esp),%ebx
c0030441:	c3                   	ret    

c0030442 <write_cr3>:
c0030442:	55                   	push   %ebp
c0030443:	89 e5                	mov    %esp,%ebp
c0030445:	e8 f0 ff ff ff       	call   c003043a <__x86.get_pc_thunk.ax>
c003044a:	05 b6 bb 00 00       	add    $0xbbb6,%eax
c003044f:	8b 45 08             	mov    0x8(%ebp),%eax
c0030452:	0f 22 d8             	mov    %eax,%cr3
c0030455:	90                   	nop
c0030456:	5d                   	pop    %ebp
c0030457:	c3                   	ret    

c0030458 <loader>:
c0030458:	55                   	push   %ebp
c0030459:	89 e5                	mov    %esp,%ebp
c003045b:	53                   	push   %ebx
c003045c:	81 ec 24 10 00 00    	sub    $0x1024,%esp
c0030462:	e8 d7 ff ff ff       	call   c003043e <__x86.get_pc_thunk.bx>
c0030467:	81 c3 99 bb 00 00    	add    $0xbb99,%ebx
c003046d:	83 ec 04             	sub    $0x4,%esp
c0030470:	68 00 10 00 00       	push   $0x1000
c0030475:	6a 00                	push   $0x0
c0030477:	8d 85 e4 ef ff ff    	lea    -0x101c(%ebp),%eax
c003047d:	50                   	push   %eax
c003047e:	e8 8b 09 00 00       	call   c0030e0e <ide_read>
c0030483:	83 c4 10             	add    $0x10,%esp
c0030486:	8d 85 e4 ef ff ff    	lea    -0x101c(%ebp),%eax
c003048c:	89 45 f0             	mov    %eax,-0x10(%ebp)
c003048f:	8d 83 04 ca ff ff    	lea    -0x35fc(%ebx),%eax
c0030495:	50                   	push   %eax
c0030496:	6a 19                	push   $0x19
c0030498:	8d 83 b8 c9 ff ff    	lea    -0x3648(%ebx),%eax
c003049e:	50                   	push   %eax
c003049f:	8d 83 c8 c9 ff ff    	lea    -0x3638(%ebx),%eax
c00304a5:	50                   	push   %eax
c00304a6:	e8 ab 17 00 00       	call   c0031c56 <printk>
c00304ab:	83 c4 10             	add    $0x10,%esp
c00304ae:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00304b1:	8b 50 1c             	mov    0x1c(%eax),%edx
c00304b4:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00304b7:	01 d0                	add    %edx,%eax
c00304b9:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00304bc:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00304bf:	8b 40 2c             	mov    0x2c(%eax),%eax
c00304c2:	0f b7 c0             	movzwl %ax,%eax
c00304c5:	c1 e0 05             	shl    $0x5,%eax
c00304c8:	89 c2                	mov    %eax,%edx
c00304ca:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00304cd:	01 d0                	add    %edx,%eax
c00304cf:	89 45 ec             	mov    %eax,-0x14(%ebp)
c00304d2:	e9 9f 00 00 00       	jmp    c0030576 <loader+0x11e>
c00304d7:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00304da:	8b 00                	mov    (%eax),%eax
c00304dc:	83 f8 01             	cmp    $0x1,%eax
c00304df:	0f 85 8d 00 00 00    	jne    c0030572 <loader+0x11a>
c00304e5:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00304e8:	8b 40 14             	mov    0x14(%eax),%eax
c00304eb:	89 c2                	mov    %eax,%edx
c00304ed:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00304f0:	8b 40 08             	mov    0x8(%eax),%eax
c00304f3:	83 ec 08             	sub    $0x8,%esp
c00304f6:	52                   	push   %edx
c00304f7:	50                   	push   %eax
c00304f8:	e8 03 18 00 00       	call   c0031d00 <mm_malloc>
c00304fd:	83 c4 10             	add    $0x10,%esp
c0030500:	89 45 e8             	mov    %eax,-0x18(%ebp)
c0030503:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030506:	8b 48 10             	mov    0x10(%eax),%ecx
c0030509:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003050c:	8b 50 04             	mov    0x4(%eax),%edx
c003050f:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0030512:	83 ec 04             	sub    $0x4,%esp
c0030515:	51                   	push   %ecx
c0030516:	52                   	push   %edx
c0030517:	50                   	push   %eax
c0030518:	e8 f1 08 00 00       	call   c0030e0e <ide_read>
c003051d:	83 c4 10             	add    $0x10,%esp
c0030520:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030523:	8b 50 14             	mov    0x14(%eax),%edx
c0030526:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030529:	8b 40 10             	mov    0x10(%eax),%eax
c003052c:	29 c2                	sub    %eax,%edx
c003052e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030531:	8b 48 10             	mov    0x10(%eax),%ecx
c0030534:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0030537:	01 c8                	add    %ecx,%eax
c0030539:	83 ec 04             	sub    $0x4,%esp
c003053c:	52                   	push   %edx
c003053d:	6a 00                	push   $0x0
c003053f:	50                   	push   %eax
c0030540:	e8 97 1a 00 00       	call   c0031fdc <memset>
c0030545:	83 c4 10             	add    $0x10,%esp
c0030548:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003054b:	8b 50 08             	mov    0x8(%eax),%edx
c003054e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030551:	8b 40 14             	mov    0x14(%eax),%eax
c0030554:	01 d0                	add    %edx,%eax
c0030556:	48                   	dec    %eax
c0030557:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c003055a:	c7 c0 08 d0 03 c0    	mov    $0xc003d008,%eax
c0030560:	8b 00                	mov    (%eax),%eax
c0030562:	3b 45 e4             	cmp    -0x1c(%ebp),%eax
c0030565:	73 0b                	jae    c0030572 <loader+0x11a>
c0030567:	c7 c0 08 d0 03 c0    	mov    $0xc003d008,%eax
c003056d:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c0030570:	89 10                	mov    %edx,(%eax)
c0030572:	83 45 f4 20          	addl   $0x20,-0xc(%ebp)
c0030576:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030579:	3b 45 ec             	cmp    -0x14(%ebp),%eax
c003057c:	0f 82 55 ff ff ff    	jb     c00304d7 <loader+0x7f>
c0030582:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0030585:	8b 40 18             	mov    0x18(%eax),%eax
c0030588:	89 85 e0 ef ff ff    	mov    %eax,-0x1020(%ebp)
c003058e:	83 ec 08             	sub    $0x8,%esp
c0030591:	68 00 00 10 00       	push   $0x100000
c0030596:	68 00 00 f0 bf       	push   $0xbff00000
c003059b:	e8 60 17 00 00       	call   c0031d00 <mm_malloc>
c00305a0:	83 c4 10             	add    $0x10,%esp
c00305a3:	e8 2c 07 00 00       	call   c0030cd4 <create_video_mapping>
c00305a8:	e8 49 06 00 00       	call   c0030bf6 <get_ucr3>
c00305ad:	83 ec 0c             	sub    $0xc,%esp
c00305b0:	50                   	push   %eax
c00305b1:	e8 8c fe ff ff       	call   c0030442 <write_cr3>
c00305b6:	83 c4 10             	add    $0x10,%esp
c00305b9:	8b 85 e0 ef ff ff    	mov    -0x1020(%ebp),%eax
c00305bf:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00305c2:	c9                   	leave  
c00305c3:	c3                   	ret    

c00305c4 <sti>:
c00305c4:	55                   	push   %ebp
c00305c5:	89 e5                	mov    %esp,%ebp
c00305c7:	e8 6e fe ff ff       	call   c003043a <__x86.get_pc_thunk.ax>
c00305cc:	05 34 ba 00 00       	add    $0xba34,%eax
c00305d1:	fb                   	sti    
c00305d2:	90                   	nop
c00305d3:	5d                   	pop    %ebp
c00305d4:	c3                   	ret    

c00305d5 <cli>:
c00305d5:	55                   	push   %ebp
c00305d6:	89 e5                	mov    %esp,%ebp
c00305d8:	e8 5d fe ff ff       	call   c003043a <__x86.get_pc_thunk.ax>
c00305dd:	05 23 ba 00 00       	add    $0xba23,%eax
c00305e2:	fa                   	cli    
c00305e3:	90                   	nop
c00305e4:	5d                   	pop    %ebp
c00305e5:	c3                   	ret    

c00305e6 <sys_brk>:
c00305e6:	55                   	push   %ebp
c00305e7:	89 e5                	mov    %esp,%ebp
c00305e9:	53                   	push   %ebx
c00305ea:	83 ec 04             	sub    $0x4,%esp
c00305ed:	e8 48 fe ff ff       	call   c003043a <__x86.get_pc_thunk.ax>
c00305f2:	05 0e ba 00 00       	add    $0xba0e,%eax
c00305f7:	8b 55 08             	mov    0x8(%ebp),%edx
c00305fa:	8b 52 10             	mov    0x10(%edx),%edx
c00305fd:	83 ec 0c             	sub    $0xc,%esp
c0030600:	52                   	push   %edx
c0030601:	89 c3                	mov    %eax,%ebx
c0030603:	e8 05 06 00 00       	call   c0030c0d <mm_brk>
c0030608:	83 c4 10             	add    $0x10,%esp
c003060b:	8b 45 08             	mov    0x8(%ebp),%eax
c003060e:	c7 40 1c 00 00 00 00 	movl   $0x0,0x1c(%eax)
c0030615:	90                   	nop
c0030616:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030619:	c9                   	leave  
c003061a:	c3                   	ret    

c003061b <sys_open>:
c003061b:	55                   	push   %ebp
c003061c:	89 e5                	mov    %esp,%ebp
c003061e:	53                   	push   %ebx
c003061f:	83 ec 04             	sub    $0x4,%esp
c0030622:	e8 13 fe ff ff       	call   c003043a <__x86.get_pc_thunk.ax>
c0030627:	05 d9 b9 00 00       	add    $0xb9d9,%eax
c003062c:	8b 55 08             	mov    0x8(%ebp),%edx
c003062f:	8b 52 18             	mov    0x18(%edx),%edx
c0030632:	89 d1                	mov    %edx,%ecx
c0030634:	8b 55 08             	mov    0x8(%ebp),%edx
c0030637:	8b 52 10             	mov    0x10(%edx),%edx
c003063a:	83 ec 08             	sub    $0x8,%esp
c003063d:	51                   	push   %ecx
c003063e:	52                   	push   %edx
c003063f:	89 c3                	mov    %eax,%ebx
c0030641:	e8 93 fa ff ff       	call   c00300d9 <fs_open>
c0030646:	83 c4 10             	add    $0x10,%esp
c0030649:	89 c2                	mov    %eax,%edx
c003064b:	8b 45 08             	mov    0x8(%ebp),%eax
c003064e:	89 50 1c             	mov    %edx,0x1c(%eax)
c0030651:	90                   	nop
c0030652:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030655:	c9                   	leave  
c0030656:	c3                   	ret    

c0030657 <sys_read>:
c0030657:	55                   	push   %ebp
c0030658:	89 e5                	mov    %esp,%ebp
c003065a:	53                   	push   %ebx
c003065b:	83 ec 04             	sub    $0x4,%esp
c003065e:	e8 d7 fd ff ff       	call   c003043a <__x86.get_pc_thunk.ax>
c0030663:	05 9d b9 00 00       	add    $0xb99d,%eax
c0030668:	8b 55 08             	mov    0x8(%ebp),%edx
c003066b:	8b 52 14             	mov    0x14(%edx),%edx
c003066e:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0030671:	8b 49 18             	mov    0x18(%ecx),%ecx
c0030674:	89 cb                	mov    %ecx,%ebx
c0030676:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0030679:	8b 49 10             	mov    0x10(%ecx),%ecx
c003067c:	83 ec 04             	sub    $0x4,%esp
c003067f:	52                   	push   %edx
c0030680:	53                   	push   %ebx
c0030681:	51                   	push   %ecx
c0030682:	89 c3                	mov    %eax,%ebx
c0030684:	e8 fc fa ff ff       	call   c0030185 <fs_read>
c0030689:	83 c4 10             	add    $0x10,%esp
c003068c:	89 c2                	mov    %eax,%edx
c003068e:	8b 45 08             	mov    0x8(%ebp),%eax
c0030691:	89 50 1c             	mov    %edx,0x1c(%eax)
c0030694:	90                   	nop
c0030695:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030698:	c9                   	leave  
c0030699:	c3                   	ret    

c003069a <sys_write>:
c003069a:	55                   	push   %ebp
c003069b:	89 e5                	mov    %esp,%ebp
c003069d:	53                   	push   %ebx
c003069e:	83 ec 04             	sub    $0x4,%esp
c00306a1:	e8 94 fd ff ff       	call   c003043a <__x86.get_pc_thunk.ax>
c00306a6:	05 5a b9 00 00       	add    $0xb95a,%eax
c00306ab:	8b 55 08             	mov    0x8(%ebp),%edx
c00306ae:	8b 52 14             	mov    0x14(%edx),%edx
c00306b1:	8b 4d 08             	mov    0x8(%ebp),%ecx
c00306b4:	8b 49 18             	mov    0x18(%ecx),%ecx
c00306b7:	89 cb                	mov    %ecx,%ebx
c00306b9:	8b 4d 08             	mov    0x8(%ebp),%ecx
c00306bc:	8b 49 10             	mov    0x10(%ecx),%ecx
c00306bf:	83 ec 04             	sub    $0x4,%esp
c00306c2:	52                   	push   %edx
c00306c3:	53                   	push   %ebx
c00306c4:	51                   	push   %ecx
c00306c5:	89 c3                	mov    %eax,%ebx
c00306c7:	e8 df fb ff ff       	call   c00302ab <fs_write>
c00306cc:	83 c4 10             	add    $0x10,%esp
c00306cf:	89 c2                	mov    %eax,%edx
c00306d1:	8b 45 08             	mov    0x8(%ebp),%eax
c00306d4:	89 50 1c             	mov    %edx,0x1c(%eax)
c00306d7:	90                   	nop
c00306d8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00306db:	c9                   	leave  
c00306dc:	c3                   	ret    

c00306dd <sys_lseek>:
c00306dd:	55                   	push   %ebp
c00306de:	89 e5                	mov    %esp,%ebp
c00306e0:	53                   	push   %ebx
c00306e1:	83 ec 04             	sub    $0x4,%esp
c00306e4:	e8 51 fd ff ff       	call   c003043a <__x86.get_pc_thunk.ax>
c00306e9:	05 17 b9 00 00       	add    $0xb917,%eax
c00306ee:	8b 55 08             	mov    0x8(%ebp),%edx
c00306f1:	8b 52 14             	mov    0x14(%edx),%edx
c00306f4:	89 d3                	mov    %edx,%ebx
c00306f6:	8b 55 08             	mov    0x8(%ebp),%edx
c00306f9:	8b 52 18             	mov    0x18(%edx),%edx
c00306fc:	89 d1                	mov    %edx,%ecx
c00306fe:	8b 55 08             	mov    0x8(%ebp),%edx
c0030701:	8b 52 10             	mov    0x10(%edx),%edx
c0030704:	83 ec 04             	sub    $0x4,%esp
c0030707:	53                   	push   %ebx
c0030708:	51                   	push   %ecx
c0030709:	52                   	push   %edx
c003070a:	89 c3                	mov    %eax,%ebx
c003070c:	e8 16 fc ff ff       	call   c0030327 <fs_lseek>
c0030711:	83 c4 10             	add    $0x10,%esp
c0030714:	89 c2                	mov    %eax,%edx
c0030716:	8b 45 08             	mov    0x8(%ebp),%eax
c0030719:	89 50 1c             	mov    %edx,0x1c(%eax)
c003071c:	90                   	nop
c003071d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030720:	c9                   	leave  
c0030721:	c3                   	ret    

c0030722 <sys_close>:
c0030722:	55                   	push   %ebp
c0030723:	89 e5                	mov    %esp,%ebp
c0030725:	53                   	push   %ebx
c0030726:	83 ec 04             	sub    $0x4,%esp
c0030729:	e8 0c fd ff ff       	call   c003043a <__x86.get_pc_thunk.ax>
c003072e:	05 d2 b8 00 00       	add    $0xb8d2,%eax
c0030733:	8b 55 08             	mov    0x8(%ebp),%edx
c0030736:	8b 52 10             	mov    0x10(%edx),%edx
c0030739:	83 ec 0c             	sub    $0xc,%esp
c003073c:	52                   	push   %edx
c003073d:	89 c3                	mov    %eax,%ebx
c003073f:	e8 ad fc ff ff       	call   c00303f1 <fs_close>
c0030744:	83 c4 10             	add    $0x10,%esp
c0030747:	89 c2                	mov    %eax,%edx
c0030749:	8b 45 08             	mov    0x8(%ebp),%eax
c003074c:	89 50 1c             	mov    %edx,0x1c(%eax)
c003074f:	90                   	nop
c0030750:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030753:	c9                   	leave  
c0030754:	c3                   	ret    

c0030755 <do_syscall>:
c0030755:	55                   	push   %ebp
c0030756:	89 e5                	mov    %esp,%ebp
c0030758:	53                   	push   %ebx
c0030759:	83 ec 04             	sub    $0x4,%esp
c003075c:	e8 dd fc ff ff       	call   c003043e <__x86.get_pc_thunk.bx>
c0030761:	81 c3 9f b8 00 00    	add    $0xb89f,%ebx
c0030767:	8b 45 08             	mov    0x8(%ebp),%eax
c003076a:	8b 40 1c             	mov    0x1c(%eax),%eax
c003076d:	83 f8 2d             	cmp    $0x2d,%eax
c0030770:	0f 87 98 00 00 00    	ja     c003080e <.L10>
c0030776:	c1 e0 02             	shl    $0x2,%eax
c0030779:	8b 84 18 7c ca ff ff 	mov    -0x3584(%eax,%ebx,1),%eax
c0030780:	01 d8                	add    %ebx,%eax
c0030782:	ff e0                	jmp    *%eax

c0030784 <.L11>:
c0030784:	e8 4c fe ff ff       	call   c00305d5 <cli>
c0030789:	8b 45 08             	mov    0x8(%ebp),%eax
c003078c:	8b 40 18             	mov    0x18(%eax),%eax
c003078f:	89 c2                	mov    %eax,%edx
c0030791:	8b 45 08             	mov    0x8(%ebp),%eax
c0030794:	8b 40 10             	mov    0x10(%eax),%eax
c0030797:	83 ec 08             	sub    $0x8,%esp
c003079a:	52                   	push   %edx
c003079b:	50                   	push   %eax
c003079c:	e8 52 0e 00 00       	call   c00315f3 <add_irq_handle>
c00307a1:	83 c4 10             	add    $0x10,%esp
c00307a4:	e8 1b fe ff ff       	call   c00305c4 <sti>
c00307a9:	e9 8f 00 00 00       	jmp    c003083d <.L10+0x2f>

c00307ae <.L18>:
c00307ae:	83 ec 0c             	sub    $0xc,%esp
c00307b1:	ff 75 08             	pushl  0x8(%ebp)
c00307b4:	e8 2d fe ff ff       	call   c00305e6 <sys_brk>
c00307b9:	83 c4 10             	add    $0x10,%esp
c00307bc:	eb 7f                	jmp    c003083d <.L10+0x2f>

c00307be <.L15>:
c00307be:	83 ec 0c             	sub    $0xc,%esp
c00307c1:	ff 75 08             	pushl  0x8(%ebp)
c00307c4:	e8 52 fe ff ff       	call   c003061b <sys_open>
c00307c9:	83 c4 10             	add    $0x10,%esp
c00307cc:	eb 6f                	jmp    c003083d <.L10+0x2f>

c00307ce <.L13>:
c00307ce:	83 ec 0c             	sub    $0xc,%esp
c00307d1:	ff 75 08             	pushl  0x8(%ebp)
c00307d4:	e8 7e fe ff ff       	call   c0030657 <sys_read>
c00307d9:	83 c4 10             	add    $0x10,%esp
c00307dc:	eb 5f                	jmp    c003083d <.L10+0x2f>

c00307de <.L14>:
c00307de:	83 ec 0c             	sub    $0xc,%esp
c00307e1:	ff 75 08             	pushl  0x8(%ebp)
c00307e4:	e8 b1 fe ff ff       	call   c003069a <sys_write>
c00307e9:	83 c4 10             	add    $0x10,%esp
c00307ec:	eb 4f                	jmp    c003083d <.L10+0x2f>

c00307ee <.L17>:
c00307ee:	83 ec 0c             	sub    $0xc,%esp
c00307f1:	ff 75 08             	pushl  0x8(%ebp)
c00307f4:	e8 e4 fe ff ff       	call   c00306dd <sys_lseek>
c00307f9:	83 c4 10             	add    $0x10,%esp
c00307fc:	eb 3f                	jmp    c003083d <.L10+0x2f>

c00307fe <.L16>:
c00307fe:	83 ec 0c             	sub    $0xc,%esp
c0030801:	ff 75 08             	pushl  0x8(%ebp)
c0030804:	e8 19 ff ff ff       	call   c0030722 <sys_close>
c0030809:	83 c4 10             	add    $0x10,%esp
c003080c:	eb 2f                	jmp    c003083d <.L10+0x2f>

c003080e <.L10>:
c003080e:	8b 45 08             	mov    0x8(%ebp),%eax
c0030811:	8b 40 1c             	mov    0x1c(%eax),%eax
c0030814:	83 ec 0c             	sub    $0xc,%esp
c0030817:	50                   	push   %eax
c0030818:	8d 83 34 cb ff ff    	lea    -0x34cc(%ebx),%eax
c003081e:	50                   	push   %eax
c003081f:	6a 35                	push   $0x35
c0030821:	8d 83 0c ca ff ff    	lea    -0x35f4(%ebx),%eax
c0030827:	50                   	push   %eax
c0030828:	8d 83 28 ca ff ff    	lea    -0x35d8(%ebx),%eax
c003082e:	50                   	push   %eax
c003082f:	e8 22 14 00 00       	call   c0031c56 <printk>
c0030834:	83 c4 20             	add    $0x20,%esp
c0030837:	b8 01 00 00 00       	mov    $0x1,%eax
c003083c:	82 90 8b 5d fc c9 c3 	adcb   $0xc3,-0x3603a275(%eax)

c0030843 <sti>:
c0030843:	55                   	push   %ebp
c0030844:	89 e5                	mov    %esp,%ebp
c0030846:	e8 ef fb ff ff       	call   c003043a <__x86.get_pc_thunk.ax>
c003084b:	05 b5 b7 00 00       	add    $0xb7b5,%eax
c0030850:	fb                   	sti    
c0030851:	90                   	nop
c0030852:	5d                   	pop    %ebp
c0030853:	c3                   	ret    

c0030854 <init>:
c0030854:	55                   	push   %ebp
c0030855:	89 e5                	mov    %esp,%ebp
c0030857:	53                   	push   %ebx
c0030858:	83 ec 04             	sub    $0x4,%esp
c003085b:	e8 de fb ff ff       	call   c003043e <__x86.get_pc_thunk.bx>
c0030860:	81 c3 a0 b7 00 00    	add    $0xb7a0,%ebx
c0030866:	e8 23 01 00 00       	call   c003098e <init_page>
c003086b:	81 c4 00 00 00 c0    	add    $0xc0000000,%esp
c0030871:	8d 83 86 48 ff bf    	lea    -0x4000b77a(%ebx),%eax
c0030877:	ff e0                	jmp    *%eax
c0030879:	b8 01 00 00 00       	mov    $0x1,%eax
c003087e:	82 90 83 c4 04 5b 5d 	adcb   $0x5d,0x5b04c483(%eax)
c0030885:	c3                   	ret    

c0030886 <init_cond>:
c0030886:	55                   	push   %ebp
c0030887:	89 e5                	mov    %esp,%ebp
c0030889:	53                   	push   %ebx
c003088a:	83 ec 14             	sub    $0x14,%esp
c003088d:	e8 ac fb ff ff       	call   c003043e <__x86.get_pc_thunk.bx>
c0030892:	81 c3 6e b7 00 00    	add    $0xb76e,%ebx
c0030898:	e8 d0 02 00 00       	call   c0030b6d <init_segment>
c003089d:	e8 77 10 00 00       	call   c0031919 <init_idt>
c00308a2:	e8 9c ff ff ff       	call   c0030843 <sti>
c00308a7:	e8 9b 06 00 00       	call   c0030f47 <init_ide>
c00308ac:	e8 aa 03 00 00       	call   c0030c5b <init_mm>
c00308b1:	8d 83 80 cb ff ff    	lea    -0x3480(%ebx),%eax
c00308b7:	50                   	push   %eax
c00308b8:	6a 4b                	push   $0x4b
c00308ba:	8d 83 40 cb ff ff    	lea    -0x34c0(%ebx),%eax
c00308c0:	50                   	push   %eax
c00308c1:	8d 83 4c cb ff ff    	lea    -0x34b4(%ebx),%eax
c00308c7:	50                   	push   %eax
c00308c8:	e8 89 13 00 00       	call   c0031c56 <printk>
c00308cd:	83 c4 10             	add    $0x10,%esp
c00308d0:	e8 3a 04 00 00       	call   c0030d0f <video_mapping_write_test>
c00308d5:	e8 7e fb ff ff       	call   c0030458 <loader>
c00308da:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00308dd:	e8 70 04 00 00       	call   c0030d52 <video_mapping_read_test>
c00308e2:	e8 e6 04 00 00       	call   c0030dcd <video_mapping_clear>
c00308e7:	bc 00 00 00 c0       	mov    $0xc0000000,%esp
c00308ec:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00308ef:	ff d0                	call   *%eax
c00308f1:	90                   	nop
c00308f2:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00308f5:	c9                   	leave  
c00308f6:	c3                   	ret    

c00308f7 <read_cr0>:
c00308f7:	55                   	push   %ebp
c00308f8:	89 e5                	mov    %esp,%ebp
c00308fa:	83 ec 10             	sub    $0x10,%esp
c00308fd:	e8 38 fb ff ff       	call   c003043a <__x86.get_pc_thunk.ax>
c0030902:	05 fe b6 00 00       	add    $0xb6fe,%eax
c0030907:	0f 20 c0             	mov    %cr0,%eax
c003090a:	89 45 fc             	mov    %eax,-0x4(%ebp)
c003090d:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0030910:	c9                   	leave  
c0030911:	c3                   	ret    

c0030912 <write_cr0>:
c0030912:	55                   	push   %ebp
c0030913:	89 e5                	mov    %esp,%ebp
c0030915:	e8 20 fb ff ff       	call   c003043a <__x86.get_pc_thunk.ax>
c003091a:	05 e6 b6 00 00       	add    $0xb6e6,%eax
c003091f:	8b 45 08             	mov    0x8(%ebp),%eax
c0030922:	0f 22 c0             	mov    %eax,%cr0
c0030925:	90                   	nop
c0030926:	5d                   	pop    %ebp
c0030927:	c3                   	ret    

c0030928 <write_cr3>:
c0030928:	55                   	push   %ebp
c0030929:	89 e5                	mov    %esp,%ebp
c003092b:	e8 0a fb ff ff       	call   c003043a <__x86.get_pc_thunk.ax>
c0030930:	05 d0 b6 00 00       	add    $0xb6d0,%eax
c0030935:	8b 45 08             	mov    0x8(%ebp),%eax
c0030938:	0f 22 d8             	mov    %eax,%cr3
c003093b:	90                   	nop
c003093c:	5d                   	pop    %ebp
c003093d:	c3                   	ret    

c003093e <write_gdtr>:
c003093e:	55                   	push   %ebp
c003093f:	89 e5                	mov    %esp,%ebp
c0030941:	e8 f4 fa ff ff       	call   c003043a <__x86.get_pc_thunk.ax>
c0030946:	05 ba b6 00 00       	add    $0xb6ba,%eax
c003094b:	8b 55 0c             	mov    0xc(%ebp),%edx
c003094e:	4a                   	dec    %edx
c003094f:	66 89 90 00 10 00 00 	mov    %dx,0x1000(%eax)
c0030956:	8b 55 08             	mov    0x8(%ebp),%edx
c0030959:	66 89 90 02 10 00 00 	mov    %dx,0x1002(%eax)
c0030960:	8b 55 08             	mov    0x8(%ebp),%edx
c0030963:	c1 ea 10             	shr    $0x10,%edx
c0030966:	66 89 90 04 10 00 00 	mov    %dx,0x1004(%eax)
c003096d:	8d 80 00 10 00 00    	lea    0x1000(%eax),%eax
c0030973:	0f 01 10             	lgdtl  (%eax)
c0030976:	90                   	nop
c0030977:	5d                   	pop    %ebp
c0030978:	c3                   	ret    

c0030979 <get_kpdir>:
c0030979:	55                   	push   %ebp
c003097a:	89 e5                	mov    %esp,%ebp
c003097c:	e8 b9 fa ff ff       	call   c003043a <__x86.get_pc_thunk.ax>
c0030981:	05 7f b6 00 00       	add    $0xb67f,%eax
c0030986:	c7 c0 00 10 07 c0    	mov    $0xc0071000,%eax
c003098c:	5d                   	pop    %ebp
c003098d:	c3                   	ret    

c003098e <init_page>:
c003098e:	55                   	push   %ebp
c003098f:	89 e5                	mov    %esp,%ebp
c0030991:	53                   	push   %ebx
c0030992:	83 ec 24             	sub    $0x24,%esp
c0030995:	e8 a0 fa ff ff       	call   c003043a <__x86.get_pc_thunk.ax>
c003099a:	05 66 b6 00 00       	add    $0xb666,%eax
c003099f:	c7 c2 00 10 07 c0    	mov    $0xc0071000,%edx
c00309a5:	81 c2 00 00 00 40    	add    $0x40000000,%edx
c00309ab:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c00309ae:	c7 c2 00 20 07 c0    	mov    $0xc0072000,%edx
c00309b4:	81 c2 00 00 00 40    	add    $0x40000000,%edx
c00309ba:	89 55 f4             	mov    %edx,-0xc(%ebp)
c00309bd:	83 ec 04             	sub    $0x4,%esp
c00309c0:	68 00 10 00 00       	push   $0x1000
c00309c5:	6a 00                	push   $0x0
c00309c7:	ff 75 e4             	pushl  -0x1c(%ebp)
c00309ca:	89 c3                	mov    %eax,%ebx
c00309cc:	e8 0b 16 00 00       	call   c0031fdc <memset>
c00309d1:	83 c4 10             	add    $0x10,%esp
c00309d4:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
c00309db:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c00309e2:	eb 6e                	jmp    c0030a52 <init_page+0xc4>
c00309e4:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00309e7:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c00309ee:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c00309f1:	01 d0                	add    %edx,%eax
c00309f3:	8b 55 f4             	mov    -0xc(%ebp),%edx
c00309f6:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
c00309fc:	83 ca 07             	or     $0x7,%edx
c00309ff:	89 10                	mov    %edx,(%eax)
c0030a01:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0030a04:	05 00 03 00 00       	add    $0x300,%eax
c0030a09:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0030a10:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0030a13:	01 d0                	add    %edx,%eax
c0030a15:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0030a18:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
c0030a1e:	83 ca 07             	or     $0x7,%edx
c0030a21:	89 10                	mov    %edx,(%eax)
c0030a23:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
c0030a2a:	eb 1a                	jmp    c0030a46 <init_page+0xb8>
c0030a2c:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0030a2f:	c1 e0 0c             	shl    $0xc,%eax
c0030a32:	83 c8 07             	or     $0x7,%eax
c0030a35:	89 c2                	mov    %eax,%edx
c0030a37:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030a3a:	89 10                	mov    %edx,(%eax)
c0030a3c:	ff 45 e8             	incl   -0x18(%ebp)
c0030a3f:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
c0030a43:	ff 45 ec             	incl   -0x14(%ebp)
c0030a46:	81 7d ec ff 03 00 00 	cmpl   $0x3ff,-0x14(%ebp)
c0030a4d:	76 dd                	jbe    c0030a2c <init_page+0x9e>
c0030a4f:	ff 45 f0             	incl   -0x10(%ebp)
c0030a52:	83 7d f0 1f          	cmpl   $0x1f,-0x10(%ebp)
c0030a56:	76 8c                	jbe    c00309e4 <init_page+0x56>
c0030a58:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
c0030a5f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0030a62:	c1 e8 0c             	shr    $0xc,%eax
c0030a65:	25 ff ff 0f 00       	and    $0xfffff,%eax
c0030a6a:	c1 e0 0c             	shl    $0xc,%eax
c0030a6d:	89 c2                	mov    %eax,%edx
c0030a6f:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0030a72:	25 ff 0f 00 00       	and    $0xfff,%eax
c0030a77:	09 d0                	or     %edx,%eax
c0030a79:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0030a7c:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0030a7f:	83 ec 0c             	sub    $0xc,%esp
c0030a82:	50                   	push   %eax
c0030a83:	e8 a0 fe ff ff       	call   c0030928 <write_cr3>
c0030a88:	83 c4 10             	add    $0x10,%esp
c0030a8b:	e8 67 fe ff ff       	call   c00308f7 <read_cr0>
c0030a90:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0030a93:	8a 45 e3             	mov    -0x1d(%ebp),%al
c0030a96:	83 c8 80             	or     $0xffffff80,%eax
c0030a99:	88 45 e3             	mov    %al,-0x1d(%ebp)
c0030a9c:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0030a9f:	83 ec 0c             	sub    $0xc,%esp
c0030aa2:	50                   	push   %eax
c0030aa3:	e8 6a fe ff ff       	call   c0030912 <write_cr0>
c0030aa8:	83 c4 10             	add    $0x10,%esp
c0030aab:	90                   	nop
c0030aac:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030aaf:	c9                   	leave  
c0030ab0:	c3                   	ret    

c0030ab1 <set_segment>:
c0030ab1:	55                   	push   %ebp
c0030ab2:	89 e5                	mov    %esp,%ebp
c0030ab4:	e8 81 f9 ff ff       	call   c003043a <__x86.get_pc_thunk.ax>
c0030ab9:	05 47 b5 00 00       	add    $0xb547,%eax
c0030abe:	8b 45 08             	mov    0x8(%ebp),%eax
c0030ac1:	66 c7 00 ff ff       	movw   $0xffff,(%eax)
c0030ac6:	8b 45 08             	mov    0x8(%ebp),%eax
c0030ac9:	66 c7 40 02 00 00    	movw   $0x0,0x2(%eax)
c0030acf:	8b 45 08             	mov    0x8(%ebp),%eax
c0030ad2:	c6 40 04 00          	movb   $0x0,0x4(%eax)
c0030ad6:	8b 45 10             	mov    0x10(%ebp),%eax
c0030ad9:	83 e0 0f             	and    $0xf,%eax
c0030adc:	88 c2                	mov    %al,%dl
c0030ade:	8b 45 08             	mov    0x8(%ebp),%eax
c0030ae1:	88 d1                	mov    %dl,%cl
c0030ae3:	83 e1 0f             	and    $0xf,%ecx
c0030ae6:	8a 50 05             	mov    0x5(%eax),%dl
c0030ae9:	83 e2 f0             	and    $0xfffffff0,%edx
c0030aec:	09 ca                	or     %ecx,%edx
c0030aee:	88 50 05             	mov    %dl,0x5(%eax)
c0030af1:	8b 45 08             	mov    0x8(%ebp),%eax
c0030af4:	8a 50 05             	mov    0x5(%eax),%dl
c0030af7:	83 ca 10             	or     $0x10,%edx
c0030afa:	88 50 05             	mov    %dl,0x5(%eax)
c0030afd:	8b 45 0c             	mov    0xc(%ebp),%eax
c0030b00:	83 e0 03             	and    $0x3,%eax
c0030b03:	88 c2                	mov    %al,%dl
c0030b05:	8b 45 08             	mov    0x8(%ebp),%eax
c0030b08:	83 e2 03             	and    $0x3,%edx
c0030b0b:	88 d1                	mov    %dl,%cl
c0030b0d:	c1 e1 05             	shl    $0x5,%ecx
c0030b10:	8a 50 05             	mov    0x5(%eax),%dl
c0030b13:	83 e2 9f             	and    $0xffffff9f,%edx
c0030b16:	09 ca                	or     %ecx,%edx
c0030b18:	88 50 05             	mov    %dl,0x5(%eax)
c0030b1b:	8b 45 08             	mov    0x8(%ebp),%eax
c0030b1e:	8a 50 05             	mov    0x5(%eax),%dl
c0030b21:	83 ca 80             	or     $0xffffff80,%edx
c0030b24:	88 50 05             	mov    %dl,0x5(%eax)
c0030b27:	8b 45 08             	mov    0x8(%ebp),%eax
c0030b2a:	8a 50 06             	mov    0x6(%eax),%dl
c0030b2d:	83 ca 0f             	or     $0xf,%edx
c0030b30:	88 50 06             	mov    %dl,0x6(%eax)
c0030b33:	8b 45 08             	mov    0x8(%ebp),%eax
c0030b36:	8a 50 06             	mov    0x6(%eax),%dl
c0030b39:	83 e2 ef             	and    $0xffffffef,%edx
c0030b3c:	88 50 06             	mov    %dl,0x6(%eax)
c0030b3f:	8b 45 08             	mov    0x8(%ebp),%eax
c0030b42:	8a 50 06             	mov    0x6(%eax),%dl
c0030b45:	83 e2 df             	and    $0xffffffdf,%edx
c0030b48:	88 50 06             	mov    %dl,0x6(%eax)
c0030b4b:	8b 45 08             	mov    0x8(%ebp),%eax
c0030b4e:	8a 50 06             	mov    0x6(%eax),%dl
c0030b51:	83 ca 40             	or     $0x40,%edx
c0030b54:	88 50 06             	mov    %dl,0x6(%eax)
c0030b57:	8b 45 08             	mov    0x8(%ebp),%eax
c0030b5a:	8a 50 06             	mov    0x6(%eax),%dl
c0030b5d:	83 ca 80             	or     $0xffffff80,%edx
c0030b60:	88 50 06             	mov    %dl,0x6(%eax)
c0030b63:	8b 45 08             	mov    0x8(%ebp),%eax
c0030b66:	c6 40 07 00          	movb   $0x0,0x7(%eax)
c0030b6a:	90                   	nop
c0030b6b:	5d                   	pop    %ebp
c0030b6c:	c3                   	ret    

c0030b6d <init_segment>:
c0030b6d:	55                   	push   %ebp
c0030b6e:	89 e5                	mov    %esp,%ebp
c0030b70:	53                   	push   %ebx
c0030b71:	83 ec 04             	sub    $0x4,%esp
c0030b74:	e8 c5 f8 ff ff       	call   c003043e <__x86.get_pc_thunk.bx>
c0030b79:	81 c3 87 b4 00 00    	add    $0xb487,%ebx
c0030b7f:	83 ec 04             	sub    $0x4,%esp
c0030b82:	6a 18                	push   $0x18
c0030b84:	6a 00                	push   $0x0
c0030b86:	c7 c0 00 00 07 c0    	mov    $0xc0070000,%eax
c0030b8c:	50                   	push   %eax
c0030b8d:	e8 4a 14 00 00       	call   c0031fdc <memset>
c0030b92:	83 c4 10             	add    $0x10,%esp
c0030b95:	83 ec 04             	sub    $0x4,%esp
c0030b98:	6a 0a                	push   $0xa
c0030b9a:	6a 00                	push   $0x0
c0030b9c:	c7 c0 00 00 07 c0    	mov    $0xc0070000,%eax
c0030ba2:	8d 40 08             	lea    0x8(%eax),%eax
c0030ba5:	50                   	push   %eax
c0030ba6:	e8 06 ff ff ff       	call   c0030ab1 <set_segment>
c0030bab:	83 c4 10             	add    $0x10,%esp
c0030bae:	83 ec 04             	sub    $0x4,%esp
c0030bb1:	6a 02                	push   $0x2
c0030bb3:	6a 00                	push   $0x0
c0030bb5:	c7 c0 00 00 07 c0    	mov    $0xc0070000,%eax
c0030bbb:	8d 40 10             	lea    0x10(%eax),%eax
c0030bbe:	50                   	push   %eax
c0030bbf:	e8 ed fe ff ff       	call   c0030ab1 <set_segment>
c0030bc4:	83 c4 10             	add    $0x10,%esp
c0030bc7:	83 ec 08             	sub    $0x8,%esp
c0030bca:	6a 18                	push   $0x18
c0030bcc:	c7 c0 00 00 07 c0    	mov    $0xc0070000,%eax
c0030bd2:	50                   	push   %eax
c0030bd3:	e8 66 fd ff ff       	call   c003093e <write_gdtr>
c0030bd8:	83 c4 10             	add    $0x10,%esp
c0030bdb:	90                   	nop
c0030bdc:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030bdf:	c9                   	leave  
c0030be0:	c3                   	ret    

c0030be1 <get_updir>:
c0030be1:	55                   	push   %ebp
c0030be2:	89 e5                	mov    %esp,%ebp
c0030be4:	e8 51 f8 ff ff       	call   c003043a <__x86.get_pc_thunk.ax>
c0030be9:	05 17 b4 00 00       	add    $0xb417,%eax
c0030bee:	c7 c0 00 20 09 c0    	mov    $0xc0092000,%eax
c0030bf4:	5d                   	pop    %ebp
c0030bf5:	c3                   	ret    

c0030bf6 <get_ucr3>:
c0030bf6:	55                   	push   %ebp
c0030bf7:	89 e5                	mov    %esp,%ebp
c0030bf9:	e8 3c f8 ff ff       	call   c003043a <__x86.get_pc_thunk.ax>
c0030bfe:	05 02 b4 00 00       	add    $0xb402,%eax
c0030c03:	c7 c0 00 30 09 c0    	mov    $0xc0093000,%eax
c0030c09:	8b 00                	mov    (%eax),%eax
c0030c0b:	5d                   	pop    %ebp
c0030c0c:	c3                   	ret    

c0030c0d <mm_brk>:
c0030c0d:	55                   	push   %ebp
c0030c0e:	89 e5                	mov    %esp,%ebp
c0030c10:	53                   	push   %ebx
c0030c11:	83 ec 04             	sub    $0x4,%esp
c0030c14:	e8 25 f8 ff ff       	call   c003043e <__x86.get_pc_thunk.bx>
c0030c19:	81 c3 e7 b3 00 00    	add    $0xb3e7,%ebx
c0030c1f:	8b 83 08 10 00 00    	mov    0x1008(%ebx),%eax
c0030c25:	39 45 08             	cmp    %eax,0x8(%ebp)
c0030c28:	76 22                	jbe    c0030c4c <mm_brk+0x3f>
c0030c2a:	8b 83 08 10 00 00    	mov    0x1008(%ebx),%eax
c0030c30:	8b 55 08             	mov    0x8(%ebp),%edx
c0030c33:	29 c2                	sub    %eax,%edx
c0030c35:	89 d0                	mov    %edx,%eax
c0030c37:	89 c2                	mov    %eax,%edx
c0030c39:	8b 83 08 10 00 00    	mov    0x1008(%ebx),%eax
c0030c3f:	83 ec 08             	sub    $0x8,%esp
c0030c42:	52                   	push   %edx
c0030c43:	50                   	push   %eax
c0030c44:	e8 b7 10 00 00       	call   c0031d00 <mm_malloc>
c0030c49:	83 c4 10             	add    $0x10,%esp
c0030c4c:	8b 45 08             	mov    0x8(%ebp),%eax
c0030c4f:	89 83 08 10 00 00    	mov    %eax,0x1008(%ebx)
c0030c55:	90                   	nop
c0030c56:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030c59:	c9                   	leave  
c0030c5a:	c3                   	ret    

c0030c5b <init_mm>:
c0030c5b:	55                   	push   %ebp
c0030c5c:	89 e5                	mov    %esp,%ebp
c0030c5e:	53                   	push   %ebx
c0030c5f:	83 ec 14             	sub    $0x14,%esp
c0030c62:	e8 d7 f7 ff ff       	call   c003043e <__x86.get_pc_thunk.bx>
c0030c67:	81 c3 99 b3 00 00    	add    $0xb399,%ebx
c0030c6d:	e8 07 fd ff ff       	call   c0030979 <get_kpdir>
c0030c72:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0030c75:	83 ec 04             	sub    $0x4,%esp
c0030c78:	68 00 10 00 00       	push   $0x1000
c0030c7d:	6a 00                	push   $0x0
c0030c7f:	c7 c0 00 20 09 c0    	mov    $0xc0092000,%eax
c0030c85:	50                   	push   %eax
c0030c86:	e8 51 13 00 00       	call   c0031fdc <memset>
c0030c8b:	83 c4 10             	add    $0x10,%esp
c0030c8e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030c91:	05 00 0c 00 00       	add    $0xc00,%eax
c0030c96:	83 ec 04             	sub    $0x4,%esp
c0030c99:	68 80 00 00 00       	push   $0x80
c0030c9e:	50                   	push   %eax
c0030c9f:	c7 c0 00 20 09 c0    	mov    $0xc0092000,%eax
c0030ca5:	8d 80 00 0c 00 00    	lea    0xc00(%eax),%eax
c0030cab:	50                   	push   %eax
c0030cac:	e8 e3 12 00 00       	call   c0031f94 <memcpy>
c0030cb1:	83 c4 10             	add    $0x10,%esp
c0030cb4:	c7 c0 00 20 09 c0    	mov    $0xc0092000,%eax
c0030cba:	05 00 00 00 40       	add    $0x40000000,%eax
c0030cbf:	25 00 fc ff ff       	and    $0xfffffc00,%eax
c0030cc4:	89 c2                	mov    %eax,%edx
c0030cc6:	c7 c0 00 30 09 c0    	mov    $0xc0093000,%eax
c0030ccc:	89 10                	mov    %edx,(%eax)
c0030cce:	90                   	nop
c0030ccf:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030cd2:	c9                   	leave  
c0030cd3:	c3                   	ret    

c0030cd4 <create_video_mapping>:
c0030cd4:	55                   	push   %ebp
c0030cd5:	89 e5                	mov    %esp,%ebp
c0030cd7:	53                   	push   %ebx
c0030cd8:	83 ec 14             	sub    $0x14,%esp
c0030cdb:	e8 5e f7 ff ff       	call   c003043e <__x86.get_pc_thunk.bx>
c0030ce0:	81 c3 20 b3 00 00    	add    $0xb320,%ebx
c0030ce6:	e8 8e fc ff ff       	call   c0030979 <get_kpdir>
c0030ceb:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0030cee:	e8 ee fe ff ff       	call   c0030be1 <get_updir>
c0030cf3:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0030cf6:	83 ec 04             	sub    $0x4,%esp
c0030cf9:	6a 04                	push   $0x4
c0030cfb:	ff 75 f4             	pushl  -0xc(%ebp)
c0030cfe:	ff 75 f0             	pushl  -0x10(%ebp)
c0030d01:	e8 8e 12 00 00       	call   c0031f94 <memcpy>
c0030d06:	83 c4 10             	add    $0x10,%esp
c0030d09:	90                   	nop
c0030d0a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030d0d:	c9                   	leave  
c0030d0e:	c3                   	ret    

c0030d0f <video_mapping_write_test>:
c0030d0f:	55                   	push   %ebp
c0030d10:	89 e5                	mov    %esp,%ebp
c0030d12:	83 ec 10             	sub    $0x10,%esp
c0030d15:	e8 20 f7 ff ff       	call   c003043a <__x86.get_pc_thunk.ax>
c0030d1a:	05 e6 b2 00 00       	add    $0xb2e6,%eax
c0030d1f:	c7 45 f8 00 00 0a 00 	movl   $0xa0000,-0x8(%ebp)
c0030d26:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c0030d2d:	eb 17                	jmp    c0030d46 <video_mapping_write_test+0x37>
c0030d2f:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0030d32:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0030d39:	8b 45 f8             	mov    -0x8(%ebp),%eax
c0030d3c:	01 c2                	add    %eax,%edx
c0030d3e:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0030d41:	89 02                	mov    %eax,(%edx)
c0030d43:	ff 45 fc             	incl   -0x4(%ebp)
c0030d46:	81 7d fc 7f 3e 00 00 	cmpl   $0x3e7f,-0x4(%ebp)
c0030d4d:	7e e0                	jle    c0030d2f <video_mapping_write_test+0x20>
c0030d4f:	90                   	nop
c0030d50:	c9                   	leave  
c0030d51:	c3                   	ret    

c0030d52 <video_mapping_read_test>:
c0030d52:	55                   	push   %ebp
c0030d53:	89 e5                	mov    %esp,%ebp
c0030d55:	53                   	push   %ebx
c0030d56:	83 ec 14             	sub    $0x14,%esp
c0030d59:	e8 e0 f6 ff ff       	call   c003043e <__x86.get_pc_thunk.bx>
c0030d5e:	81 c3 a2 b2 00 00    	add    $0xb2a2,%ebx
c0030d64:	c7 45 f0 00 00 0a 00 	movl   $0xa0000,-0x10(%ebp)
c0030d6b:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0030d72:	eb 4a                	jmp    c0030dbe <video_mapping_read_test+0x6c>
c0030d74:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030d77:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0030d7e:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0030d81:	01 d0                	add    %edx,%eax
c0030d83:	8b 10                	mov    (%eax),%edx
c0030d85:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030d88:	39 c2                	cmp    %eax,%edx
c0030d8a:	74 2f                	je     c0030dbb <video_mapping_read_test+0x69>
c0030d8c:	83 ec 0c             	sub    $0xc,%esp
c0030d8f:	8d 83 8c cb ff ff    	lea    -0x3474(%ebx),%eax
c0030d95:	50                   	push   %eax
c0030d96:	8d 83 f8 cb ff ff    	lea    -0x3408(%ebx),%eax
c0030d9c:	50                   	push   %eax
c0030d9d:	6a 26                	push   $0x26
c0030d9f:	8d 83 98 cb ff ff    	lea    -0x3468(%ebx),%eax
c0030da5:	50                   	push   %eax
c0030da6:	8d 83 ac cb ff ff    	lea    -0x3454(%ebx),%eax
c0030dac:	50                   	push   %eax
c0030dad:	e8 a4 0e 00 00       	call   c0031c56 <printk>
c0030db2:	83 c4 20             	add    $0x20,%esp
c0030db5:	b8 01 00 00 00       	mov    $0x1,%eax
c0030dba:	82 ff 45             	cmp    $0x45,%bh
c0030dbd:	f4                   	hlt    
c0030dbe:	81 7d f4 7f 3e 00 00 	cmpl   $0x3e7f,-0xc(%ebp)
c0030dc5:	7e ad                	jle    c0030d74 <video_mapping_read_test+0x22>
c0030dc7:	90                   	nop
c0030dc8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030dcb:	c9                   	leave  
c0030dcc:	c3                   	ret    

c0030dcd <video_mapping_clear>:
c0030dcd:	55                   	push   %ebp
c0030dce:	89 e5                	mov    %esp,%ebp
c0030dd0:	53                   	push   %ebx
c0030dd1:	83 ec 04             	sub    $0x4,%esp
c0030dd4:	e8 61 f6 ff ff       	call   c003043a <__x86.get_pc_thunk.ax>
c0030dd9:	05 27 b2 00 00       	add    $0xb227,%eax
c0030dde:	83 ec 04             	sub    $0x4,%esp
c0030de1:	68 00 fa 00 00       	push   $0xfa00
c0030de6:	6a 00                	push   $0x0
c0030de8:	68 00 00 0a 00       	push   $0xa0000
c0030ded:	89 c3                	mov    %eax,%ebx
c0030def:	e8 e8 11 00 00       	call   c0031fdc <memset>
c0030df4:	83 c4 10             	add    $0x10,%esp
c0030df7:	90                   	nop
c0030df8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030dfb:	c9                   	leave  
c0030dfc:	c3                   	ret    

c0030dfd <wait_intr>:
c0030dfd:	55                   	push   %ebp
c0030dfe:	89 e5                	mov    %esp,%ebp
c0030e00:	e8 35 f6 ff ff       	call   c003043a <__x86.get_pc_thunk.ax>
c0030e05:	05 fb b1 00 00       	add    $0xb1fb,%eax
c0030e0a:	f4                   	hlt    
c0030e0b:	90                   	nop
c0030e0c:	5d                   	pop    %ebp
c0030e0d:	c3                   	ret    

c0030e0e <ide_read>:
c0030e0e:	55                   	push   %ebp
c0030e0f:	89 e5                	mov    %esp,%ebp
c0030e11:	56                   	push   %esi
c0030e12:	53                   	push   %ebx
c0030e13:	83 ec 10             	sub    $0x10,%esp
c0030e16:	e8 23 f6 ff ff       	call   c003043e <__x86.get_pc_thunk.bx>
c0030e1b:	81 c3 e5 b1 00 00    	add    $0xb1e5,%ebx
c0030e21:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0030e28:	eb 22                	jmp    c0030e4c <ide_read+0x3e>
c0030e2a:	8b 55 08             	mov    0x8(%ebp),%edx
c0030e2d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030e30:	8d 34 02             	lea    (%edx,%eax,1),%esi
c0030e33:	8b 55 0c             	mov    0xc(%ebp),%edx
c0030e36:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030e39:	01 d0                	add    %edx,%eax
c0030e3b:	83 ec 0c             	sub    $0xc,%esp
c0030e3e:	50                   	push   %eax
c0030e3f:	e8 c6 02 00 00       	call   c003110a <read_byte>
c0030e44:	83 c4 10             	add    $0x10,%esp
c0030e47:	88 06                	mov    %al,(%esi)
c0030e49:	ff 45 f4             	incl   -0xc(%ebp)
c0030e4c:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030e4f:	3b 45 10             	cmp    0x10(%ebp),%eax
c0030e52:	72 d6                	jb     c0030e2a <ide_read+0x1c>
c0030e54:	90                   	nop
c0030e55:	8d 65 f8             	lea    -0x8(%ebp),%esp
c0030e58:	5b                   	pop    %ebx
c0030e59:	5e                   	pop    %esi
c0030e5a:	5d                   	pop    %ebp
c0030e5b:	c3                   	ret    

c0030e5c <ide_write>:
c0030e5c:	55                   	push   %ebp
c0030e5d:	89 e5                	mov    %esp,%ebp
c0030e5f:	53                   	push   %ebx
c0030e60:	83 ec 14             	sub    $0x14,%esp
c0030e63:	e8 d6 f5 ff ff       	call   c003043e <__x86.get_pc_thunk.bx>
c0030e68:	81 c3 98 b1 00 00    	add    $0xb198,%ebx
c0030e6e:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0030e75:	eb 25                	jmp    c0030e9c <ide_write+0x40>
c0030e77:	8b 55 08             	mov    0x8(%ebp),%edx
c0030e7a:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030e7d:	01 d0                	add    %edx,%eax
c0030e7f:	8a 00                	mov    (%eax),%al
c0030e81:	0f b6 c0             	movzbl %al,%eax
c0030e84:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c0030e87:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0030e8a:	01 ca                	add    %ecx,%edx
c0030e8c:	83 ec 08             	sub    $0x8,%esp
c0030e8f:	50                   	push   %eax
c0030e90:	52                   	push   %edx
c0030e91:	e8 b1 02 00 00       	call   c0031147 <write_byte>
c0030e96:	83 c4 10             	add    $0x10,%esp
c0030e99:	ff 45 f4             	incl   -0xc(%ebp)
c0030e9c:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030e9f:	3b 45 10             	cmp    0x10(%ebp),%eax
c0030ea2:	72 d3                	jb     c0030e77 <ide_write+0x1b>
c0030ea4:	90                   	nop
c0030ea5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030ea8:	c9                   	leave  
c0030ea9:	c3                   	ret    

c0030eaa <ide_writeback>:
c0030eaa:	55                   	push   %ebp
c0030eab:	89 e5                	mov    %esp,%ebp
c0030ead:	53                   	push   %ebx
c0030eae:	83 ec 04             	sub    $0x4,%esp
c0030eb1:	e8 88 f5 ff ff       	call   c003043e <__x86.get_pc_thunk.bx>
c0030eb6:	81 c3 4a b1 00 00    	add    $0xb14a,%ebx
c0030ebc:	8b 83 10 10 00 00    	mov    0x1010(%ebx),%eax
c0030ec2:	40                   	inc    %eax
c0030ec3:	89 83 10 10 00 00    	mov    %eax,0x1010(%ebx)
c0030ec9:	8b 83 10 10 00 00    	mov    0x1010(%ebx),%eax
c0030ecf:	83 f8 64             	cmp    $0x64,%eax
c0030ed2:	75 0f                	jne    c0030ee3 <ide_writeback+0x39>
c0030ed4:	e8 f6 00 00 00       	call   c0030fcf <cache_writeback>
c0030ed9:	c7 83 10 10 00 00 00 	movl   $0x0,0x1010(%ebx)
c0030ee0:	00 00 00 
c0030ee3:	90                   	nop
c0030ee4:	83 c4 04             	add    $0x4,%esp
c0030ee7:	5b                   	pop    %ebx
c0030ee8:	5d                   	pop    %ebp
c0030ee9:	c3                   	ret    

c0030eea <ide_intr>:
c0030eea:	55                   	push   %ebp
c0030eeb:	89 e5                	mov    %esp,%ebp
c0030eed:	e8 48 f5 ff ff       	call   c003043a <__x86.get_pc_thunk.ax>
c0030ef2:	05 0e b1 00 00       	add    $0xb10e,%eax
c0030ef7:	c7 80 0c 10 00 00 01 	movl   $0x1,0x100c(%eax)
c0030efe:	00 00 00 
c0030f01:	90                   	nop
c0030f02:	5d                   	pop    %ebp
c0030f03:	c3                   	ret    

c0030f04 <clear_ide_intr>:
c0030f04:	55                   	push   %ebp
c0030f05:	89 e5                	mov    %esp,%ebp
c0030f07:	e8 2e f5 ff ff       	call   c003043a <__x86.get_pc_thunk.ax>
c0030f0c:	05 f4 b0 00 00       	add    $0xb0f4,%eax
c0030f11:	c7 80 0c 10 00 00 00 	movl   $0x0,0x100c(%eax)
c0030f18:	00 00 00 
c0030f1b:	90                   	nop
c0030f1c:	5d                   	pop    %ebp
c0030f1d:	c3                   	ret    

c0030f1e <wait_ide_intr>:
c0030f1e:	55                   	push   %ebp
c0030f1f:	89 e5                	mov    %esp,%ebp
c0030f21:	53                   	push   %ebx
c0030f22:	e8 17 f5 ff ff       	call   c003043e <__x86.get_pc_thunk.bx>
c0030f27:	81 c3 d9 b0 00 00    	add    $0xb0d9,%ebx
c0030f2d:	eb 05                	jmp    c0030f34 <wait_ide_intr+0x16>
c0030f2f:	e8 c9 fe ff ff       	call   c0030dfd <wait_intr>
c0030f34:	8b 83 0c 10 00 00    	mov    0x100c(%ebx),%eax
c0030f3a:	85 c0                	test   %eax,%eax
c0030f3c:	74 f1                	je     c0030f2f <wait_ide_intr+0x11>
c0030f3e:	e8 c1 ff ff ff       	call   c0030f04 <clear_ide_intr>
c0030f43:	90                   	nop
c0030f44:	5b                   	pop    %ebx
c0030f45:	5d                   	pop    %ebp
c0030f46:	c3                   	ret    

c0030f47 <init_ide>:
c0030f47:	55                   	push   %ebp
c0030f48:	89 e5                	mov    %esp,%ebp
c0030f4a:	53                   	push   %ebx
c0030f4b:	83 ec 04             	sub    $0x4,%esp
c0030f4e:	e8 eb f4 ff ff       	call   c003043e <__x86.get_pc_thunk.bx>
c0030f53:	81 c3 ad b0 00 00    	add    $0xb0ad,%ebx
c0030f59:	e8 2e 00 00 00       	call   c0030f8c <cache_init>
c0030f5e:	83 ec 08             	sub    $0x8,%esp
c0030f61:	8d 83 aa 4e ff ff    	lea    -0xb156(%ebx),%eax
c0030f67:	50                   	push   %eax
c0030f68:	6a 00                	push   $0x0
c0030f6a:	e8 84 06 00 00       	call   c00315f3 <add_irq_handle>
c0030f6f:	83 c4 10             	add    $0x10,%esp
c0030f72:	83 ec 08             	sub    $0x8,%esp
c0030f75:	8d 83 ea 4e ff ff    	lea    -0xb116(%ebx),%eax
c0030f7b:	50                   	push   %eax
c0030f7c:	6a 0e                	push   $0xe
c0030f7e:	e8 70 06 00 00       	call   c00315f3 <add_irq_handle>
c0030f83:	83 c4 10             	add    $0x10,%esp
c0030f86:	90                   	nop
c0030f87:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030f8a:	c9                   	leave  
c0030f8b:	c3                   	ret    

c0030f8c <cache_init>:
c0030f8c:	55                   	push   %ebp
c0030f8d:	89 e5                	mov    %esp,%ebp
c0030f8f:	53                   	push   %ebx
c0030f90:	83 ec 10             	sub    $0x10,%esp
c0030f93:	e8 fd 01 00 00       	call   c0031195 <__x86.get_pc_thunk.dx>
c0030f98:	81 c2 68 b0 00 00    	add    $0xb068,%edx
c0030f9e:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0030fa5:	eb 1b                	jmp    c0030fc2 <cache_init+0x36>
c0030fa7:	8b 4d f8             	mov    -0x8(%ebp),%ecx
c0030faa:	8d 9a 24 10 00 00    	lea    0x1024(%edx),%ebx
c0030fb0:	89 c8                	mov    %ecx,%eax
c0030fb2:	c1 e0 06             	shl    $0x6,%eax
c0030fb5:	01 c8                	add    %ecx,%eax
c0030fb7:	c1 e0 03             	shl    $0x3,%eax
c0030fba:	01 d8                	add    %ebx,%eax
c0030fbc:	c6 00 00             	movb   $0x0,(%eax)
c0030fbf:	ff 45 f8             	incl   -0x8(%ebp)
c0030fc2:	83 7d f8 7f          	cmpl   $0x7f,-0x8(%ebp)
c0030fc6:	7e df                	jle    c0030fa7 <cache_init+0x1b>
c0030fc8:	90                   	nop
c0030fc9:	83 c4 10             	add    $0x10,%esp
c0030fcc:	5b                   	pop    %ebx
c0030fcd:	5d                   	pop    %ebp
c0030fce:	c3                   	ret    

c0030fcf <cache_writeback>:
c0030fcf:	55                   	push   %ebp
c0030fd0:	89 e5                	mov    %esp,%ebp
c0030fd2:	53                   	push   %ebx
c0030fd3:	83 ec 14             	sub    $0x14,%esp
c0030fd6:	e8 63 f4 ff ff       	call   c003043e <__x86.get_pc_thunk.bx>
c0030fdb:	81 c3 25 b0 00 00    	add    $0xb025,%ebx
c0030fe1:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0030fe8:	eb 72                	jmp    c003105c <cache_writeback+0x8d>
c0030fea:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0030fed:	8d 8b 25 10 00 00    	lea    0x1025(%ebx),%ecx
c0030ff3:	89 d0                	mov    %edx,%eax
c0030ff5:	c1 e0 06             	shl    $0x6,%eax
c0030ff8:	01 d0                	add    %edx,%eax
c0030ffa:	c1 e0 03             	shl    $0x3,%eax
c0030ffd:	01 c8                	add    %ecx,%eax
c0030fff:	8a 00                	mov    (%eax),%al
c0031001:	3c 01                	cmp    $0x1,%al
c0031003:	75 54                	jne    c0031059 <cache_writeback+0x8a>
c0031005:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0031008:	8d 8b 20 10 00 00    	lea    0x1020(%ebx),%ecx
c003100e:	89 d0                	mov    %edx,%eax
c0031010:	c1 e0 06             	shl    $0x6,%eax
c0031013:	01 d0                	add    %edx,%eax
c0031015:	c1 e0 03             	shl    $0x3,%eax
c0031018:	01 c8                	add    %ecx,%eax
c003101a:	8b 10                	mov    (%eax),%edx
c003101c:	8b 4d f4             	mov    -0xc(%ebp),%ecx
c003101f:	89 c8                	mov    %ecx,%eax
c0031021:	c1 e0 06             	shl    $0x6,%eax
c0031024:	01 c8                	add    %ecx,%eax
c0031026:	c1 e0 03             	shl    $0x3,%eax
c0031029:	8d 8b 20 10 00 00    	lea    0x1020(%ebx),%ecx
c003102f:	01 c8                	add    %ecx,%eax
c0031031:	83 c0 06             	add    $0x6,%eax
c0031034:	83 ec 08             	sub    $0x8,%esp
c0031037:	52                   	push   %edx
c0031038:	50                   	push   %eax
c0031039:	e8 50 03 00 00       	call   c003138e <disk_do_write>
c003103e:	83 c4 10             	add    $0x10,%esp
c0031041:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0031044:	8d 8b 25 10 00 00    	lea    0x1025(%ebx),%ecx
c003104a:	89 d0                	mov    %edx,%eax
c003104c:	c1 e0 06             	shl    $0x6,%eax
c003104f:	01 d0                	add    %edx,%eax
c0031051:	c1 e0 03             	shl    $0x3,%eax
c0031054:	01 c8                	add    %ecx,%eax
c0031056:	c6 00 00             	movb   $0x0,(%eax)
c0031059:	ff 45 f4             	incl   -0xc(%ebp)
c003105c:	83 7d f4 7f          	cmpl   $0x7f,-0xc(%ebp)
c0031060:	7e 88                	jle    c0030fea <cache_writeback+0x1b>
c0031062:	90                   	nop
c0031063:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031066:	c9                   	leave  
c0031067:	c3                   	ret    

c0031068 <cache_fetch>:
c0031068:	55                   	push   %ebp
c0031069:	89 e5                	mov    %esp,%ebp
c003106b:	53                   	push   %ebx
c003106c:	83 ec 14             	sub    $0x14,%esp
c003106f:	e8 ca f3 ff ff       	call   c003043e <__x86.get_pc_thunk.bx>
c0031074:	81 c3 8c af 00 00    	add    $0xaf8c,%ebx
c003107a:	8b 45 08             	mov    0x8(%ebp),%eax
c003107d:	83 e0 7f             	and    $0x7f,%eax
c0031080:	89 c2                	mov    %eax,%edx
c0031082:	89 d0                	mov    %edx,%eax
c0031084:	c1 e0 06             	shl    $0x6,%eax
c0031087:	01 d0                	add    %edx,%eax
c0031089:	c1 e0 03             	shl    $0x3,%eax
c003108c:	8d 93 20 10 00 00    	lea    0x1020(%ebx),%edx
c0031092:	01 d0                	add    %edx,%eax
c0031094:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0031097:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003109a:	8a 40 04             	mov    0x4(%eax),%al
c003109d:	3c 01                	cmp    $0x1,%al
c003109f:	75 0a                	jne    c00310ab <cache_fetch+0x43>
c00310a1:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00310a4:	8b 00                	mov    (%eax),%eax
c00310a6:	3b 45 08             	cmp    0x8(%ebp),%eax
c00310a9:	74 57                	je     c0031102 <cache_fetch+0x9a>
c00310ab:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00310ae:	8a 40 04             	mov    0x4(%eax),%al
c00310b1:	3c 01                	cmp    $0x1,%al
c00310b3:	75 22                	jne    c00310d7 <cache_fetch+0x6f>
c00310b5:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00310b8:	8a 40 05             	mov    0x5(%eax),%al
c00310bb:	3c 01                	cmp    $0x1,%al
c00310bd:	75 18                	jne    c00310d7 <cache_fetch+0x6f>
c00310bf:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00310c2:	8b 00                	mov    (%eax),%eax
c00310c4:	8b 55 f4             	mov    -0xc(%ebp),%edx
c00310c7:	83 c2 06             	add    $0x6,%edx
c00310ca:	83 ec 08             	sub    $0x8,%esp
c00310cd:	50                   	push   %eax
c00310ce:	52                   	push   %edx
c00310cf:	e8 ba 02 00 00       	call   c003138e <disk_do_write>
c00310d4:	83 c4 10             	add    $0x10,%esp
c00310d7:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00310da:	83 c0 06             	add    $0x6,%eax
c00310dd:	83 ec 08             	sub    $0x8,%esp
c00310e0:	ff 75 08             	pushl  0x8(%ebp)
c00310e3:	50                   	push   %eax
c00310e4:	e8 3a 02 00 00       	call   c0031323 <disk_do_read>
c00310e9:	83 c4 10             	add    $0x10,%esp
c00310ec:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00310ef:	c6 40 04 01          	movb   $0x1,0x4(%eax)
c00310f3:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00310f6:	8b 55 08             	mov    0x8(%ebp),%edx
c00310f9:	89 10                	mov    %edx,(%eax)
c00310fb:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00310fe:	c6 40 05 00          	movb   $0x0,0x5(%eax)
c0031102:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031105:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031108:	c9                   	leave  
c0031109:	c3                   	ret    

c003110a <read_byte>:
c003110a:	55                   	push   %ebp
c003110b:	89 e5                	mov    %esp,%ebp
c003110d:	83 ec 18             	sub    $0x18,%esp
c0031110:	e8 25 f3 ff ff       	call   c003043a <__x86.get_pc_thunk.ax>
c0031115:	05 eb ae 00 00       	add    $0xaeeb,%eax
c003111a:	8b 45 08             	mov    0x8(%ebp),%eax
c003111d:	c1 e8 09             	shr    $0x9,%eax
c0031120:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0031123:	83 ec 0c             	sub    $0xc,%esp
c0031126:	ff 75 f4             	pushl  -0xc(%ebp)
c0031129:	e8 3a ff ff ff       	call   c0031068 <cache_fetch>
c003112e:	83 c4 10             	add    $0x10,%esp
c0031131:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0031134:	8b 45 08             	mov    0x8(%ebp),%eax
c0031137:	25 ff 01 00 00       	and    $0x1ff,%eax
c003113c:	89 c2                	mov    %eax,%edx
c003113e:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0031141:	8a 44 10 06          	mov    0x6(%eax,%edx,1),%al
c0031145:	c9                   	leave  
c0031146:	c3                   	ret    

c0031147 <write_byte>:
c0031147:	55                   	push   %ebp
c0031148:	89 e5                	mov    %esp,%ebp
c003114a:	83 ec 28             	sub    $0x28,%esp
c003114d:	e8 e8 f2 ff ff       	call   c003043a <__x86.get_pc_thunk.ax>
c0031152:	05 ae ae 00 00       	add    $0xaeae,%eax
c0031157:	8b 45 0c             	mov    0xc(%ebp),%eax
c003115a:	88 45 e4             	mov    %al,-0x1c(%ebp)
c003115d:	8b 45 08             	mov    0x8(%ebp),%eax
c0031160:	c1 e8 09             	shr    $0x9,%eax
c0031163:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0031166:	83 ec 0c             	sub    $0xc,%esp
c0031169:	ff 75 f4             	pushl  -0xc(%ebp)
c003116c:	e8 f7 fe ff ff       	call   c0031068 <cache_fetch>
c0031171:	83 c4 10             	add    $0x10,%esp
c0031174:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0031177:	8b 45 08             	mov    0x8(%ebp),%eax
c003117a:	25 ff 01 00 00       	and    $0x1ff,%eax
c003117f:	89 c1                	mov    %eax,%ecx
c0031181:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0031184:	8a 55 e4             	mov    -0x1c(%ebp),%dl
c0031187:	88 54 08 06          	mov    %dl,0x6(%eax,%ecx,1)
c003118b:	8b 45 f0             	mov    -0x10(%ebp),%eax
c003118e:	c6 40 05 01          	movb   $0x1,0x5(%eax)
c0031192:	90                   	nop
c0031193:	c9                   	leave  
c0031194:	c3                   	ret    

c0031195 <__x86.get_pc_thunk.dx>:
c0031195:	8b 14 24             	mov    (%esp),%edx
c0031198:	c3                   	ret    

c0031199 <in_byte>:
c0031199:	55                   	push   %ebp
c003119a:	89 e5                	mov    %esp,%ebp
c003119c:	83 ec 14             	sub    $0x14,%esp
c003119f:	e8 96 f2 ff ff       	call   c003043a <__x86.get_pc_thunk.ax>
c00311a4:	05 5c ae 00 00       	add    $0xae5c,%eax
c00311a9:	8b 45 08             	mov    0x8(%ebp),%eax
c00311ac:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
c00311b0:	8b 45 ec             	mov    -0x14(%ebp),%eax
c00311b3:	89 c2                	mov    %eax,%edx
c00311b5:	ec                   	in     (%dx),%al
c00311b6:	88 45 ff             	mov    %al,-0x1(%ebp)
c00311b9:	8a 45 ff             	mov    -0x1(%ebp),%al
c00311bc:	c9                   	leave  
c00311bd:	c3                   	ret    

c00311be <in_long>:
c00311be:	55                   	push   %ebp
c00311bf:	89 e5                	mov    %esp,%ebp
c00311c1:	83 ec 14             	sub    $0x14,%esp
c00311c4:	e8 71 f2 ff ff       	call   c003043a <__x86.get_pc_thunk.ax>
c00311c9:	05 37 ae 00 00       	add    $0xae37,%eax
c00311ce:	8b 45 08             	mov    0x8(%ebp),%eax
c00311d1:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
c00311d5:	8b 45 ec             	mov    -0x14(%ebp),%eax
c00311d8:	89 c2                	mov    %eax,%edx
c00311da:	ed                   	in     (%dx),%eax
c00311db:	89 45 fc             	mov    %eax,-0x4(%ebp)
c00311de:	8b 45 fc             	mov    -0x4(%ebp),%eax
c00311e1:	c9                   	leave  
c00311e2:	c3                   	ret    

c00311e3 <out_byte>:
c00311e3:	55                   	push   %ebp
c00311e4:	89 e5                	mov    %esp,%ebp
c00311e6:	83 ec 08             	sub    $0x8,%esp
c00311e9:	e8 4c f2 ff ff       	call   c003043a <__x86.get_pc_thunk.ax>
c00311ee:	05 12 ae 00 00       	add    $0xae12,%eax
c00311f3:	8b 45 08             	mov    0x8(%ebp),%eax
c00311f6:	8b 55 0c             	mov    0xc(%ebp),%edx
c00311f9:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c00311fd:	88 55 f8             	mov    %dl,-0x8(%ebp)
c0031200:	8a 45 f8             	mov    -0x8(%ebp),%al
c0031203:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0031206:	ee                   	out    %al,(%dx)
c0031207:	90                   	nop
c0031208:	c9                   	leave  
c0031209:	c3                   	ret    

c003120a <out_long>:
c003120a:	55                   	push   %ebp
c003120b:	89 e5                	mov    %esp,%ebp
c003120d:	83 ec 04             	sub    $0x4,%esp
c0031210:	e8 25 f2 ff ff       	call   c003043a <__x86.get_pc_thunk.ax>
c0031215:	05 eb ad 00 00       	add    $0xadeb,%eax
c003121a:	8b 45 08             	mov    0x8(%ebp),%eax
c003121d:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c0031221:	8b 45 0c             	mov    0xc(%ebp),%eax
c0031224:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0031227:	ef                   	out    %eax,(%dx)
c0031228:	90                   	nop
c0031229:	c9                   	leave  
c003122a:	c3                   	ret    

c003122b <waitdisk>:
c003122b:	55                   	push   %ebp
c003122c:	89 e5                	mov    %esp,%ebp
c003122e:	e8 07 f2 ff ff       	call   c003043a <__x86.get_pc_thunk.ax>
c0031233:	05 cd ad 00 00       	add    $0xadcd,%eax
c0031238:	90                   	nop
c0031239:	68 f7 01 00 00       	push   $0x1f7
c003123e:	e8 56 ff ff ff       	call   c0031199 <in_byte>
c0031243:	83 c4 04             	add    $0x4,%esp
c0031246:	0f b6 c0             	movzbl %al,%eax
c0031249:	25 c0 00 00 00       	and    $0xc0,%eax
c003124e:	83 f8 40             	cmp    $0x40,%eax
c0031251:	75 e6                	jne    c0031239 <waitdisk+0xe>
c0031253:	90                   	nop
c0031254:	c9                   	leave  
c0031255:	c3                   	ret    

c0031256 <ide_prepare>:
c0031256:	55                   	push   %ebp
c0031257:	89 e5                	mov    %esp,%ebp
c0031259:	e8 dc f1 ff ff       	call   c003043a <__x86.get_pc_thunk.ax>
c003125e:	05 a2 ad 00 00       	add    $0xada2,%eax
c0031263:	e8 c3 ff ff ff       	call   c003122b <waitdisk>
c0031268:	6a 00                	push   $0x0
c003126a:	68 f1 01 00 00       	push   $0x1f1
c003126f:	e8 6f ff ff ff       	call   c00311e3 <out_byte>
c0031274:	83 c4 08             	add    $0x8,%esp
c0031277:	6a 01                	push   $0x1
c0031279:	68 f2 01 00 00       	push   $0x1f2
c003127e:	e8 60 ff ff ff       	call   c00311e3 <out_byte>
c0031283:	83 c4 08             	add    $0x8,%esp
c0031286:	8b 45 08             	mov    0x8(%ebp),%eax
c0031289:	0f b6 c0             	movzbl %al,%eax
c003128c:	50                   	push   %eax
c003128d:	68 f3 01 00 00       	push   $0x1f3
c0031292:	e8 4c ff ff ff       	call   c00311e3 <out_byte>
c0031297:	83 c4 08             	add    $0x8,%esp
c003129a:	8b 45 08             	mov    0x8(%ebp),%eax
c003129d:	c1 e8 08             	shr    $0x8,%eax
c00312a0:	0f b6 c0             	movzbl %al,%eax
c00312a3:	50                   	push   %eax
c00312a4:	68 f4 01 00 00       	push   $0x1f4
c00312a9:	e8 35 ff ff ff       	call   c00311e3 <out_byte>
c00312ae:	83 c4 08             	add    $0x8,%esp
c00312b1:	8b 45 08             	mov    0x8(%ebp),%eax
c00312b4:	c1 e8 10             	shr    $0x10,%eax
c00312b7:	0f b6 c0             	movzbl %al,%eax
c00312ba:	50                   	push   %eax
c00312bb:	68 f5 01 00 00       	push   $0x1f5
c00312c0:	e8 1e ff ff ff       	call   c00311e3 <out_byte>
c00312c5:	83 c4 08             	add    $0x8,%esp
c00312c8:	8b 45 08             	mov    0x8(%ebp),%eax
c00312cb:	c1 e8 18             	shr    $0x18,%eax
c00312ce:	83 c8 e0             	or     $0xffffffe0,%eax
c00312d1:	0f b6 c0             	movzbl %al,%eax
c00312d4:	50                   	push   %eax
c00312d5:	68 f6 01 00 00       	push   $0x1f6
c00312da:	e8 04 ff ff ff       	call   c00311e3 <out_byte>
c00312df:	83 c4 08             	add    $0x8,%esp
c00312e2:	90                   	nop
c00312e3:	c9                   	leave  
c00312e4:	c3                   	ret    

c00312e5 <issue_read>:
c00312e5:	55                   	push   %ebp
c00312e6:	89 e5                	mov    %esp,%ebp
c00312e8:	e8 4d f1 ff ff       	call   c003043a <__x86.get_pc_thunk.ax>
c00312ed:	05 13 ad 00 00       	add    $0xad13,%eax
c00312f2:	6a 20                	push   $0x20
c00312f4:	68 f7 01 00 00       	push   $0x1f7
c00312f9:	e8 e5 fe ff ff       	call   c00311e3 <out_byte>
c00312fe:	83 c4 08             	add    $0x8,%esp
c0031301:	90                   	nop
c0031302:	c9                   	leave  
c0031303:	c3                   	ret    

c0031304 <issue_write>:
c0031304:	55                   	push   %ebp
c0031305:	89 e5                	mov    %esp,%ebp
c0031307:	e8 2e f1 ff ff       	call   c003043a <__x86.get_pc_thunk.ax>
c003130c:	05 f4 ac 00 00       	add    $0xacf4,%eax
c0031311:	6a 30                	push   $0x30
c0031313:	68 f7 01 00 00       	push   $0x1f7
c0031318:	e8 c6 fe ff ff       	call   c00311e3 <out_byte>
c003131d:	83 c4 08             	add    $0x8,%esp
c0031320:	90                   	nop
c0031321:	c9                   	leave  
c0031322:	c3                   	ret    

c0031323 <disk_do_read>:
c0031323:	55                   	push   %ebp
c0031324:	89 e5                	mov    %esp,%ebp
c0031326:	53                   	push   %ebx
c0031327:	83 ec 14             	sub    $0x14,%esp
c003132a:	e8 0f f1 ff ff       	call   c003043e <__x86.get_pc_thunk.bx>
c003132f:	81 c3 d1 ac 00 00    	add    $0xacd1,%ebx
c0031335:	e8 ca fb ff ff       	call   c0030f04 <clear_ide_intr>
c003133a:	83 ec 0c             	sub    $0xc,%esp
c003133d:	ff 75 0c             	pushl  0xc(%ebp)
c0031340:	e8 11 ff ff ff       	call   c0031256 <ide_prepare>
c0031345:	83 c4 10             	add    $0x10,%esp
c0031348:	e8 98 ff ff ff       	call   c00312e5 <issue_read>
c003134d:	e8 cc fb ff ff       	call   c0030f1e <wait_ide_intr>
c0031352:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0031359:	eb 25                	jmp    c0031380 <disk_do_read+0x5d>
c003135b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003135e:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0031365:	8b 45 08             	mov    0x8(%ebp),%eax
c0031368:	8d 1c 02             	lea    (%edx,%eax,1),%ebx
c003136b:	83 ec 0c             	sub    $0xc,%esp
c003136e:	68 f0 01 00 00       	push   $0x1f0
c0031373:	e8 46 fe ff ff       	call   c00311be <in_long>
c0031378:	83 c4 10             	add    $0x10,%esp
c003137b:	89 03                	mov    %eax,(%ebx)
c003137d:	ff 45 f4             	incl   -0xc(%ebp)
c0031380:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031383:	83 f8 7f             	cmp    $0x7f,%eax
c0031386:	76 d3                	jbe    c003135b <disk_do_read+0x38>
c0031388:	90                   	nop
c0031389:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c003138c:	c9                   	leave  
c003138d:	c3                   	ret    

c003138e <disk_do_write>:
c003138e:	55                   	push   %ebp
c003138f:	89 e5                	mov    %esp,%ebp
c0031391:	83 ec 10             	sub    $0x10,%esp
c0031394:	e8 a1 f0 ff ff       	call   c003043a <__x86.get_pc_thunk.ax>
c0031399:	05 67 ac 00 00       	add    $0xac67,%eax
c003139e:	ff 75 0c             	pushl  0xc(%ebp)
c00313a1:	e8 b0 fe ff ff       	call   c0031256 <ide_prepare>
c00313a6:	83 c4 04             	add    $0x4,%esp
c00313a9:	e8 56 ff ff ff       	call   c0031304 <issue_write>
c00313ae:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c00313b5:	eb 22                	jmp    c00313d9 <disk_do_write+0x4b>
c00313b7:	8b 45 fc             	mov    -0x4(%ebp),%eax
c00313ba:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c00313c1:	8b 45 08             	mov    0x8(%ebp),%eax
c00313c4:	01 d0                	add    %edx,%eax
c00313c6:	8b 00                	mov    (%eax),%eax
c00313c8:	50                   	push   %eax
c00313c9:	68 f0 01 00 00       	push   $0x1f0
c00313ce:	e8 37 fe ff ff       	call   c003120a <out_long>
c00313d3:	83 c4 08             	add    $0x8,%esp
c00313d6:	ff 45 fc             	incl   -0x4(%ebp)
c00313d9:	8b 45 fc             	mov    -0x4(%ebp),%eax
c00313dc:	83 f8 7f             	cmp    $0x7f,%eax
c00313df:	76 d6                	jbe    c00313b7 <disk_do_write+0x29>
c00313e1:	90                   	nop
c00313e2:	c9                   	leave  
c00313e3:	c3                   	ret    

c00313e4 <in_byte>:
c00313e4:	55                   	push   %ebp
c00313e5:	89 e5                	mov    %esp,%ebp
c00313e7:	83 ec 14             	sub    $0x14,%esp
c00313ea:	e8 4b f0 ff ff       	call   c003043a <__x86.get_pc_thunk.ax>
c00313ef:	05 11 ac 00 00       	add    $0xac11,%eax
c00313f4:	8b 45 08             	mov    0x8(%ebp),%eax
c00313f7:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
c00313fb:	8b 45 ec             	mov    -0x14(%ebp),%eax
c00313fe:	89 c2                	mov    %eax,%edx
c0031400:	ec                   	in     (%dx),%al
c0031401:	88 45 ff             	mov    %al,-0x1(%ebp)
c0031404:	8a 45 ff             	mov    -0x1(%ebp),%al
c0031407:	c9                   	leave  
c0031408:	c3                   	ret    

c0031409 <out_byte>:
c0031409:	55                   	push   %ebp
c003140a:	89 e5                	mov    %esp,%ebp
c003140c:	83 ec 08             	sub    $0x8,%esp
c003140f:	e8 26 f0 ff ff       	call   c003043a <__x86.get_pc_thunk.ax>
c0031414:	05 ec ab 00 00       	add    $0xabec,%eax
c0031419:	8b 45 08             	mov    0x8(%ebp),%eax
c003141c:	8b 55 0c             	mov    0xc(%ebp),%edx
c003141f:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c0031423:	88 55 f8             	mov    %dl,-0x8(%ebp)
c0031426:	8a 45 f8             	mov    -0x8(%ebp),%al
c0031429:	8b 55 fc             	mov    -0x4(%ebp),%edx
c003142c:	ee                   	out    %al,(%dx)
c003142d:	90                   	nop
c003142e:	c9                   	leave  
c003142f:	c3                   	ret    

c0031430 <out_long>:
c0031430:	55                   	push   %ebp
c0031431:	89 e5                	mov    %esp,%ebp
c0031433:	83 ec 04             	sub    $0x4,%esp
c0031436:	e8 ff ef ff ff       	call   c003043a <__x86.get_pc_thunk.ax>
c003143b:	05 c5 ab 00 00       	add    $0xabc5,%eax
c0031440:	8b 45 08             	mov    0x8(%ebp),%eax
c0031443:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c0031447:	8b 45 0c             	mov    0xc(%ebp),%eax
c003144a:	8b 55 fc             	mov    -0x4(%ebp),%edx
c003144d:	ef                   	out    %eax,(%dx)
c003144e:	90                   	nop
c003144f:	c9                   	leave  
c0031450:	c3                   	ret    

c0031451 <dma_prepare>:
c0031451:	55                   	push   %ebp
c0031452:	89 e5                	mov    %esp,%ebp
c0031454:	83 ec 10             	sub    $0x10,%esp
c0031457:	e8 de ef ff ff       	call   c003043a <__x86.get_pc_thunk.ax>
c003145c:	05 a4 ab 00 00       	add    $0xaba4,%eax
c0031461:	8b 55 08             	mov    0x8(%ebp),%edx
c0031464:	81 c2 00 00 00 40    	add    $0x40000000,%edx
c003146a:	89 55 fc             	mov    %edx,-0x4(%ebp)
c003146d:	c7 c2 04 30 09 c0    	mov    $0xc0093004,%edx
c0031473:	8b 4d fc             	mov    -0x4(%ebp),%ecx
c0031476:	89 0a                	mov    %ecx,(%edx)
c0031478:	c7 c2 04 30 09 c0    	mov    $0xc0093004,%edx
c003147e:	66 c7 42 04 00 02    	movw   $0x200,0x4(%edx)
c0031484:	c7 c2 04 30 09 c0    	mov    $0xc0093004,%edx
c003148a:	8a 4a 07             	mov    0x7(%edx),%cl
c003148d:	83 c9 80             	or     $0xffffff80,%ecx
c0031490:	88 4a 07             	mov    %cl,0x7(%edx)
c0031493:	c7 c1 04 30 09 c0    	mov    $0xc0093004,%ecx
c0031499:	66 8b 51 06          	mov    0x6(%ecx),%dx
c003149d:	81 e2 00 80 ff ff    	and    $0xffff8000,%edx
c00314a3:	66 89 51 06          	mov    %dx,0x6(%ecx)
c00314a7:	c7 c0 04 30 09 c0    	mov    $0xc0093004,%eax
c00314ad:	05 00 00 00 40       	add    $0x40000000,%eax
c00314b2:	89 45 f8             	mov    %eax,-0x8(%ebp)
c00314b5:	ff 75 f8             	pushl  -0x8(%ebp)
c00314b8:	68 44 c0 00 00       	push   $0xc044
c00314bd:	e8 6e ff ff ff       	call   c0031430 <out_long>
c00314c2:	83 c4 08             	add    $0x8,%esp
c00314c5:	90                   	nop
c00314c6:	c9                   	leave  
c00314c7:	c3                   	ret    

c00314c8 <dma_issue_read>:
c00314c8:	55                   	push   %ebp
c00314c9:	89 e5                	mov    %esp,%ebp
c00314cb:	e8 6a ef ff ff       	call   c003043a <__x86.get_pc_thunk.ax>
c00314d0:	05 30 ab 00 00       	add    $0xab30,%eax
c00314d5:	68 40 c0 00 00       	push   $0xc040
c00314da:	e8 05 ff ff ff       	call   c00313e4 <in_byte>
c00314df:	83 c4 04             	add    $0x4,%esp
c00314e2:	83 c8 09             	or     $0x9,%eax
c00314e5:	0f b6 c0             	movzbl %al,%eax
c00314e8:	50                   	push   %eax
c00314e9:	68 40 c0 00 00       	push   $0xc040
c00314ee:	e8 16 ff ff ff       	call   c0031409 <out_byte>
c00314f3:	83 c4 08             	add    $0x8,%esp
c00314f6:	90                   	nop
c00314f7:	c9                   	leave  
c00314f8:	c3                   	ret    

c00314f9 <out_byte>:
c00314f9:	55                   	push   %ebp
c00314fa:	89 e5                	mov    %esp,%ebp
c00314fc:	83 ec 08             	sub    $0x8,%esp
c00314ff:	e8 36 ef ff ff       	call   c003043a <__x86.get_pc_thunk.ax>
c0031504:	05 fc aa 00 00       	add    $0xaafc,%eax
c0031509:	8b 45 08             	mov    0x8(%ebp),%eax
c003150c:	8b 55 0c             	mov    0xc(%ebp),%edx
c003150f:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c0031513:	88 55 f8             	mov    %dl,-0x8(%ebp)
c0031516:	8a 45 f8             	mov    -0x8(%ebp),%al
c0031519:	8b 55 fc             	mov    -0x4(%ebp),%edx
c003151c:	ee                   	out    %al,(%dx)
c003151d:	90                   	nop
c003151e:	c9                   	leave  
c003151f:	c3                   	ret    

c0031520 <init_i8259>:
c0031520:	55                   	push   %ebp
c0031521:	89 e5                	mov    %esp,%ebp
c0031523:	e8 12 ef ff ff       	call   c003043a <__x86.get_pc_thunk.ax>
c0031528:	05 d8 aa 00 00       	add    $0xaad8,%eax
c003152d:	68 ff 00 00 00       	push   $0xff
c0031532:	6a 21                	push   $0x21
c0031534:	e8 c0 ff ff ff       	call   c00314f9 <out_byte>
c0031539:	83 c4 08             	add    $0x8,%esp
c003153c:	68 ff 00 00 00       	push   $0xff
c0031541:	68 a1 00 00 00       	push   $0xa1
c0031546:	e8 ae ff ff ff       	call   c00314f9 <out_byte>
c003154b:	83 c4 08             	add    $0x8,%esp
c003154e:	6a 11                	push   $0x11
c0031550:	6a 20                	push   $0x20
c0031552:	e8 a2 ff ff ff       	call   c00314f9 <out_byte>
c0031557:	83 c4 08             	add    $0x8,%esp
c003155a:	6a 20                	push   $0x20
c003155c:	6a 21                	push   $0x21
c003155e:	e8 96 ff ff ff       	call   c00314f9 <out_byte>
c0031563:	83 c4 08             	add    $0x8,%esp
c0031566:	6a 04                	push   $0x4
c0031568:	6a 21                	push   $0x21
c003156a:	e8 8a ff ff ff       	call   c00314f9 <out_byte>
c003156f:	83 c4 08             	add    $0x8,%esp
c0031572:	6a 03                	push   $0x3
c0031574:	6a 21                	push   $0x21
c0031576:	e8 7e ff ff ff       	call   c00314f9 <out_byte>
c003157b:	83 c4 08             	add    $0x8,%esp
c003157e:	6a 11                	push   $0x11
c0031580:	68 a0 00 00 00       	push   $0xa0
c0031585:	e8 6f ff ff ff       	call   c00314f9 <out_byte>
c003158a:	83 c4 08             	add    $0x8,%esp
c003158d:	6a 28                	push   $0x28
c003158f:	68 a1 00 00 00       	push   $0xa1
c0031594:	e8 60 ff ff ff       	call   c00314f9 <out_byte>
c0031599:	83 c4 08             	add    $0x8,%esp
c003159c:	6a 02                	push   $0x2
c003159e:	68 a1 00 00 00       	push   $0xa1
c00315a3:	e8 51 ff ff ff       	call   c00314f9 <out_byte>
c00315a8:	83 c4 08             	add    $0x8,%esp
c00315ab:	6a 03                	push   $0x3
c00315ad:	68 a1 00 00 00       	push   $0xa1
c00315b2:	e8 42 ff ff ff       	call   c00314f9 <out_byte>
c00315b7:	83 c4 08             	add    $0x8,%esp
c00315ba:	6a 68                	push   $0x68
c00315bc:	6a 20                	push   $0x20
c00315be:	e8 36 ff ff ff       	call   c00314f9 <out_byte>
c00315c3:	83 c4 08             	add    $0x8,%esp
c00315c6:	6a 0a                	push   $0xa
c00315c8:	6a 20                	push   $0x20
c00315ca:	e8 2a ff ff ff       	call   c00314f9 <out_byte>
c00315cf:	83 c4 08             	add    $0x8,%esp
c00315d2:	6a 68                	push   $0x68
c00315d4:	68 a0 00 00 00       	push   $0xa0
c00315d9:	e8 1b ff ff ff       	call   c00314f9 <out_byte>
c00315de:	83 c4 08             	add    $0x8,%esp
c00315e1:	6a 0a                	push   $0xa
c00315e3:	68 a0 00 00 00       	push   $0xa0
c00315e8:	e8 0c ff ff ff       	call   c00314f9 <out_byte>
c00315ed:	83 c4 08             	add    $0x8,%esp
c00315f0:	90                   	nop
c00315f1:	c9                   	leave  
c00315f2:	c3                   	ret    

c00315f3 <add_irq_handle>:
c00315f3:	55                   	push   %ebp
c00315f4:	89 e5                	mov    %esp,%ebp
c00315f6:	53                   	push   %ebx
c00315f7:	83 ec 14             	sub    $0x14,%esp
c00315fa:	e8 3f ee ff ff       	call   c003043e <__x86.get_pc_thunk.bx>
c00315ff:	81 c3 01 aa 00 00    	add    $0xaa01,%ebx
c0031605:	83 7d 08 0f          	cmpl   $0xf,0x8(%ebp)
c0031609:	7e 2f                	jle    c003163a <add_irq_handle+0x47>
c003160b:	83 ec 0c             	sub    $0xc,%esp
c003160e:	8d 83 10 cc ff ff    	lea    -0x33f0(%ebx),%eax
c0031614:	50                   	push   %eax
c0031615:	8d 83 5c cd ff ff    	lea    -0x32a4(%ebx),%eax
c003161b:	50                   	push   %eax
c003161c:	6a 16                	push   $0x16
c003161e:	8d 83 23 cc ff ff    	lea    -0x33dd(%ebx),%eax
c0031624:	50                   	push   %eax
c0031625:	8d 83 38 cc ff ff    	lea    -0x33c8(%ebx),%eax
c003162b:	50                   	push   %eax
c003162c:	e8 25 06 00 00       	call   c0031c56 <printk>
c0031631:	83 c4 20             	add    $0x20,%esp
c0031634:	b8 01 00 00 00       	mov    $0x1,%eax
c0031639:	82 8b 83 60 15 01 00 	orb    $0x0,0x1156083(%ebx)
c0031640:	83 f8 20             	cmp    $0x20,%eax
c0031643:	7e 2f                	jle    c0031674 <add_irq_handle+0x81>
c0031645:	83 ec 0c             	sub    $0xc,%esp
c0031648:	8d 83 82 cc ff ff    	lea    -0x337e(%ebx),%eax
c003164e:	50                   	push   %eax
c003164f:	8d 83 5c cd ff ff    	lea    -0x32a4(%ebx),%eax
c0031655:	50                   	push   %eax
c0031656:	6a 17                	push   $0x17
c0031658:	8d 83 23 cc ff ff    	lea    -0x33dd(%ebx),%eax
c003165e:	50                   	push   %eax
c003165f:	8d 83 38 cc ff ff    	lea    -0x33c8(%ebx),%eax
c0031665:	50                   	push   %eax
c0031666:	e8 eb 05 00 00       	call   c0031c56 <printk>
c003166b:	83 c4 20             	add    $0x20,%esp
c003166e:	b8 01 00 00 00       	mov    $0x1,%eax
c0031673:	82 8b 83 60 15 01 00 	orb    $0x0,0x1156083(%ebx)
c003167a:	8d 50 01             	lea    0x1(%eax),%edx
c003167d:	89 93 60 15 01 00    	mov    %edx,0x11560(%ebx)
c0031683:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
c003168a:	8d 83 20 14 01 00    	lea    0x11420(%ebx),%eax
c0031690:	01 d0                	add    %edx,%eax
c0031692:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0031695:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031698:	8b 55 0c             	mov    0xc(%ebp),%edx
c003169b:	89 10                	mov    %edx,(%eax)
c003169d:	8b 45 08             	mov    0x8(%ebp),%eax
c00316a0:	8b 94 83 20 15 01 00 	mov    0x11520(%ebx,%eax,4),%edx
c00316a7:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00316aa:	89 50 04             	mov    %edx,0x4(%eax)
c00316ad:	8b 45 08             	mov    0x8(%ebp),%eax
c00316b0:	8b 55 f4             	mov    -0xc(%ebp),%edx
c00316b3:	89 94 83 20 15 01 00 	mov    %edx,0x11520(%ebx,%eax,4)
c00316ba:	90                   	nop
c00316bb:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00316be:	c9                   	leave  
c00316bf:	c3                   	ret    

c00316c0 <irq_handle>:
c00316c0:	55                   	push   %ebp
c00316c1:	89 e5                	mov    %esp,%ebp
c00316c3:	53                   	push   %ebx
c00316c4:	83 ec 14             	sub    $0x14,%esp
c00316c7:	e8 72 ed ff ff       	call   c003043e <__x86.get_pc_thunk.bx>
c00316cc:	81 c3 34 a9 00 00    	add    $0xa934,%ebx
c00316d2:	8b 45 08             	mov    0x8(%ebp),%eax
c00316d5:	8b 40 20             	mov    0x20(%eax),%eax
c00316d8:	89 45 f0             	mov    %eax,-0x10(%ebp)
c00316db:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
c00316df:	79 2a                	jns    c003170b <irq_handle+0x4b>
c00316e1:	8d 83 6c cd ff ff    	lea    -0x3294(%ebx),%eax
c00316e7:	50                   	push   %eax
c00316e8:	6a 24                	push   $0x24
c00316ea:	8d 83 23 cc ff ff    	lea    -0x33dd(%ebx),%eax
c00316f0:	50                   	push   %eax
c00316f1:	8d 83 a0 cc ff ff    	lea    -0x3360(%ebx),%eax
c00316f7:	50                   	push   %eax
c00316f8:	e8 59 05 00 00       	call   c0031c56 <printk>
c00316fd:	83 c4 10             	add    $0x10,%esp
c0031700:	b8 01 00 00 00       	mov    $0x1,%eax
c0031705:	82 e9 c7             	sub    $0xc7,%cl
c0031708:	00 00                	add    %al,(%eax)
c003170a:	00 81 7d f0 80 00    	add    %al,0x80f07d(%ecx)
c0031710:	00 00                	add    %al,(%eax)
c0031712:	75 13                	jne    c0031727 <irq_handle+0x67>
c0031714:	83 ec 0c             	sub    $0xc,%esp
c0031717:	ff 75 08             	pushl  0x8(%ebp)
c003171a:	e8 36 f0 ff ff       	call   c0030755 <do_syscall>
c003171f:	83 c4 10             	add    $0x10,%esp
c0031722:	e9 ab 00 00 00       	jmp    c00317d2 <irq_handle+0x112>
c0031727:	81 7d f0 e7 03 00 00 	cmpl   $0x3e7,-0x10(%ebp)
c003172e:	7f 34                	jg     c0031764 <irq_handle+0xa4>
c0031730:	8b 45 08             	mov    0x8(%ebp),%eax
c0031733:	8b 40 28             	mov    0x28(%eax),%eax
c0031736:	83 ec 08             	sub    $0x8,%esp
c0031739:	50                   	push   %eax
c003173a:	ff 75 f0             	pushl  -0x10(%ebp)
c003173d:	8d 83 6c cd ff ff    	lea    -0x3294(%ebx),%eax
c0031743:	50                   	push   %eax
c0031744:	6a 28                	push   $0x28
c0031746:	8d 83 23 cc ff ff    	lea    -0x33dd(%ebx),%eax
c003174c:	50                   	push   %eax
c003174d:	8d 83 ec cc ff ff    	lea    -0x3314(%ebx),%eax
c0031753:	50                   	push   %eax
c0031754:	e8 fd 04 00 00       	call   c0031c56 <printk>
c0031759:	83 c4 20             	add    $0x20,%esp
c003175c:	b8 01 00 00 00       	mov    $0x1,%eax
c0031761:	82 eb 6e             	sub    $0x6e,%bl
c0031764:	81 7d f0 e7 03 00 00 	cmpl   $0x3e7,-0x10(%ebp)
c003176b:	7e 65                	jle    c00317d2 <irq_handle+0x112>
c003176d:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0031770:	2d e8 03 00 00       	sub    $0x3e8,%eax
c0031775:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0031778:	83 7d ec 0f          	cmpl   $0xf,-0x14(%ebp)
c003177c:	7e 2f                	jle    c00317ad <irq_handle+0xed>
c003177e:	83 ec 0c             	sub    $0xc,%esp
c0031781:	8d 83 46 cd ff ff    	lea    -0x32ba(%ebx),%eax
c0031787:	50                   	push   %eax
c0031788:	8d 83 6c cd ff ff    	lea    -0x3294(%ebx),%eax
c003178e:	50                   	push   %eax
c003178f:	6a 2c                	push   $0x2c
c0031791:	8d 83 23 cc ff ff    	lea    -0x33dd(%ebx),%eax
c0031797:	50                   	push   %eax
c0031798:	8d 83 38 cc ff ff    	lea    -0x33c8(%ebx),%eax
c003179e:	50                   	push   %eax
c003179f:	e8 b2 04 00 00       	call   c0031c56 <printk>
c00317a4:	83 c4 20             	add    $0x20,%esp
c00317a7:	b8 01 00 00 00       	mov    $0x1,%eax
c00317ac:	82 8b 45 ec 8b 84 83 	orb    $0x83,-0x7b7413bb(%ebx)
c00317b3:	20 15 01 00 89 45    	and    %dl,0x45890001
c00317b9:	f4                   	hlt    
c00317ba:	eb 10                	jmp    c00317cc <irq_handle+0x10c>
c00317bc:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00317bf:	8b 00                	mov    (%eax),%eax
c00317c1:	ff d0                	call   *%eax
c00317c3:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00317c6:	8b 40 04             	mov    0x4(%eax),%eax
c00317c9:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00317cc:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c00317d0:	75 ea                	jne    c00317bc <irq_handle+0xfc>
c00317d2:	90                   	nop
c00317d3:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00317d6:	c9                   	leave  
c00317d7:	c3                   	ret    

c00317d8 <write_idtr>:
c00317d8:	55                   	push   %ebp
c00317d9:	89 e5                	mov    %esp,%ebp
c00317db:	e8 5a ec ff ff       	call   c003043a <__x86.get_pc_thunk.ax>
c00317e0:	05 20 a8 00 00       	add    $0xa820,%eax
c00317e5:	8b 55 0c             	mov    0xc(%ebp),%edx
c00317e8:	4a                   	dec    %edx
c00317e9:	66 89 90 80 1d 01 00 	mov    %dx,0x11d80(%eax)
c00317f0:	8b 55 08             	mov    0x8(%ebp),%edx
c00317f3:	66 89 90 82 1d 01 00 	mov    %dx,0x11d82(%eax)
c00317fa:	8b 55 08             	mov    0x8(%ebp),%edx
c00317fd:	c1 ea 10             	shr    $0x10,%edx
c0031800:	66 89 90 84 1d 01 00 	mov    %dx,0x11d84(%eax)
c0031807:	8d 80 80 1d 01 00    	lea    0x11d80(%eax),%eax
c003180d:	0f 01 18             	lidtl  (%eax)
c0031810:	90                   	nop
c0031811:	5d                   	pop    %ebp
c0031812:	c3                   	ret    

c0031813 <sti>:
c0031813:	55                   	push   %ebp
c0031814:	89 e5                	mov    %esp,%ebp
c0031816:	e8 1f ec ff ff       	call   c003043a <__x86.get_pc_thunk.ax>
c003181b:	05 e5 a7 00 00       	add    $0xa7e5,%eax
c0031820:	fb                   	sti    
c0031821:	90                   	nop
c0031822:	5d                   	pop    %ebp
c0031823:	c3                   	ret    

c0031824 <set_intr>:
c0031824:	55                   	push   %ebp
c0031825:	89 e5                	mov    %esp,%ebp
c0031827:	e8 0e ec ff ff       	call   c003043a <__x86.get_pc_thunk.ax>
c003182c:	05 d4 a7 00 00       	add    $0xa7d4,%eax
c0031831:	8b 45 10             	mov    0x10(%ebp),%eax
c0031834:	8b 55 08             	mov    0x8(%ebp),%edx
c0031837:	66 89 02             	mov    %ax,(%edx)
c003183a:	8b 45 0c             	mov    0xc(%ebp),%eax
c003183d:	8b 55 08             	mov    0x8(%ebp),%edx
c0031840:	66 89 42 02          	mov    %ax,0x2(%edx)
c0031844:	8b 45 08             	mov    0x8(%ebp),%eax
c0031847:	c6 40 04 00          	movb   $0x0,0x4(%eax)
c003184b:	8b 45 08             	mov    0x8(%ebp),%eax
c003184e:	8a 50 05             	mov    0x5(%eax),%dl
c0031851:	83 e2 f0             	and    $0xfffffff0,%edx
c0031854:	83 ca 0e             	or     $0xe,%edx
c0031857:	88 50 05             	mov    %dl,0x5(%eax)
c003185a:	8b 45 08             	mov    0x8(%ebp),%eax
c003185d:	8a 50 05             	mov    0x5(%eax),%dl
c0031860:	83 e2 ef             	and    $0xffffffef,%edx
c0031863:	88 50 05             	mov    %dl,0x5(%eax)
c0031866:	8b 45 14             	mov    0x14(%ebp),%eax
c0031869:	83 e0 03             	and    $0x3,%eax
c003186c:	88 c2                	mov    %al,%dl
c003186e:	8b 45 08             	mov    0x8(%ebp),%eax
c0031871:	83 e2 03             	and    $0x3,%edx
c0031874:	88 d1                	mov    %dl,%cl
c0031876:	c1 e1 05             	shl    $0x5,%ecx
c0031879:	8a 50 05             	mov    0x5(%eax),%dl
c003187c:	83 e2 9f             	and    $0xffffff9f,%edx
c003187f:	09 ca                	or     %ecx,%edx
c0031881:	88 50 05             	mov    %dl,0x5(%eax)
c0031884:	8b 45 08             	mov    0x8(%ebp),%eax
c0031887:	8a 50 05             	mov    0x5(%eax),%dl
c003188a:	83 ca 80             	or     $0xffffff80,%edx
c003188d:	88 50 05             	mov    %dl,0x5(%eax)
c0031890:	8b 45 10             	mov    0x10(%ebp),%eax
c0031893:	c1 e8 10             	shr    $0x10,%eax
c0031896:	8b 55 08             	mov    0x8(%ebp),%edx
c0031899:	66 89 42 06          	mov    %ax,0x6(%edx)
c003189d:	90                   	nop
c003189e:	5d                   	pop    %ebp
c003189f:	c3                   	ret    

c00318a0 <set_trap>:
c00318a0:	55                   	push   %ebp
c00318a1:	89 e5                	mov    %esp,%ebp
c00318a3:	e8 92 eb ff ff       	call   c003043a <__x86.get_pc_thunk.ax>
c00318a8:	05 58 a7 00 00       	add    $0xa758,%eax
c00318ad:	8b 45 10             	mov    0x10(%ebp),%eax
c00318b0:	8b 55 08             	mov    0x8(%ebp),%edx
c00318b3:	66 89 02             	mov    %ax,(%edx)
c00318b6:	8b 45 0c             	mov    0xc(%ebp),%eax
c00318b9:	8b 55 08             	mov    0x8(%ebp),%edx
c00318bc:	66 89 42 02          	mov    %ax,0x2(%edx)
c00318c0:	8b 45 08             	mov    0x8(%ebp),%eax
c00318c3:	c6 40 04 00          	movb   $0x0,0x4(%eax)
c00318c7:	8b 45 08             	mov    0x8(%ebp),%eax
c00318ca:	8a 50 05             	mov    0x5(%eax),%dl
c00318cd:	83 ca 0f             	or     $0xf,%edx
c00318d0:	88 50 05             	mov    %dl,0x5(%eax)
c00318d3:	8b 45 08             	mov    0x8(%ebp),%eax
c00318d6:	8a 50 05             	mov    0x5(%eax),%dl
c00318d9:	83 e2 ef             	and    $0xffffffef,%edx
c00318dc:	88 50 05             	mov    %dl,0x5(%eax)
c00318df:	8b 45 14             	mov    0x14(%ebp),%eax
c00318e2:	83 e0 03             	and    $0x3,%eax
c00318e5:	88 c2                	mov    %al,%dl
c00318e7:	8b 45 08             	mov    0x8(%ebp),%eax
c00318ea:	83 e2 03             	and    $0x3,%edx
c00318ed:	88 d1                	mov    %dl,%cl
c00318ef:	c1 e1 05             	shl    $0x5,%ecx
c00318f2:	8a 50 05             	mov    0x5(%eax),%dl
c00318f5:	83 e2 9f             	and    $0xffffff9f,%edx
c00318f8:	09 ca                	or     %ecx,%edx
c00318fa:	88 50 05             	mov    %dl,0x5(%eax)
c00318fd:	8b 45 08             	mov    0x8(%ebp),%eax
c0031900:	8a 50 05             	mov    0x5(%eax),%dl
c0031903:	83 ca 80             	or     $0xffffff80,%edx
c0031906:	88 50 05             	mov    %dl,0x5(%eax)
c0031909:	8b 45 10             	mov    0x10(%ebp),%eax
c003190c:	c1 e8 10             	shr    $0x10,%eax
c003190f:	8b 55 08             	mov    0x8(%ebp),%edx
c0031912:	66 89 42 06          	mov    %ax,0x6(%edx)
c0031916:	90                   	nop
c0031917:	5d                   	pop    %ebp
c0031918:	c3                   	ret    

c0031919 <init_idt>:
c0031919:	55                   	push   %ebp
c003191a:	89 e5                	mov    %esp,%ebp
c003191c:	53                   	push   %ebx
c003191d:	83 ec 10             	sub    $0x10,%esp
c0031920:	e8 19 eb ff ff       	call   c003043e <__x86.get_pc_thunk.bx>
c0031925:	81 c3 db a6 00 00    	add    $0xa6db,%ebx
c003192b:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0031932:	eb 2b                	jmp    c003195f <init_idt+0x46>
c0031934:	c7 c0 c4 00 03 c0    	mov    $0xc00300c4,%eax
c003193a:	89 c2                	mov    %eax,%edx
c003193c:	8b 45 f8             	mov    -0x8(%ebp),%eax
c003193f:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
c0031946:	8d 83 80 15 01 00    	lea    0x11580(%ebx),%eax
c003194c:	01 c8                	add    %ecx,%eax
c003194e:	6a 00                	push   $0x0
c0031950:	52                   	push   %edx
c0031951:	6a 08                	push   $0x8
c0031953:	50                   	push   %eax
c0031954:	e8 47 ff ff ff       	call   c00318a0 <set_trap>
c0031959:	83 c4 10             	add    $0x10,%esp
c003195c:	ff 45 f8             	incl   -0x8(%ebp)
c003195f:	81 7d f8 ff 00 00 00 	cmpl   $0xff,-0x8(%ebp)
c0031966:	7e cc                	jle    c0031934 <init_idt+0x1b>
c0031968:	c7 c0 52 00 03 c0    	mov    $0xc0030052,%eax
c003196e:	6a 00                	push   $0x0
c0031970:	50                   	push   %eax
c0031971:	6a 08                	push   $0x8
c0031973:	8d 83 80 15 01 00    	lea    0x11580(%ebx),%eax
c0031979:	50                   	push   %eax
c003197a:	e8 21 ff ff ff       	call   c00318a0 <set_trap>
c003197f:	83 c4 10             	add    $0x10,%esp
c0031982:	c7 c0 58 00 03 c0    	mov    $0xc0030058,%eax
c0031988:	89 c2                	mov    %eax,%edx
c003198a:	8d 83 88 15 01 00    	lea    0x11588(%ebx),%eax
c0031990:	6a 00                	push   $0x0
c0031992:	52                   	push   %edx
c0031993:	6a 08                	push   $0x8
c0031995:	50                   	push   %eax
c0031996:	e8 05 ff ff ff       	call   c00318a0 <set_trap>
c003199b:	83 c4 10             	add    $0x10,%esp
c003199e:	c7 c0 5e 00 03 c0    	mov    $0xc003005e,%eax
c00319a4:	89 c2                	mov    %eax,%edx
c00319a6:	8d 83 90 15 01 00    	lea    0x11590(%ebx),%eax
c00319ac:	6a 00                	push   $0x0
c00319ae:	52                   	push   %edx
c00319af:	6a 08                	push   $0x8
c00319b1:	50                   	push   %eax
c00319b2:	e8 e9 fe ff ff       	call   c00318a0 <set_trap>
c00319b7:	83 c4 10             	add    $0x10,%esp
c00319ba:	c7 c0 64 00 03 c0    	mov    $0xc0030064,%eax
c00319c0:	89 c2                	mov    %eax,%edx
c00319c2:	8d 83 98 15 01 00    	lea    0x11598(%ebx),%eax
c00319c8:	6a 00                	push   $0x0
c00319ca:	52                   	push   %edx
c00319cb:	6a 08                	push   $0x8
c00319cd:	50                   	push   %eax
c00319ce:	e8 cd fe ff ff       	call   c00318a0 <set_trap>
c00319d3:	83 c4 10             	add    $0x10,%esp
c00319d6:	c7 c0 6a 00 03 c0    	mov    $0xc003006a,%eax
c00319dc:	89 c2                	mov    %eax,%edx
c00319de:	8d 83 a0 15 01 00    	lea    0x115a0(%ebx),%eax
c00319e4:	6a 00                	push   $0x0
c00319e6:	52                   	push   %edx
c00319e7:	6a 08                	push   $0x8
c00319e9:	50                   	push   %eax
c00319ea:	e8 b1 fe ff ff       	call   c00318a0 <set_trap>
c00319ef:	83 c4 10             	add    $0x10,%esp
c00319f2:	c7 c0 70 00 03 c0    	mov    $0xc0030070,%eax
c00319f8:	89 c2                	mov    %eax,%edx
c00319fa:	8d 83 a8 15 01 00    	lea    0x115a8(%ebx),%eax
c0031a00:	6a 00                	push   $0x0
c0031a02:	52                   	push   %edx
c0031a03:	6a 08                	push   $0x8
c0031a05:	50                   	push   %eax
c0031a06:	e8 95 fe ff ff       	call   c00318a0 <set_trap>
c0031a0b:	83 c4 10             	add    $0x10,%esp
c0031a0e:	c7 c0 76 00 03 c0    	mov    $0xc0030076,%eax
c0031a14:	89 c2                	mov    %eax,%edx
c0031a16:	8d 83 b0 15 01 00    	lea    0x115b0(%ebx),%eax
c0031a1c:	6a 00                	push   $0x0
c0031a1e:	52                   	push   %edx
c0031a1f:	6a 08                	push   $0x8
c0031a21:	50                   	push   %eax
c0031a22:	e8 79 fe ff ff       	call   c00318a0 <set_trap>
c0031a27:	83 c4 10             	add    $0x10,%esp
c0031a2a:	c7 c0 7c 00 03 c0    	mov    $0xc003007c,%eax
c0031a30:	89 c2                	mov    %eax,%edx
c0031a32:	8d 83 b8 15 01 00    	lea    0x115b8(%ebx),%eax
c0031a38:	6a 00                	push   $0x0
c0031a3a:	52                   	push   %edx
c0031a3b:	6a 08                	push   $0x8
c0031a3d:	50                   	push   %eax
c0031a3e:	e8 5d fe ff ff       	call   c00318a0 <set_trap>
c0031a43:	83 c4 10             	add    $0x10,%esp
c0031a46:	c7 c0 82 00 03 c0    	mov    $0xc0030082,%eax
c0031a4c:	89 c2                	mov    %eax,%edx
c0031a4e:	8d 83 c0 15 01 00    	lea    0x115c0(%ebx),%eax
c0031a54:	6a 00                	push   $0x0
c0031a56:	52                   	push   %edx
c0031a57:	6a 08                	push   $0x8
c0031a59:	50                   	push   %eax
c0031a5a:	e8 41 fe ff ff       	call   c00318a0 <set_trap>
c0031a5f:	83 c4 10             	add    $0x10,%esp
c0031a62:	c7 c0 86 00 03 c0    	mov    $0xc0030086,%eax
c0031a68:	89 c2                	mov    %eax,%edx
c0031a6a:	8d 83 c8 15 01 00    	lea    0x115c8(%ebx),%eax
c0031a70:	6a 00                	push   $0x0
c0031a72:	52                   	push   %edx
c0031a73:	6a 08                	push   $0x8
c0031a75:	50                   	push   %eax
c0031a76:	e8 25 fe ff ff       	call   c00318a0 <set_trap>
c0031a7b:	83 c4 10             	add    $0x10,%esp
c0031a7e:	c7 c0 8c 00 03 c0    	mov    $0xc003008c,%eax
c0031a84:	89 c2                	mov    %eax,%edx
c0031a86:	8d 83 d0 15 01 00    	lea    0x115d0(%ebx),%eax
c0031a8c:	6a 00                	push   $0x0
c0031a8e:	52                   	push   %edx
c0031a8f:	6a 08                	push   $0x8
c0031a91:	50                   	push   %eax
c0031a92:	e8 09 fe ff ff       	call   c00318a0 <set_trap>
c0031a97:	83 c4 10             	add    $0x10,%esp
c0031a9a:	c7 c0 90 00 03 c0    	mov    $0xc0030090,%eax
c0031aa0:	89 c2                	mov    %eax,%edx
c0031aa2:	8d 83 d8 15 01 00    	lea    0x115d8(%ebx),%eax
c0031aa8:	6a 00                	push   $0x0
c0031aaa:	52                   	push   %edx
c0031aab:	6a 08                	push   $0x8
c0031aad:	50                   	push   %eax
c0031aae:	e8 ed fd ff ff       	call   c00318a0 <set_trap>
c0031ab3:	83 c4 10             	add    $0x10,%esp
c0031ab6:	c7 c0 94 00 03 c0    	mov    $0xc0030094,%eax
c0031abc:	89 c2                	mov    %eax,%edx
c0031abe:	8d 83 e0 15 01 00    	lea    0x115e0(%ebx),%eax
c0031ac4:	6a 00                	push   $0x0
c0031ac6:	52                   	push   %edx
c0031ac7:	6a 08                	push   $0x8
c0031ac9:	50                   	push   %eax
c0031aca:	e8 d1 fd ff ff       	call   c00318a0 <set_trap>
c0031acf:	83 c4 10             	add    $0x10,%esp
c0031ad2:	c7 c0 98 00 03 c0    	mov    $0xc0030098,%eax
c0031ad8:	89 c2                	mov    %eax,%edx
c0031ada:	8d 83 e8 15 01 00    	lea    0x115e8(%ebx),%eax
c0031ae0:	6a 00                	push   $0x0
c0031ae2:	52                   	push   %edx
c0031ae3:	6a 08                	push   $0x8
c0031ae5:	50                   	push   %eax
c0031ae6:	e8 b5 fd ff ff       	call   c00318a0 <set_trap>
c0031aeb:	83 c4 10             	add    $0x10,%esp
c0031aee:	c7 c0 9c 00 03 c0    	mov    $0xc003009c,%eax
c0031af4:	89 c2                	mov    %eax,%edx
c0031af6:	8d 83 f0 15 01 00    	lea    0x115f0(%ebx),%eax
c0031afc:	6a 00                	push   $0x0
c0031afe:	52                   	push   %edx
c0031aff:	6a 08                	push   $0x8
c0031b01:	50                   	push   %eax
c0031b02:	e8 99 fd ff ff       	call   c00318a0 <set_trap>
c0031b07:	83 c4 10             	add    $0x10,%esp
c0031b0a:	c7 c0 a0 00 03 c0    	mov    $0xc00300a0,%eax
c0031b10:	89 c2                	mov    %eax,%edx
c0031b12:	8d 83 80 19 01 00    	lea    0x11980(%ebx),%eax
c0031b18:	6a 03                	push   $0x3
c0031b1a:	52                   	push   %edx
c0031b1b:	6a 08                	push   $0x8
c0031b1d:	50                   	push   %eax
c0031b1e:	e8 7d fd ff ff       	call   c00318a0 <set_trap>
c0031b23:	83 c4 10             	add    $0x10,%esp
c0031b26:	c7 c0 a9 00 03 c0    	mov    $0xc00300a9,%eax
c0031b2c:	89 c2                	mov    %eax,%edx
c0031b2e:	8d 83 80 16 01 00    	lea    0x11680(%ebx),%eax
c0031b34:	6a 00                	push   $0x0
c0031b36:	52                   	push   %edx
c0031b37:	6a 08                	push   $0x8
c0031b39:	50                   	push   %eax
c0031b3a:	e8 e5 fc ff ff       	call   c0031824 <set_intr>
c0031b3f:	83 c4 10             	add    $0x10,%esp
c0031b42:	c7 c0 b2 00 03 c0    	mov    $0xc00300b2,%eax
c0031b48:	89 c2                	mov    %eax,%edx
c0031b4a:	8d 83 88 16 01 00    	lea    0x11688(%ebx),%eax
c0031b50:	6a 00                	push   $0x0
c0031b52:	52                   	push   %edx
c0031b53:	6a 08                	push   $0x8
c0031b55:	50                   	push   %eax
c0031b56:	e8 c9 fc ff ff       	call   c0031824 <set_intr>
c0031b5b:	83 c4 10             	add    $0x10,%esp
c0031b5e:	c7 c0 bb 00 03 c0    	mov    $0xc00300bb,%eax
c0031b64:	89 c2                	mov    %eax,%edx
c0031b66:	8d 83 f0 16 01 00    	lea    0x116f0(%ebx),%eax
c0031b6c:	6a 00                	push   $0x0
c0031b6e:	52                   	push   %edx
c0031b6f:	6a 08                	push   $0x8
c0031b71:	50                   	push   %eax
c0031b72:	e8 ad fc ff ff       	call   c0031824 <set_intr>
c0031b77:	83 c4 10             	add    $0x10,%esp
c0031b7a:	68 00 08 00 00       	push   $0x800
c0031b7f:	8d 83 80 15 01 00    	lea    0x11580(%ebx),%eax
c0031b85:	50                   	push   %eax
c0031b86:	e8 4d fc ff ff       	call   c00317d8 <write_idtr>
c0031b8b:	83 c4 08             	add    $0x8,%esp
c0031b8e:	e8 80 fc ff ff       	call   c0031813 <sti>
c0031b93:	90                   	nop
c0031b94:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031b97:	c9                   	leave  
c0031b98:	c3                   	ret    

c0031b99 <in_byte>:
c0031b99:	55                   	push   %ebp
c0031b9a:	89 e5                	mov    %esp,%ebp
c0031b9c:	83 ec 14             	sub    $0x14,%esp
c0031b9f:	e8 96 e8 ff ff       	call   c003043a <__x86.get_pc_thunk.ax>
c0031ba4:	05 5c a4 00 00       	add    $0xa45c,%eax
c0031ba9:	8b 45 08             	mov    0x8(%ebp),%eax
c0031bac:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
c0031bb0:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0031bb3:	89 c2                	mov    %eax,%edx
c0031bb5:	ec                   	in     (%dx),%al
c0031bb6:	88 45 ff             	mov    %al,-0x1(%ebp)
c0031bb9:	8a 45 ff             	mov    -0x1(%ebp),%al
c0031bbc:	c9                   	leave  
c0031bbd:	c3                   	ret    

c0031bbe <out_byte>:
c0031bbe:	55                   	push   %ebp
c0031bbf:	89 e5                	mov    %esp,%ebp
c0031bc1:	83 ec 08             	sub    $0x8,%esp
c0031bc4:	e8 71 e8 ff ff       	call   c003043a <__x86.get_pc_thunk.ax>
c0031bc9:	05 37 a4 00 00       	add    $0xa437,%eax
c0031bce:	8b 45 08             	mov    0x8(%ebp),%eax
c0031bd1:	8b 55 0c             	mov    0xc(%ebp),%edx
c0031bd4:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c0031bd8:	88 55 f8             	mov    %dl,-0x8(%ebp)
c0031bdb:	8a 45 f8             	mov    -0x8(%ebp),%al
c0031bde:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0031be1:	ee                   	out    %al,(%dx)
c0031be2:	90                   	nop
c0031be3:	c9                   	leave  
c0031be4:	c3                   	ret    

c0031be5 <init_serial>:
c0031be5:	55                   	push   %ebp
c0031be6:	89 e5                	mov    %esp,%ebp
c0031be8:	e8 4d e8 ff ff       	call   c003043a <__x86.get_pc_thunk.ax>
c0031bed:	05 13 a4 00 00       	add    $0xa413,%eax
c0031bf2:	90                   	nop
c0031bf3:	5d                   	pop    %ebp
c0031bf4:	c3                   	ret    

c0031bf5 <serial_idle>:
c0031bf5:	55                   	push   %ebp
c0031bf6:	89 e5                	mov    %esp,%ebp
c0031bf8:	e8 3d e8 ff ff       	call   c003043a <__x86.get_pc_thunk.ax>
c0031bfd:	05 03 a4 00 00       	add    $0xa403,%eax
c0031c02:	68 fd 03 00 00       	push   $0x3fd
c0031c07:	e8 8d ff ff ff       	call   c0031b99 <in_byte>
c0031c0c:	83 c4 04             	add    $0x4,%esp
c0031c0f:	0f b6 c0             	movzbl %al,%eax
c0031c12:	83 e0 20             	and    $0x20,%eax
c0031c15:	85 c0                	test   %eax,%eax
c0031c17:	0f 95 c0             	setne  %al
c0031c1a:	0f b6 c0             	movzbl %al,%eax
c0031c1d:	c9                   	leave  
c0031c1e:	c3                   	ret    

c0031c1f <serial_printc>:
c0031c1f:	55                   	push   %ebp
c0031c20:	89 e5                	mov    %esp,%ebp
c0031c22:	83 ec 04             	sub    $0x4,%esp
c0031c25:	e8 10 e8 ff ff       	call   c003043a <__x86.get_pc_thunk.ax>
c0031c2a:	05 d6 a3 00 00       	add    $0xa3d6,%eax
c0031c2f:	8b 45 08             	mov    0x8(%ebp),%eax
c0031c32:	88 45 fc             	mov    %al,-0x4(%ebp)
c0031c35:	90                   	nop
c0031c36:	e8 ba ff ff ff       	call   c0031bf5 <serial_idle>
c0031c3b:	85 c0                	test   %eax,%eax
c0031c3d:	74 f7                	je     c0031c36 <serial_printc+0x17>
c0031c3f:	8a 45 fc             	mov    -0x4(%ebp),%al
c0031c42:	0f b6 c0             	movzbl %al,%eax
c0031c45:	50                   	push   %eax
c0031c46:	68 f8 03 00 00       	push   $0x3f8
c0031c4b:	e8 6e ff ff ff       	call   c0031bbe <out_byte>
c0031c50:	83 c4 08             	add    $0x8,%esp
c0031c53:	90                   	nop
c0031c54:	c9                   	leave  
c0031c55:	c3                   	ret    

c0031c56 <printk>:
c0031c56:	55                   	push   %ebp
c0031c57:	89 e5                	mov    %esp,%ebp
c0031c59:	53                   	push   %ebx
c0031c5a:	83 ec 14             	sub    $0x14,%esp
c0031c5d:	e8 dc e7 ff ff       	call   c003043e <__x86.get_pc_thunk.bx>
c0031c62:	81 c3 9e a3 00 00    	add    $0xa39e,%ebx
c0031c68:	8d 45 0c             	lea    0xc(%ebp),%eax
c0031c6b:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0031c6e:	8b 45 08             	mov    0x8(%ebp),%eax
c0031c71:	ff 75 f4             	pushl  -0xc(%ebp)
c0031c74:	50                   	push   %eax
c0031c75:	68 00 01 00 00       	push   $0x100
c0031c7a:	8d 83 a0 1d 01 00    	lea    0x11da0(%ebx),%eax
c0031c80:	50                   	push   %eax
c0031c81:	e8 ea 04 00 00       	call   c0032170 <vsnprintf>
c0031c86:	83 c4 10             	add    $0x10,%esp
c0031c89:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0031c8c:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0031c8f:	83 ec 04             	sub    $0x4,%esp
c0031c92:	50                   	push   %eax
c0031c93:	8d 83 a0 1d 01 00    	lea    0x11da0(%ebx),%eax
c0031c99:	50                   	push   %eax
c0031c9a:	6a 01                	push   $0x1
c0031c9c:	e8 0a e6 ff ff       	call   c00302ab <fs_write>
c0031ca1:	83 c4 10             	add    $0x10,%esp
c0031ca4:	90                   	nop
c0031ca5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031ca8:	c9                   	leave  
c0031ca9:	c3                   	ret    

c0031caa <sbrk>:
c0031caa:	55                   	push   %ebp
c0031cab:	89 e5                	mov    %esp,%ebp
c0031cad:	53                   	push   %ebx
c0031cae:	83 ec 04             	sub    $0x4,%esp
c0031cb1:	e8 84 e7 ff ff       	call   c003043a <__x86.get_pc_thunk.ax>
c0031cb6:	05 4a a3 00 00       	add    $0xa34a,%eax
c0031cbb:	83 ec 0c             	sub    $0xc,%esp
c0031cbe:	8d 90 78 cd ff ff    	lea    -0x3288(%eax),%edx
c0031cc4:	52                   	push   %edx
c0031cc5:	8d 90 d8 cd ff ff    	lea    -0x3228(%eax),%edx
c0031ccb:	52                   	push   %edx
c0031ccc:	6a 08                	push   $0x8
c0031cce:	8d 90 7a cd ff ff    	lea    -0x3286(%eax),%edx
c0031cd4:	52                   	push   %edx
c0031cd5:	8d 90 8c cd ff ff    	lea    -0x3274(%eax),%edx
c0031cdb:	52                   	push   %edx
c0031cdc:	89 c3                	mov    %eax,%ebx
c0031cde:	e8 73 ff ff ff       	call   c0031c56 <printk>
c0031ce3:	83 c4 20             	add    $0x20,%esp
c0031ce6:	b8 01 00 00 00       	mov    $0x1,%eax
c0031ceb:	82 b8 00 00 00 00 8b 	cmpb   $0x8b,0x0(%eax)
c0031cf2:	5d                   	pop    %ebp
c0031cf3:	fc                   	cld    
c0031cf4:	c9                   	leave  
c0031cf5:	c3                   	ret    
c0031cf6:	66 90                	xchg   %ax,%ax
c0031cf8:	66 90                	xchg   %ax,%ax
c0031cfa:	66 90                	xchg   %ax,%ax
c0031cfc:	66 90                	xchg   %ax,%ax
c0031cfe:	66 90                	xchg   %ax,%ax

c0031d00 <mm_malloc>:
c0031d00:	55                   	push   %ebp
c0031d01:	31 c0                	xor    %eax,%eax
c0031d03:	89 e5                	mov    %esp,%ebp
c0031d05:	57                   	push   %edi
c0031d06:	56                   	push   %esi
c0031d07:	53                   	push   %ebx
c0031d08:	83 ec 3c             	sub    $0x3c,%esp
c0031d0b:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c0031d0e:	85 db                	test   %ebx,%ebx
c0031d10:	0f 8e 36 02 00 00    	jle    c0031f4c <mm_malloc+0x24c>
c0031d16:	e8 c6 ee ff ff       	call   c0030be1 <get_updir>
c0031d1b:	89 c6                	mov    %eax,%esi
c0031d1d:	e8 d4 ee ff ff       	call   c0030bf6 <get_ucr3>
c0031d22:	8b 55 08             	mov    0x8(%ebp),%edx
c0031d25:	8d 5c 1a ff          	lea    -0x1(%edx,%ebx,1),%ebx
c0031d29:	89 5d e0             	mov    %ebx,-0x20(%ebp)
c0031d2c:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0031d2f:	b8 00 10 00 00       	mov    $0x1000,%eax
c0031d34:	29 d0                	sub    %edx,%eax
c0031d36:	89 da                	mov    %ebx,%edx
c0031d38:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
c0031d3e:	01 d0                	add    %edx,%eax
c0031d40:	85 c0                	test   %eax,%eax
c0031d42:	0f 8e c0 00 00 00    	jle    c0031e08 <mm_malloc+0x108>
c0031d48:	8b 55 08             	mov    0x8(%ebp),%edx
c0031d4b:	83 e8 01             	sub    $0x1,%eax
c0031d4e:	89 f7                	mov    %esi,%edi
c0031d50:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0031d55:	8d 84 02 00 10 00 00 	lea    0x1000(%edx,%eax,1),%eax
c0031d5c:	89 d3                	mov    %edx,%ebx
c0031d5e:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0031d61:	eb 51                	jmp    c0031db4 <mm_malloc+0xb4>
c0031d63:	90                   	nop
c0031d64:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0031d68:	8b 31                	mov    (%ecx),%esi
c0031d6a:	81 e6 00 f0 ff ff    	and    $0xfffff000,%esi
c0031d70:	81 ee 00 00 00 40    	sub    $0x40000000,%esi
c0031d76:	89 d8                	mov    %ebx,%eax
c0031d78:	c1 e8 0a             	shr    $0xa,%eax
c0031d7b:	25 fc 0f 00 00       	and    $0xffc,%eax
c0031d80:	01 c6                	add    %eax,%esi
c0031d82:	f6 06 01             	testb  $0x1,(%esi)
c0031d85:	75 22                	jne    c0031da9 <mm_malloc+0xa9>
c0031d87:	a1 20 c0 03 c0       	mov    0xc003c020,%eax
c0031d8c:	3d ff 7f 00 00       	cmp    $0x7fff,%eax
c0031d91:	0f 8f c1 01 00 00    	jg     c0031f58 <mm_malloc+0x258>
c0031d97:	89 c1                	mov    %eax,%ecx
c0031d99:	83 c0 01             	add    $0x1,%eax
c0031d9c:	c1 e1 0c             	shl    $0xc,%ecx
c0031d9f:	83 c9 07             	or     $0x7,%ecx
c0031da2:	89 0e                	mov    %ecx,(%esi)
c0031da4:	a3 20 c0 03 c0       	mov    %eax,0xc003c020
c0031da9:	81 c3 00 10 00 00    	add    $0x1000,%ebx
c0031daf:	3b 5d e4             	cmp    -0x1c(%ebp),%ebx
c0031db2:	74 54                	je     c0031e08 <mm_malloc+0x108>
c0031db4:	89 d8                	mov    %ebx,%eax
c0031db6:	c1 e8 16             	shr    $0x16,%eax
c0031db9:	8d 0c 87             	lea    (%edi,%eax,4),%ecx
c0031dbc:	f6 01 01             	testb  $0x1,(%ecx)
c0031dbf:	75 a7                	jne    c0031d68 <mm_malloc+0x68>
c0031dc1:	a1 00 e0 04 c0       	mov    0xc004e000,%eax
c0031dc6:	89 c6                	mov    %eax,%esi
c0031dc8:	83 c0 01             	add    $0x1,%eax
c0031dcb:	c1 e6 0c             	shl    $0xc,%esi
c0031dce:	81 c6 00 f0 04 c0    	add    $0xc004f000,%esi
c0031dd4:	a3 00 e0 04 c0       	mov    %eax,0xc004e000
c0031dd9:	8d 86 00 00 00 40    	lea    0x40000000(%esi),%eax
c0031ddf:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0031de4:	83 c8 07             	or     $0x7,%eax
c0031de7:	89 01                	mov    %eax,(%ecx)
c0031de9:	c7 44 24 08 00 10 00 	movl   $0x1000,0x8(%esp)
c0031df0:	00 
c0031df1:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0031df8:	00 
c0031df9:	89 34 24             	mov    %esi,(%esp)
c0031dfc:	e8 db 01 00 00       	call   c0031fdc <memset>
c0031e01:	e9 70 ff ff ff       	jmp    c0031d76 <mm_malloc+0x76>
c0031e06:	66 90                	xchg   %ax,%ax
c0031e08:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c0031e0b:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0031e0e:	81 eb 00 00 00 40    	sub    $0x40000000,%ebx
c0031e14:	81 e3 00 f0 ff ff    	and    $0xfffff000,%ebx
c0031e1a:	c1 e8 16             	shr    $0x16,%eax
c0031e1d:	8b 34 83             	mov    (%ebx,%eax,4),%esi
c0031e20:	f7 c6 01 00 00 00    	test   $0x1,%esi
c0031e26:	75 32                	jne    c0031e5a <mm_malloc+0x15a>
c0031e28:	c7 44 24 10 01 8e 03 	movl   $0xc0038e01,0x10(%esp)
c0031e2f:	c0 
c0031e30:	c7 44 24 0c 6a 8e 03 	movl   $0xc0038e6a,0xc(%esp)
c0031e37:	c0 
c0031e38:	c7 44 24 08 11 00 00 	movl   $0x11,0x8(%esp)
c0031e3f:	00 
c0031e40:	c7 44 24 04 f0 8d 03 	movl   $0xc0038df0,0x4(%esp)
c0031e47:	c0 
c0031e48:	c7 04 24 14 8e 03 c0 	movl   $0xc0038e14,(%esp)
c0031e4f:	e8 02 fe ff ff       	call   c0031c56 <printk>
c0031e54:	b8 01 00 00 00       	mov    $0x1,%eax
c0031e59:	82 8b 55 e0 8d 86 00 	orb    $0x0,-0x79721fab(%ebx)
c0031e60:	00 00                	add    %al,(%eax)
c0031e62:	c0 25 00 f0 ff ff c1 	shlb   $0xc1,0xfffff000
c0031e69:	ea 0c 81 e2 ff 03 00 	ljmp   $0x3,$0xffe2810c
c0031e70:	00 f6                	add    %dh,%dh
c0031e72:	04 90                	add    $0x90,%al
c0031e74:	01 75 32             	add    %esi,0x32(%ebp)
c0031e77:	c7 44 24 10 09 8e 03 	movl   $0xc0038e09,0x10(%esp)
c0031e7e:	c0 
c0031e7f:	c7 44 24 0c 6a 8e 03 	movl   $0xc0038e6a,0xc(%esp)
c0031e86:	c0 
c0031e87:	c7 44 24 08 13 00 00 	movl   $0x13,0x8(%esp)
c0031e8e:	00 
c0031e8f:	c7 44 24 04 f0 8d 03 	movl   $0xc0038df0,0x4(%esp)
c0031e96:	c0 
c0031e97:	c7 04 24 14 8e 03 c0 	movl   $0xc0038e14,(%esp)
c0031e9e:	e8 b3 fd ff ff       	call   c0031c56 <printk>
c0031ea3:	b8 01 00 00 00       	mov    $0x1,%eax
c0031ea8:	82 8b 45 08 c1 e8 16 	orb    $0x16,-0x173ef7bb(%ebx)
c0031eaf:	8b 1c 83             	mov    (%ebx,%eax,4),%ebx
c0031eb2:	f6 c3 01             	test   $0x1,%bl
c0031eb5:	75 32                	jne    c0031ee9 <mm_malloc+0x1e9>
c0031eb7:	c7 44 24 10 01 8e 03 	movl   $0xc0038e01,0x10(%esp)
c0031ebe:	c0 
c0031ebf:	c7 44 24 0c 6a 8e 03 	movl   $0xc0038e6a,0xc(%esp)
c0031ec6:	c0 
c0031ec7:	c7 44 24 08 11 00 00 	movl   $0x11,0x8(%esp)
c0031ece:	00 
c0031ecf:	c7 44 24 04 f0 8d 03 	movl   $0xc0038df0,0x4(%esp)
c0031ed6:	c0 
c0031ed7:	c7 04 24 14 8e 03 c0 	movl   $0xc0038e14,(%esp)
c0031ede:	e8 73 fd ff ff       	call   c0031c56 <printk>
c0031ee3:	b8 01 00 00 00       	mov    $0x1,%eax
c0031ee8:	82 8b 55 08 8d 83 00 	orb    $0x0,-0x7c72f7ab(%ebx)
c0031eef:	00 00                	add    %al,(%eax)
c0031ef1:	c0 25 00 f0 ff ff c1 	shlb   $0xc1,0xfffff000
c0031ef8:	ea 0c 81 e2 ff 03 00 	ljmp   $0x3,$0xffe2810c
c0031eff:	00 8b 1c 90 f6 c3    	add    %cl,-0x3c096fe4(%ebx)
c0031f05:	01 75 32             	add    %esi,0x32(%ebp)
c0031f08:	c7 44 24 10 09 8e 03 	movl   $0xc0038e09,0x10(%esp)
c0031f0f:	c0 
c0031f10:	c7 44 24 0c 6a 8e 03 	movl   $0xc0038e6a,0xc(%esp)
c0031f17:	c0 
c0031f18:	c7 44 24 08 13 00 00 	movl   $0x13,0x8(%esp)
c0031f1f:	00 
c0031f20:	c7 44 24 04 f0 8d 03 	movl   $0xc0038df0,0x4(%esp)
c0031f27:	c0 
c0031f28:	c7 04 24 14 8e 03 c0 	movl   $0xc0038e14,(%esp)
c0031f2f:	e8 22 fd ff ff       	call   c0031c56 <printk>
c0031f34:	b8 01 00 00 00       	mov    $0x1,%eax
c0031f39:	82 8b 55 08 89 d8 25 	orb    $0x25,-0x2776f7ab(%ebx)
c0031f40:	00 f0                	add    %dh,%al
c0031f42:	ff                   	(bad)  
c0031f43:	ff 81 e2 ff 0f 00    	incl   0xfffe2(%ecx)
c0031f49:	00 09                	add    %cl,(%ecx)
c0031f4b:	d0 83 c4 3c 5b 5e    	rolb   0x5e5b3cc4(%ebx)
c0031f51:	5f                   	pop    %edi
c0031f52:	5d                   	pop    %ebp
c0031f53:	c3                   	ret    
c0031f54:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0031f58:	c7 44 24 10 dd 8d 03 	movl   $0xc0038ddd,0x10(%esp)
c0031f5f:	c0 
c0031f60:	c7 44 24 0c 60 8e 03 	movl   $0xc0038e60,0xc(%esp)
c0031f67:	c0 
c0031f68:	c7 44 24 08 31 00 00 	movl   $0x31,0x8(%esp)
c0031f6f:	00 
c0031f70:	c7 44 24 04 f0 8d 03 	movl   $0xc0038df0,0x4(%esp)
c0031f77:	c0 
c0031f78:	c7 04 24 14 8e 03 c0 	movl   $0xc0038e14,(%esp)
c0031f7f:	e8 d2 fc ff ff       	call   c0031c56 <printk>
c0031f84:	b8 01 00 00 00       	mov    $0x1,%eax
c0031f89:	82 a1 20 c0 03 c0 e9 	andb   $0xe9,-0x3ffc3fe0(%ecx)
c0031f90:	03 fe                	add    %esi,%edi
c0031f92:	ff                   	(bad)  
c0031f93:	ff                   	.byte 0xff

c0031f94 <memcpy>:
c0031f94:	55                   	push   %ebp
c0031f95:	89 e5                	mov    %esp,%ebp
c0031f97:	56                   	push   %esi
c0031f98:	57                   	push   %edi
c0031f99:	53                   	push   %ebx
c0031f9a:	8b 7d 08             	mov    0x8(%ebp),%edi
c0031f9d:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0031fa0:	8b 75 0c             	mov    0xc(%ebp),%esi
c0031fa3:	fc                   	cld    
c0031fa4:	83 f9 08             	cmp    $0x8,%ecx
c0031fa7:	76 26                	jbe    c0031fcf <memcpy+0x3b>
c0031fa9:	89 fa                	mov    %edi,%edx
c0031fab:	89 cb                	mov    %ecx,%ebx
c0031fad:	83 e2 03             	and    $0x3,%edx
c0031fb0:	74 10                	je     c0031fc2 <memcpy+0x2e>
c0031fb2:	b9 04 00 00 00       	mov    $0x4,%ecx
c0031fb7:	29 d1                	sub    %edx,%ecx
c0031fb9:	83 e1 03             	and    $0x3,%ecx
c0031fbc:	29 cb                	sub    %ecx,%ebx
c0031fbe:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0031fc0:	89 d9                	mov    %ebx,%ecx
c0031fc2:	c1 e9 02             	shr    $0x2,%ecx
c0031fc5:	8d 76 00             	lea    0x0(%esi),%esi
c0031fc8:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
c0031fca:	89 d9                	mov    %ebx,%ecx
c0031fcc:	83 e1 03             	and    $0x3,%ecx
c0031fcf:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0031fd1:	8b 45 08             	mov    0x8(%ebp),%eax
c0031fd4:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0031fd7:	5b                   	pop    %ebx
c0031fd8:	5f                   	pop    %edi
c0031fd9:	5e                   	pop    %esi
c0031fda:	c9                   	leave  
c0031fdb:	c3                   	ret    

c0031fdc <memset>:
c0031fdc:	55                   	push   %ebp
c0031fdd:	89 e5                	mov    %esp,%ebp
c0031fdf:	57                   	push   %edi
c0031fe0:	8b 7d 08             	mov    0x8(%ebp),%edi
c0031fe3:	0f b6 45 0c          	movzbl 0xc(%ebp),%eax
c0031fe7:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0031fea:	fc                   	cld    
c0031feb:	83 f9 10             	cmp    $0x10,%ecx
c0031fee:	76 69                	jbe    c0032059 <memset+0x7d>
c0031ff0:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031ff6:	74 4c                	je     c0032044 <memset+0x68>
c0031ff8:	88 07                	mov    %al,(%edi)
c0031ffa:	47                   	inc    %edi
c0031ffb:	49                   	dec    %ecx
c0031ffc:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0032002:	74 40                	je     c0032044 <memset+0x68>
c0032004:	88 07                	mov    %al,(%edi)
c0032006:	47                   	inc    %edi
c0032007:	49                   	dec    %ecx
c0032008:	f7 c7 07 00 00 00    	test   $0x7,%edi
c003200e:	74 34                	je     c0032044 <memset+0x68>
c0032010:	88 07                	mov    %al,(%edi)
c0032012:	47                   	inc    %edi
c0032013:	49                   	dec    %ecx
c0032014:	f7 c7 07 00 00 00    	test   $0x7,%edi
c003201a:	74 28                	je     c0032044 <memset+0x68>
c003201c:	88 07                	mov    %al,(%edi)
c003201e:	47                   	inc    %edi
c003201f:	49                   	dec    %ecx
c0032020:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0032026:	74 1c                	je     c0032044 <memset+0x68>
c0032028:	88 07                	mov    %al,(%edi)
c003202a:	47                   	inc    %edi
c003202b:	49                   	dec    %ecx
c003202c:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0032032:	74 10                	je     c0032044 <memset+0x68>
c0032034:	88 07                	mov    %al,(%edi)
c0032036:	47                   	inc    %edi
c0032037:	49                   	dec    %ecx
c0032038:	f7 c7 07 00 00 00    	test   $0x7,%edi
c003203e:	74 04                	je     c0032044 <memset+0x68>
c0032040:	88 07                	mov    %al,(%edi)
c0032042:	47                   	inc    %edi
c0032043:	49                   	dec    %ecx
c0032044:	88 c4                	mov    %al,%ah
c0032046:	89 c2                	mov    %eax,%edx
c0032048:	c1 e2 10             	shl    $0x10,%edx
c003204b:	09 d0                	or     %edx,%eax
c003204d:	89 ca                	mov    %ecx,%edx
c003204f:	c1 e9 02             	shr    $0x2,%ecx
c0032052:	83 e2 03             	and    $0x3,%edx
c0032055:	f3 ab                	rep stos %eax,%es:(%edi)
c0032057:	89 d1                	mov    %edx,%ecx
c0032059:	f3 aa                	rep stos %al,%es:(%edi)
c003205b:	8b 45 08             	mov    0x8(%ebp),%eax
c003205e:	8d 65 fc             	lea    -0x4(%ebp),%esp
c0032061:	5f                   	pop    %edi
c0032062:	c9                   	leave  
c0032063:	c3                   	ret    
c0032064:	66 90                	xchg   %ax,%ax
c0032066:	66 90                	xchg   %ax,%ax
c0032068:	66 90                	xchg   %ax,%ax
c003206a:	66 90                	xchg   %ax,%ax
c003206c:	66 90                	xchg   %ax,%ax
c003206e:	66 90                	xchg   %ax,%ax

c0032070 <strcmp>:
c0032070:	55                   	push   %ebp
c0032071:	89 e5                	mov    %esp,%ebp
c0032073:	8b 45 08             	mov    0x8(%ebp),%eax
c0032076:	8b 55 0c             	mov    0xc(%ebp),%edx
c0032079:	53                   	push   %ebx
c003207a:	89 c1                	mov    %eax,%ecx
c003207c:	09 d1                	or     %edx,%ecx
c003207e:	83 e1 03             	and    $0x3,%ecx
c0032081:	75 17                	jne    c003209a <strcmp+0x2a>
c0032083:	8b 08                	mov    (%eax),%ecx
c0032085:	3b 0a                	cmp    (%edx),%ecx
c0032087:	74 33                	je     c00320bc <strcmp+0x4c>
c0032089:	eb 0f                	jmp    c003209a <strcmp+0x2a>
c003208b:	90                   	nop
c003208c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032090:	3a 0a                	cmp    (%edx),%cl
c0032092:	75 0d                	jne    c00320a1 <strcmp+0x31>
c0032094:	83 c0 01             	add    $0x1,%eax
c0032097:	83 c2 01             	add    $0x1,%edx
c003209a:	0f b6 08             	movzbl (%eax),%ecx
c003209d:	84 c9                	test   %cl,%cl
c003209f:	75 ef                	jne    c0032090 <strcmp+0x20>
c00320a1:	0f b6 00             	movzbl (%eax),%eax
c00320a4:	0f b6 12             	movzbl (%edx),%edx
c00320a7:	5b                   	pop    %ebx
c00320a8:	5d                   	pop    %ebp
c00320a9:	29 d0                	sub    %edx,%eax
c00320ab:	c3                   	ret    
c00320ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00320b0:	83 c0 04             	add    $0x4,%eax
c00320b3:	83 c2 04             	add    $0x4,%edx
c00320b6:	8b 08                	mov    (%eax),%ecx
c00320b8:	3b 0a                	cmp    (%edx),%ecx
c00320ba:	75 de                	jne    c003209a <strcmp+0x2a>
c00320bc:	8d 99 ff fe fe fe    	lea    -0x1010101(%ecx),%ebx
c00320c2:	f7 d1                	not    %ecx
c00320c4:	21 cb                	and    %ecx,%ebx
c00320c6:	81 e3 80 80 80 80    	and    $0x80808080,%ebx
c00320cc:	74 e2                	je     c00320b0 <strcmp+0x40>
c00320ce:	31 c0                	xor    %eax,%eax
c00320d0:	5b                   	pop    %ebx
c00320d1:	5d                   	pop    %ebp
c00320d2:	c3                   	ret    
c00320d3:	66 90                	xchg   %ax,%ax
c00320d5:	66 90                	xchg   %ax,%ax
c00320d7:	66 90                	xchg   %ax,%ax
c00320d9:	66 90                	xchg   %ax,%ax
c00320db:	66 90                	xchg   %ax,%ax
c00320dd:	66 90                	xchg   %ax,%ax
c00320df:	90                   	nop

c00320e0 <_vsnprintf_r>:
c00320e0:	55                   	push   %ebp
c00320e1:	89 e5                	mov    %esp,%ebp
c00320e3:	56                   	push   %esi
c00320e4:	53                   	push   %ebx
c00320e5:	83 c4 80             	add    $0xffffff80,%esp
c00320e8:	8b 5d 10             	mov    0x10(%ebp),%ebx
c00320eb:	8b 75 08             	mov    0x8(%ebp),%esi
c00320ee:	8b 45 0c             	mov    0xc(%ebp),%eax
c00320f1:	85 db                	test   %ebx,%ebx
c00320f3:	78 63                	js     c0032158 <_vsnprintf_r+0x78>
c00320f5:	ba 08 02 00 00       	mov    $0x208,%edx
c00320fa:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
c00320ff:	66 89 55 9c          	mov    %dx,-0x64(%ebp)
c0032103:	8d 53 ff             	lea    -0x1(%ebx),%edx
c0032106:	89 45 90             	mov    %eax,-0x70(%ebp)
c0032109:	89 45 a0             	mov    %eax,-0x60(%ebp)
c003210c:	31 c0                	xor    %eax,%eax
c003210e:	85 db                	test   %ebx,%ebx
c0032110:	0f 45 c2             	cmovne %edx,%eax
c0032113:	89 45 98             	mov    %eax,-0x68(%ebp)
c0032116:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0032119:	8b 45 18             	mov    0x18(%ebp),%eax
c003211c:	89 34 24             	mov    %esi,(%esp)
c003211f:	66 89 4d 9e          	mov    %cx,-0x62(%ebp)
c0032123:	89 44 24 0c          	mov    %eax,0xc(%esp)
c0032127:	8b 45 14             	mov    0x14(%ebp),%eax
c003212a:	89 44 24 08          	mov    %eax,0x8(%esp)
c003212e:	8d 45 90             	lea    -0x70(%ebp),%eax
c0032131:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032135:	e8 86 00 00 00       	call   c00321c0 <_svfprintf_r>
c003213a:	83 f8 ff             	cmp    $0xffffffff,%eax
c003213d:	7c 11                	jl     c0032150 <_vsnprintf_r+0x70>
c003213f:	85 db                	test   %ebx,%ebx
c0032141:	74 06                	je     c0032149 <_vsnprintf_r+0x69>
c0032143:	8b 55 90             	mov    -0x70(%ebp),%edx
c0032146:	c6 02 00             	movb   $0x0,(%edx)
c0032149:	83 ec 80             	sub    $0xffffff80,%esp
c003214c:	5b                   	pop    %ebx
c003214d:	5e                   	pop    %esi
c003214e:	5d                   	pop    %ebp
c003214f:	c3                   	ret    
c0032150:	c7 06 8b 00 00 00    	movl   $0x8b,(%esi)
c0032156:	eb e7                	jmp    c003213f <_vsnprintf_r+0x5f>
c0032158:	c7 06 8b 00 00 00    	movl   $0x8b,(%esi)
c003215e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0032163:	eb e4                	jmp    c0032149 <_vsnprintf_r+0x69>
c0032165:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032169:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0032170 <vsnprintf>:
c0032170:	55                   	push   %ebp
c0032171:	89 e5                	mov    %esp,%ebp
c0032173:	83 ec 28             	sub    $0x28,%esp
c0032176:	e8 35 00 00 00       	call   c00321b0 <__getreent>
c003217b:	8b 55 14             	mov    0x14(%ebp),%edx
c003217e:	89 54 24 10          	mov    %edx,0x10(%esp)
c0032182:	8b 55 10             	mov    0x10(%ebp),%edx
c0032185:	89 04 24             	mov    %eax,(%esp)
c0032188:	89 54 24 0c          	mov    %edx,0xc(%esp)
c003218c:	8b 55 0c             	mov    0xc(%ebp),%edx
c003218f:	89 54 24 08          	mov    %edx,0x8(%esp)
c0032193:	8b 55 08             	mov    0x8(%ebp),%edx
c0032196:	89 54 24 04          	mov    %edx,0x4(%esp)
c003219a:	e8 41 ff ff ff       	call   c00320e0 <_vsnprintf_r>
c003219f:	c9                   	leave  
c00321a0:	c3                   	ret    
c00321a1:	66 90                	xchg   %ax,%ax
c00321a3:	66 90                	xchg   %ax,%ax
c00321a5:	66 90                	xchg   %ax,%ax
c00321a7:	66 90                	xchg   %ax,%ax
c00321a9:	66 90                	xchg   %ax,%ax
c00321ab:	66 90                	xchg   %ax,%ax
c00321ad:	66 90                	xchg   %ax,%ax
c00321af:	90                   	nop

c00321b0 <__getreent>:
c00321b0:	55                   	push   %ebp
c00321b1:	a1 40 c0 03 c0       	mov    0xc003c040,%eax
c00321b6:	89 e5                	mov    %esp,%ebp
c00321b8:	5d                   	pop    %ebp
c00321b9:	c3                   	ret    
c00321ba:	66 90                	xchg   %ax,%ax
c00321bc:	66 90                	xchg   %ax,%ax
c00321be:	66 90                	xchg   %ax,%ax

c00321c0 <_svfprintf_r>:
c00321c0:	55                   	push   %ebp
c00321c1:	89 e5                	mov    %esp,%ebp
c00321c3:	57                   	push   %edi
c00321c4:	56                   	push   %esi
c00321c5:	53                   	push   %ebx
c00321c6:	81 ec 1c 01 00 00    	sub    $0x11c,%esp
c00321cc:	8b 45 08             	mov    0x8(%ebp),%eax
c00321cf:	89 04 24             	mov    %eax,(%esp)
c00321d2:	e8 89 33 00 00       	call   c0035560 <_localeconv_r>
c00321d7:	8b 00                	mov    (%eax),%eax
c00321d9:	89 04 24             	mov    %eax,(%esp)
c00321dc:	89 85 0c ff ff ff    	mov    %eax,-0xf4(%ebp)
c00321e2:	e8 69 4a 00 00       	call   c0036c50 <strlen>
c00321e7:	89 85 08 ff ff ff    	mov    %eax,-0xf8(%ebp)
c00321ed:	8b 45 0c             	mov    0xc(%ebp),%eax
c00321f0:	f6 40 0c 80          	testb  $0x80,0xc(%eax)
c00321f4:	74 0b                	je     c0032201 <_svfprintf_r+0x41>
c00321f6:	8b 40 10             	mov    0x10(%eax),%eax
c00321f9:	85 c0                	test   %eax,%eax
c00321fb:	0f 84 62 18 00 00    	je     c0033a63 <_svfprintf_r+0x18a3>
c0032201:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0032204:	8d 55 a7             	lea    -0x59(%ebp),%edx
c0032207:	89 c7                	mov    %eax,%edi
c0032209:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%ebp)
c003220f:	d9 ee                	fldz   
c0032211:	29 d0                	sub    %edx,%eax
c0032213:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%ebp)
c003221a:	00 00 00 
c003221d:	dd 9d 10 ff ff ff    	fstpl  -0xf0(%ebp)
c0032223:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c003222a:	00 00 00 
c003222d:	c7 85 1c ff ff ff 00 	movl   $0x0,-0xe4(%ebp)
c0032234:	00 00 00 
c0032237:	c7 85 18 ff ff ff 00 	movl   $0x0,-0xe8(%ebp)
c003223e:	00 00 00 
c0032241:	c7 85 04 ff ff ff 00 	movl   $0x0,-0xfc(%ebp)
c0032248:	00 00 00 
c003224b:	c7 85 34 ff ff ff 00 	movl   $0x0,-0xcc(%ebp)
c0032252:	00 00 00 
c0032255:	89 85 00 ff ff ff    	mov    %eax,-0x100(%ebp)
c003225b:	8b 45 10             	mov    0x10(%ebp),%eax
c003225e:	8b 5d 10             	mov    0x10(%ebp),%ebx
c0032261:	0f b6 00             	movzbl (%eax),%eax
c0032264:	3c 25                	cmp    $0x25,%al
c0032266:	74 4d                	je     c00322b5 <_svfprintf_r+0xf5>
c0032268:	84 c0                	test   %al,%al
c003226a:	75 08                	jne    c0032274 <_svfprintf_r+0xb4>
c003226c:	eb 47                	jmp    c00322b5 <_svfprintf_r+0xf5>
c003226e:	66 90                	xchg   %ax,%ax
c0032270:	84 c0                	test   %al,%al
c0032272:	74 0a                	je     c003227e <_svfprintf_r+0xbe>
c0032274:	83 c3 01             	add    $0x1,%ebx
c0032277:	0f b6 03             	movzbl (%ebx),%eax
c003227a:	3c 25                	cmp    $0x25,%al
c003227c:	75 f2                	jne    c0032270 <_svfprintf_r+0xb0>
c003227e:	89 de                	mov    %ebx,%esi
c0032280:	2b 75 10             	sub    0x10(%ebp),%esi
c0032283:	74 30                	je     c00322b5 <_svfprintf_r+0xf5>
c0032285:	8b 45 10             	mov    0x10(%ebp),%eax
c0032288:	83 c7 08             	add    $0x8,%edi
c003228b:	89 77 fc             	mov    %esi,-0x4(%edi)
c003228e:	01 b5 7c ff ff ff    	add    %esi,-0x84(%ebp)
c0032294:	89 47 f8             	mov    %eax,-0x8(%edi)
c0032297:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003229d:	83 c0 01             	add    $0x1,%eax
c00322a0:	83 f8 07             	cmp    $0x7,%eax
c00322a3:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00322a9:	0f 8f 91 00 00 00    	jg     c0032340 <_svfprintf_r+0x180>
c00322af:	01 b5 34 ff ff ff    	add    %esi,-0xcc(%ebp)
c00322b5:	80 3b 00             	cmpb   $0x0,(%ebx)
c00322b8:	0f 84 aa 00 00 00    	je     c0032368 <_svfprintf_r+0x1a8>
c00322be:	8d 43 01             	lea    0x1(%ebx),%eax
c00322c1:	be 20 00 00 00       	mov    $0x20,%esi
c00322c6:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c00322cd:	31 db                	xor    %ebx,%ebx
c00322cf:	c7 85 44 ff ff ff ff 	movl   $0xffffffff,-0xbc(%ebp)
c00322d6:	ff ff ff 
c00322d9:	c7 85 40 ff ff ff 00 	movl   $0x0,-0xc0(%ebp)
c00322e0:	00 00 00 
c00322e3:	c7 85 4c ff ff ff 00 	movl   $0x0,-0xb4(%ebp)
c00322ea:	00 00 00 
c00322ed:	8d 48 01             	lea    0x1(%eax),%ecx
c00322f0:	0f be 00             	movsbl (%eax),%eax
c00322f3:	8d 50 e0             	lea    -0x20(%eax),%edx
c00322f6:	83 fa 58             	cmp    $0x58,%edx
c00322f9:	0f 87 8f 07 00 00    	ja     c0032a8e <_svfprintf_r+0x8ce>
c00322ff:	ff 24 95 b4 8e 03 c0 	jmp    *-0x3ffc714c(,%edx,4)
c0032306:	66 90                	xchg   %ax,%ax
c0032308:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c003230f:	89 c8                	mov    %ecx,%eax
c0032311:	eb da                	jmp    c00322ed <_svfprintf_r+0x12d>
c0032313:	8b 45 14             	mov    0x14(%ebp),%eax
c0032316:	8b 55 14             	mov    0x14(%ebp),%edx
c0032319:	8b 00                	mov    (%eax),%eax
c003231b:	83 c2 04             	add    $0x4,%edx
c003231e:	89 55 14             	mov    %edx,0x14(%ebp)
c0032321:	85 c0                	test   %eax,%eax
c0032323:	89 85 40 ff ff ff    	mov    %eax,-0xc0(%ebp)
c0032329:	79 e4                	jns    c003230f <_svfprintf_r+0x14f>
c003232b:	f7 9d 40 ff ff ff    	negl   -0xc0(%ebp)
c0032331:	83 8d 4c ff ff ff 04 	orl    $0x4,-0xb4(%ebp)
c0032338:	89 c8                	mov    %ecx,%eax
c003233a:	eb b1                	jmp    c00322ed <_svfprintf_r+0x12d>
c003233c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032340:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032346:	89 44 24 08          	mov    %eax,0x8(%esp)
c003234a:	8b 45 0c             	mov    0xc(%ebp),%eax
c003234d:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032351:	8b 45 08             	mov    0x8(%ebp),%eax
c0032354:	89 04 24             	mov    %eax,(%esp)
c0032357:	e8 74 49 00 00       	call   c0036cd0 <__ssprint_r>
c003235c:	85 c0                	test   %eax,%eax
c003235e:	75 30                	jne    c0032390 <_svfprintf_r+0x1d0>
c0032360:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032363:	e9 47 ff ff ff       	jmp    c00322af <_svfprintf_r+0xef>
c0032368:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
c003236e:	85 c0                	test   %eax,%eax
c0032370:	74 1e                	je     c0032390 <_svfprintf_r+0x1d0>
c0032372:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032378:	89 44 24 08          	mov    %eax,0x8(%esp)
c003237c:	8b 45 0c             	mov    0xc(%ebp),%eax
c003237f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032383:	8b 45 08             	mov    0x8(%ebp),%eax
c0032386:	89 04 24             	mov    %eax,(%esp)
c0032389:	e8 42 49 00 00       	call   c0036cd0 <__ssprint_r>
c003238e:	66 90                	xchg   %ax,%ax
c0032390:	8b 55 0c             	mov    0xc(%ebp),%edx
c0032393:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0032398:	f6 42 0c 40          	testb  $0x40,0xc(%edx)
c003239c:	0f 44 85 34 ff ff ff 	cmove  -0xcc(%ebp),%eax
c00323a3:	81 c4 1c 01 00 00    	add    $0x11c,%esp
c00323a9:	5b                   	pop    %ebx
c00323aa:	5e                   	pop    %esi
c00323ab:	5f                   	pop    %edi
c00323ac:	5d                   	pop    %ebp
c00323ad:	c3                   	ret    
c00323ae:	bb 2b 00 00 00       	mov    $0x2b,%ebx
c00323b3:	89 c8                	mov    %ecx,%eax
c00323b5:	e9 33 ff ff ff       	jmp    c00322ed <_svfprintf_r+0x12d>
c00323ba:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c00323c0:	8b 45 14             	mov    0x14(%ebp),%eax
c00323c3:	89 4d 10             	mov    %ecx,0x10(%ebp)
c00323c6:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c00323cd:	8d 70 04             	lea    0x4(%eax),%esi
c00323d0:	8b 00                	mov    (%eax),%eax
c00323d2:	85 c0                	test   %eax,%eax
c00323d4:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c00323da:	0f 84 7f 18 00 00    	je     c0033c5f <_svfprintf_r+0x1a9f>
c00323e0:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c00323e6:	85 c0                	test   %eax,%eax
c00323e8:	0f 88 b6 17 00 00    	js     c0033ba4 <_svfprintf_r+0x19e4>
c00323ee:	89 44 24 08          	mov    %eax,0x8(%esp)
c00323f2:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c00323f8:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c00323ff:	00 
c0032400:	89 04 24             	mov    %eax,(%esp)
c0032403:	e8 f8 38 00 00       	call   c0035d00 <memchr>
c0032408:	85 c0                	test   %eax,%eax
c003240a:	0f 84 a0 19 00 00    	je     c0033db0 <_svfprintf_r+0x1bf0>
c0032410:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c0032416:	2b 85 28 ff ff ff    	sub    -0xd8(%ebp),%eax
c003241c:	39 d0                	cmp    %edx,%eax
c003241e:	0f 4f c2             	cmovg  %edx,%eax
c0032421:	89 c2                	mov    %eax,%edx
c0032423:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c003242a:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0032430:	31 c0                	xor    %eax,%eax
c0032432:	85 d2                	test   %edx,%edx
c0032434:	0f 49 c2             	cmovns %edx,%eax
c0032437:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c003243d:	89 75 14             	mov    %esi,0x14(%ebp)
c0032440:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0032447:	00 00 00 
c003244a:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0032451:	00 00 00 
c0032454:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032458:	84 db                	test   %bl,%bl
c003245a:	74 07                	je     c0032463 <_svfprintf_r+0x2a3>
c003245c:	83 85 48 ff ff ff 01 	addl   $0x1,-0xb8(%ebp)
c0032463:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c0032469:	8b b5 4c ff ff ff    	mov    -0xb4(%ebp),%esi
c003246f:	89 c8                	mov    %ecx,%eax
c0032471:	89 f2                	mov    %esi,%edx
c0032473:	83 c0 02             	add    $0x2,%eax
c0032476:	83 e2 02             	and    $0x2,%edx
c0032479:	89 95 30 ff ff ff    	mov    %edx,-0xd0(%ebp)
c003247f:	89 f2                	mov    %esi,%edx
c0032481:	0f 44 c1             	cmove  %ecx,%eax
c0032484:	81 e2 84 00 00 00    	and    $0x84,%edx
c003248a:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0032490:	89 95 2c ff ff ff    	mov    %edx,-0xd4(%ebp)
c0032496:	0f 85 1c 06 00 00    	jne    c0032ab8 <_svfprintf_r+0x8f8>
c003249c:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
c00324a2:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
c00324a8:	85 f6                	test   %esi,%esi
c00324aa:	0f 8e 08 06 00 00    	jle    c0032ab8 <_svfprintf_r+0x8f8>
c00324b0:	83 fe 10             	cmp    $0x10,%esi
c00324b3:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00324b9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00324bf:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c00324c5:	7f 11                	jg     c00324d8 <_svfprintf_r+0x318>
c00324c7:	eb 6b                	jmp    c0032534 <_svfprintf_r+0x374>
c00324c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00324d0:	83 ee 10             	sub    $0x10,%esi
c00324d3:	83 fe 10             	cmp    $0x10,%esi
c00324d6:	7e 5c                	jle    c0032534 <_svfprintf_r+0x374>
c00324d8:	83 c0 01             	add    $0x1,%eax
c00324db:	83 c1 10             	add    $0x10,%ecx
c00324de:	c7 07 28 90 03 c0    	movl   $0xc0039028,(%edi)
c00324e4:	83 c7 08             	add    $0x8,%edi
c00324e7:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c00324ee:	83 f8 07             	cmp    $0x7,%eax
c00324f1:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00324f7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00324fd:	7e d1                	jle    c00324d0 <_svfprintf_r+0x310>
c00324ff:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032502:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0032506:	89 44 24 04          	mov    %eax,0x4(%esp)
c003250a:	8b 45 08             	mov    0x8(%ebp),%eax
c003250d:	89 04 24             	mov    %eax,(%esp)
c0032510:	e8 bb 47 00 00       	call   c0036cd0 <__ssprint_r>
c0032515:	85 c0                	test   %eax,%eax
c0032517:	0f 85 73 fe ff ff    	jne    c0032390 <_svfprintf_r+0x1d0>
c003251d:	83 ee 10             	sub    $0x10,%esi
c0032520:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032526:	83 fe 10             	cmp    $0x10,%esi
c0032529:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003252f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032532:	7f a4                	jg     c00324d8 <_svfprintf_r+0x318>
c0032534:	83 c0 01             	add    $0x1,%eax
c0032537:	01 f1                	add    %esi,%ecx
c0032539:	83 f8 07             	cmp    $0x7,%eax
c003253c:	c7 07 28 90 03 c0    	movl   $0xc0039028,(%edi)
c0032542:	89 77 04             	mov    %esi,0x4(%edi)
c0032545:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c003254b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032551:	0f 8f 16 0e 00 00    	jg     c003336d <_svfprintf_r+0x11ad>
c0032557:	83 c7 08             	add    $0x8,%edi
c003255a:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0032561:	e9 58 05 00 00       	jmp    c0032abe <_svfprintf_r+0x8fe>
c0032566:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c003256d:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032573:	8b 45 14             	mov    0x14(%ebp),%eax
c0032576:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032579:	0f 85 fd 04 00 00    	jne    c0032a7c <_svfprintf_r+0x8bc>
c003257f:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c0032586:	0f 84 f0 04 00 00    	je     c0032a7c <_svfprintf_r+0x8bc>
c003258c:	0f b7 08             	movzwl (%eax),%ecx
c003258f:	83 c0 04             	add    $0x4,%eax
c0032592:	89 45 14             	mov    %eax,0x14(%ebp)
c0032595:	b8 01 00 00 00       	mov    $0x1,%eax
c003259a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00325a0:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c00325a7:	31 db                	xor    %ebx,%ebx
c00325a9:	8b b5 4c ff ff ff    	mov    -0xb4(%ebp),%esi
c00325af:	89 f2                	mov    %esi,%edx
c00325b1:	80 e2 7f             	and    $0x7f,%dl
c00325b4:	83 bd 44 ff ff ff 00 	cmpl   $0x0,-0xbc(%ebp)
c00325bb:	0f 48 d6             	cmovs  %esi,%edx
c00325be:	89 95 4c ff ff ff    	mov    %edx,-0xb4(%ebp)
c00325c4:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c00325ca:	85 d2                	test   %edx,%edx
c00325cc:	75 08                	jne    c00325d6 <_svfprintf_r+0x416>
c00325ce:	85 c9                	test   %ecx,%ecx
c00325d0:	0f 84 ea 08 00 00    	je     c0032ec0 <_svfprintf_r+0xd00>
c00325d6:	3c 01                	cmp    $0x1,%al
c00325d8:	0f 84 6a 0d 00 00    	je     c0033348 <_svfprintf_r+0x1188>
c00325de:	3c 02                	cmp    $0x2,%al
c00325e0:	8d 45 a8             	lea    -0x58(%ebp),%eax
c00325e3:	0f 85 bf 0b 00 00    	jne    c00331a8 <_svfprintf_r+0xfe8>
c00325e9:	8b b5 18 ff ff ff    	mov    -0xe8(%ebp),%esi
c00325ef:	90                   	nop
c00325f0:	89 ca                	mov    %ecx,%edx
c00325f2:	83 e8 01             	sub    $0x1,%eax
c00325f5:	83 e2 0f             	and    $0xf,%edx
c00325f8:	0f b6 14 16          	movzbl (%esi,%edx,1),%edx
c00325fc:	c1 e9 04             	shr    $0x4,%ecx
c00325ff:	85 c9                	test   %ecx,%ecx
c0032601:	88 10                	mov    %dl,(%eax)
c0032603:	75 eb                	jne    c00325f0 <_svfprintf_r+0x430>
c0032605:	8d 55 a8             	lea    -0x58(%ebp),%edx
c0032608:	29 c2                	sub    %eax,%edx
c003260a:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0032610:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0032616:	66 90                	xchg   %ax,%ax
c0032618:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c003261e:	8b 95 38 ff ff ff    	mov    -0xc8(%ebp),%edx
c0032624:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c003262b:	00 00 00 
c003262e:	39 c2                	cmp    %eax,%edx
c0032630:	0f 4d c2             	cmovge %edx,%eax
c0032633:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0032639:	e9 1a fe ff ff       	jmp    c0032458 <_svfprintf_r+0x298>
c003263e:	84 db                	test   %bl,%bl
c0032640:	89 c8                	mov    %ecx,%eax
c0032642:	0f 44 de             	cmove  %esi,%ebx
c0032645:	e9 a3 fc ff ff       	jmp    c00322ed <_svfprintf_r+0x12d>
c003264a:	83 8d 4c ff ff ff 01 	orl    $0x1,-0xb4(%ebp)
c0032651:	89 c8                	mov    %ecx,%eax
c0032653:	e9 95 fc ff ff       	jmp    c00322ed <_svfprintf_r+0x12d>
c0032658:	81 8d 4c ff ff ff 80 	orl    $0x80,-0xb4(%ebp)
c003265f:	00 00 00 
c0032662:	89 c8                	mov    %ecx,%eax
c0032664:	e9 84 fc ff ff       	jmp    c00322ed <_svfprintf_r+0x12d>
c0032669:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c003266f:	8d 50 d0             	lea    -0x30(%eax),%edx
c0032672:	31 ff                	xor    %edi,%edi
c0032674:	c7 85 40 ff ff ff 00 	movl   $0x0,-0xc0(%ebp)
c003267b:	00 00 00 
c003267e:	66 90                	xchg   %ax,%ax
c0032680:	8d 04 bf             	lea    (%edi,%edi,4),%eax
c0032683:	83 c1 01             	add    $0x1,%ecx
c0032686:	8d 3c 42             	lea    (%edx,%eax,2),%edi
c0032689:	0f be 41 ff          	movsbl -0x1(%ecx),%eax
c003268d:	8d 50 d0             	lea    -0x30(%eax),%edx
c0032690:	83 fa 09             	cmp    $0x9,%edx
c0032693:	76 eb                	jbe    c0032680 <_svfprintf_r+0x4c0>
c0032695:	89 bd 40 ff ff ff    	mov    %edi,-0xc0(%ebp)
c003269b:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
c00326a1:	e9 4d fc ff ff       	jmp    c00322f3 <_svfprintf_r+0x133>
c00326a6:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c00326ad:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c00326b4:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c00326ba:	8b 45 14             	mov    0x14(%ebp),%eax
c00326bd:	89 4d 10             	mov    %ecx,0x10(%ebp)
c00326c0:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c00326c6:	0f 85 61 02 00 00    	jne    c003292d <_svfprintf_r+0x76d>
c00326cc:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c00326d3:	0f 84 54 02 00 00    	je     c003292d <_svfprintf_r+0x76d>
c00326d9:	0f bf 08             	movswl (%eax),%ecx
c00326dc:	83 c0 04             	add    $0x4,%eax
c00326df:	89 45 14             	mov    %eax,0x14(%ebp)
c00326e2:	85 c9                	test   %ecx,%ecx
c00326e4:	0f 88 53 02 00 00    	js     c003293d <_svfprintf_r+0x77d>
c00326ea:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c00326f1:	b8 01 00 00 00       	mov    $0x1,%eax
c00326f6:	e9 ae fe ff ff       	jmp    c00325a9 <_svfprintf_r+0x3e9>
c00326fb:	f6 85 4c ff ff ff 08 	testb  $0x8,-0xb4(%ebp)
c0032702:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032708:	8b 45 14             	mov    0x14(%ebp),%eax
c003270b:	89 4d 10             	mov    %ecx,0x10(%ebp)
c003270e:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c0032714:	0f 84 15 10 00 00    	je     c003372f <_svfprintf_r+0x156f>
c003271a:	db 28                	fldt   (%eax)
c003271c:	83 c0 0c             	add    $0xc,%eax
c003271f:	89 45 14             	mov    %eax,0x14(%ebp)
c0032722:	dd 9d 10 ff ff ff    	fstpl  -0xf0(%ebp)
c0032728:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c003272e:	dd 1c 24             	fstpl  (%esp)
c0032731:	e8 aa 44 00 00       	call   c0036be0 <__fpclassifyd>
c0032736:	83 f8 01             	cmp    $0x1,%eax
c0032739:	0f 85 82 0f 00 00    	jne    c00336c1 <_svfprintf_r+0x1501>
c003273f:	d9 ee                	fldz   
c0032741:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0032747:	d9 c9                	fxch   %st(1)
c0032749:	df e9                	fucomip %st(1),%st
c003274b:	dd d8                	fstp   %st(0)
c003274d:	0f 87 59 15 00 00    	ja     c0033cac <_svfprintf_r+0x1aec>
c0032753:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c003275a:	83 bd 24 ff ff ff 47 	cmpl   $0x47,-0xdc(%ebp)
c0032761:	ba 76 8e 03 c0       	mov    $0xc0038e76,%edx
c0032766:	b8 7a 8e 03 c0       	mov    $0xc0038e7a,%eax
c003276b:	c7 85 48 ff ff ff 03 	movl   $0x3,-0xb8(%ebp)
c0032772:	00 00 00 
c0032775:	0f 4e c2             	cmovle %edx,%eax
c0032778:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c003277e:	81 a5 4c ff ff ff 7f 	andl   $0xffffff7f,-0xb4(%ebp)
c0032785:	ff ff ff 
c0032788:	c7 85 38 ff ff ff 03 	movl   $0x3,-0xc8(%ebp)
c003278f:	00 00 00 
c0032792:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0032799:	00 00 00 
c003279c:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c00327a3:	00 00 00 
c00327a6:	e9 ad fc ff ff       	jmp    c0032458 <_svfprintf_r+0x298>
c00327ab:	8d 41 01             	lea    0x1(%ecx),%eax
c00327ae:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c00327b4:	0f be 01             	movsbl (%ecx),%eax
c00327b7:	83 f8 2a             	cmp    $0x2a,%eax
c00327ba:	0f 84 84 18 00 00    	je     c0034044 <_svfprintf_r+0x1e84>
c00327c0:	8d 50 d0             	lea    -0x30(%eax),%edx
c00327c3:	31 c9                	xor    %ecx,%ecx
c00327c5:	83 fa 09             	cmp    $0x9,%edx
c00327c8:	0f 87 a8 16 00 00    	ja     c0033e76 <_svfprintf_r+0x1cb6>
c00327ce:	89 bd 44 ff ff ff    	mov    %edi,-0xbc(%ebp)
c00327d4:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
c00327da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00327e0:	8d 04 89             	lea    (%ecx,%ecx,4),%eax
c00327e3:	83 c7 01             	add    $0x1,%edi
c00327e6:	8d 0c 42             	lea    (%edx,%eax,2),%ecx
c00327e9:	0f be 47 ff          	movsbl -0x1(%edi),%eax
c00327ed:	8d 50 d0             	lea    -0x30(%eax),%edx
c00327f0:	83 fa 09             	cmp    $0x9,%edx
c00327f3:	76 eb                	jbe    c00327e0 <_svfprintf_r+0x620>
c00327f5:	85 c9                	test   %ecx,%ecx
c00327f7:	89 ca                	mov    %ecx,%edx
c00327f9:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
c00327fe:	0f 48 d1             	cmovs  %ecx,%edx
c0032801:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c0032807:	8b bd 44 ff ff ff    	mov    -0xbc(%ebp),%edi
c003280d:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c0032813:	89 95 44 ff ff ff    	mov    %edx,-0xbc(%ebp)
c0032819:	e9 d5 fa ff ff       	jmp    c00322f3 <_svfprintf_r+0x133>
c003281e:	8b 45 14             	mov    0x14(%ebp),%eax
c0032821:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032824:	83 8d 4c ff ff ff 02 	orl    $0x2,-0xb4(%ebp)
c003282b:	8b 08                	mov    (%eax),%ecx
c003282d:	83 c0 04             	add    $0x4,%eax
c0032830:	89 45 14             	mov    %eax,0x14(%ebp)
c0032833:	b8 02 00 00 00       	mov    $0x2,%eax
c0032838:	c6 85 5a ff ff ff 30 	movb   $0x30,-0xa6(%ebp)
c003283f:	c6 85 5b ff ff ff 78 	movb   $0x78,-0xa5(%ebp)
c0032846:	c7 85 18 ff ff ff 97 	movl   $0xc0038e97,-0xe8(%ebp)
c003284d:	8e 03 c0 
c0032850:	c7 85 24 ff ff ff 78 	movl   $0x78,-0xdc(%ebp)
c0032857:	00 00 00 
c003285a:	e9 41 fd ff ff       	jmp    c00325a0 <_svfprintf_r+0x3e0>
c003285f:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0032866:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c003286c:	8b 45 14             	mov    0x14(%ebp),%eax
c003286f:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032872:	0f 85 87 00 00 00    	jne    c00328ff <_svfprintf_r+0x73f>
c0032878:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c003287f:	74 7e                	je     c00328ff <_svfprintf_r+0x73f>
c0032881:	0f b7 08             	movzwl (%eax),%ecx
c0032884:	83 c0 04             	add    $0x4,%eax
c0032887:	89 45 14             	mov    %eax,0x14(%ebp)
c003288a:	31 c0                	xor    %eax,%eax
c003288c:	e9 0f fd ff ff       	jmp    c00325a0 <_svfprintf_r+0x3e0>
c0032891:	83 8d 4c ff ff ff 08 	orl    $0x8,-0xb4(%ebp)
c0032898:	89 c8                	mov    %ecx,%eax
c003289a:	e9 4e fa ff ff       	jmp    c00322ed <_svfprintf_r+0x12d>
c003289f:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c00328a6:	89 4d 10             	mov    %ecx,0x10(%ebp)
c00328a9:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c00328af:	0f 85 97 0b 00 00    	jne    c003344c <_svfprintf_r+0x128c>
c00328b5:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c00328bc:	0f 84 8a 0b 00 00    	je     c003344c <_svfprintf_r+0x128c>
c00328c2:	8b 45 14             	mov    0x14(%ebp),%eax
c00328c5:	0f b7 95 34 ff ff ff 	movzwl -0xcc(%ebp),%edx
c00328cc:	8b 00                	mov    (%eax),%eax
c00328ce:	66 89 10             	mov    %dx,(%eax)
c00328d1:	8b 45 14             	mov    0x14(%ebp),%eax
c00328d4:	83 c0 04             	add    $0x4,%eax
c00328d7:	89 45 14             	mov    %eax,0x14(%ebp)
c00328da:	e9 7c f9 ff ff       	jmp    c003225b <_svfprintf_r+0x9b>
c00328df:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c00328e6:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c00328ed:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c00328f3:	8b 45 14             	mov    0x14(%ebp),%eax
c00328f6:	89 4d 10             	mov    %ecx,0x10(%ebp)
c00328f9:	0f 84 79 ff ff ff    	je     c0032878 <_svfprintf_r+0x6b8>
c00328ff:	8b 08                	mov    (%eax),%ecx
c0032901:	83 c0 04             	add    $0x4,%eax
c0032904:	89 45 14             	mov    %eax,0x14(%ebp)
c0032907:	31 c0                	xor    %eax,%eax
c0032909:	e9 92 fc ff ff       	jmp    c00325a0 <_svfprintf_r+0x3e0>
c003290e:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0032915:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c003291b:	8b 45 14             	mov    0x14(%ebp),%eax
c003291e:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032921:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c0032927:	0f 84 9f fd ff ff    	je     c00326cc <_svfprintf_r+0x50c>
c003292d:	8b 08                	mov    (%eax),%ecx
c003292f:	83 c0 04             	add    $0x4,%eax
c0032932:	89 45 14             	mov    %eax,0x14(%ebp)
c0032935:	85 c9                	test   %ecx,%ecx
c0032937:	0f 89 ad fd ff ff    	jns    c00326ea <_svfprintf_r+0x52a>
c003293d:	f7 d9                	neg    %ecx
c003293f:	bb 2d 00 00 00       	mov    $0x2d,%ebx
c0032944:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
c003294b:	b8 01 00 00 00       	mov    $0x1,%eax
c0032950:	e9 54 fc ff ff       	jmp    c00325a9 <_svfprintf_r+0x3e9>
c0032955:	83 8d 4c ff ff ff 40 	orl    $0x40,-0xb4(%ebp)
c003295c:	89 c8                	mov    %ecx,%eax
c003295e:	e9 8a f9 ff ff       	jmp    c00322ed <_svfprintf_r+0x12d>
c0032963:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c003296a:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032970:	8b 45 14             	mov    0x14(%ebp),%eax
c0032973:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032976:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c003297c:	c7 85 18 ff ff ff 97 	movl   $0xc0038e97,-0xe8(%ebp)
c0032983:	8e 03 c0 
c0032986:	75 71                	jne    c00329f9 <_svfprintf_r+0x839>
c0032988:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c003298f:	74 68                	je     c00329f9 <_svfprintf_r+0x839>
c0032991:	0f b7 08             	movzwl (%eax),%ecx
c0032994:	83 c0 04             	add    $0x4,%eax
c0032997:	89 45 14             	mov    %eax,0x14(%ebp)
c003299a:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c00329a1:	b8 02 00 00 00       	mov    $0x2,%eax
c00329a6:	0f 84 f4 fb ff ff    	je     c00325a0 <_svfprintf_r+0x3e0>
c00329ac:	85 c9                	test   %ecx,%ecx
c00329ae:	0f 84 ec fb ff ff    	je     c00325a0 <_svfprintf_r+0x3e0>
c00329b4:	0f b6 95 24 ff ff ff 	movzbl -0xdc(%ebp),%edx
c00329bb:	c6 85 5a ff ff ff 30 	movb   $0x30,-0xa6(%ebp)
c00329c2:	83 8d 4c ff ff ff 02 	orl    $0x2,-0xb4(%ebp)
c00329c9:	88 95 5b ff ff ff    	mov    %dl,-0xa5(%ebp)
c00329cf:	e9 cc fb ff ff       	jmp    c00325a0 <_svfprintf_r+0x3e0>
c00329d4:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c00329db:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c00329e1:	8b 45 14             	mov    0x14(%ebp),%eax
c00329e4:	89 4d 10             	mov    %ecx,0x10(%ebp)
c00329e7:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c00329ed:	c7 85 18 ff ff ff 86 	movl   $0xc0038e86,-0xe8(%ebp)
c00329f4:	8e 03 c0 
c00329f7:	74 8f                	je     c0032988 <_svfprintf_r+0x7c8>
c00329f9:	8b 08                	mov    (%eax),%ecx
c00329fb:	83 c0 04             	add    $0x4,%eax
c00329fe:	89 45 14             	mov    %eax,0x14(%ebp)
c0032a01:	eb 97                	jmp    c003299a <_svfprintf_r+0x7da>
c0032a03:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032a09:	8b 45 14             	mov    0x14(%ebp),%eax
c0032a0c:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032a0f:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c0032a16:	8b 00                	mov    (%eax),%eax
c0032a18:	88 45 80             	mov    %al,-0x80(%ebp)
c0032a1b:	8b 45 14             	mov    0x14(%ebp),%eax
c0032a1e:	83 c0 04             	add    $0x4,%eax
c0032a21:	89 45 14             	mov    %eax,0x14(%ebp)
c0032a24:	8d 45 80             	lea    -0x80(%ebp),%eax
c0032a27:	31 db                	xor    %ebx,%ebx
c0032a29:	c7 85 48 ff ff ff 01 	movl   $0x1,-0xb8(%ebp)
c0032a30:	00 00 00 
c0032a33:	c7 85 38 ff ff ff 01 	movl   $0x1,-0xc8(%ebp)
c0032a3a:	00 00 00 
c0032a3d:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0032a44:	00 00 00 
c0032a47:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0032a4e:	00 00 00 
c0032a51:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0032a57:	e9 07 fa ff ff       	jmp    c0032463 <_svfprintf_r+0x2a3>
c0032a5c:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c0032a63:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0032a6a:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032a70:	8b 45 14             	mov    0x14(%ebp),%eax
c0032a73:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032a76:	0f 84 03 fb ff ff    	je     c003257f <_svfprintf_r+0x3bf>
c0032a7c:	8b 08                	mov    (%eax),%ecx
c0032a7e:	83 c0 04             	add    $0x4,%eax
c0032a81:	89 45 14             	mov    %eax,0x14(%ebp)
c0032a84:	b8 01 00 00 00       	mov    $0x1,%eax
c0032a89:	e9 12 fb ff ff       	jmp    c00325a0 <_svfprintf_r+0x3e0>
c0032a8e:	85 c0                	test   %eax,%eax
c0032a90:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032a96:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032a99:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c0032a9f:	0f 84 c3 f8 ff ff    	je     c0032368 <_svfprintf_r+0x1a8>
c0032aa5:	88 45 80             	mov    %al,-0x80(%ebp)
c0032aa8:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c0032aaf:	e9 70 ff ff ff       	jmp    c0032a24 <_svfprintf_r+0x864>
c0032ab4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032ab8:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032abe:	84 db                	test   %bl,%bl
c0032ac0:	74 33                	je     c0032af5 <_svfprintf_r+0x935>
c0032ac2:	8d 85 59 ff ff ff    	lea    -0xa7(%ebp),%eax
c0032ac8:	83 c1 01             	add    $0x1,%ecx
c0032acb:	89 07                	mov    %eax,(%edi)
c0032acd:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032ad3:	83 c7 08             	add    $0x8,%edi
c0032ad6:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
c0032add:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032ae3:	83 c0 01             	add    $0x1,%eax
c0032ae6:	83 f8 07             	cmp    $0x7,%eax
c0032ae9:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032aef:	0f 8f 7b 06 00 00    	jg     c0033170 <_svfprintf_r+0xfb0>
c0032af5:	8b 9d 30 ff ff ff    	mov    -0xd0(%ebp),%ebx
c0032afb:	85 db                	test   %ebx,%ebx
c0032afd:	74 33                	je     c0032b32 <_svfprintf_r+0x972>
c0032aff:	8d 85 5a ff ff ff    	lea    -0xa6(%ebp),%eax
c0032b05:	83 c1 02             	add    $0x2,%ecx
c0032b08:	89 07                	mov    %eax,(%edi)
c0032b0a:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032b10:	83 c7 08             	add    $0x8,%edi
c0032b13:	c7 47 fc 02 00 00 00 	movl   $0x2,-0x4(%edi)
c0032b1a:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032b20:	83 c0 01             	add    $0x1,%eax
c0032b23:	83 f8 07             	cmp    $0x7,%eax
c0032b26:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032b2c:	0f 8f 06 06 00 00    	jg     c0033138 <_svfprintf_r+0xf78>
c0032b32:	81 bd 2c ff ff ff 80 	cmpl   $0x80,-0xd4(%ebp)
c0032b39:	00 00 00 
c0032b3c:	0f 84 c6 03 00 00    	je     c0032f08 <_svfprintf_r+0xd48>
c0032b42:	8b b5 44 ff ff ff    	mov    -0xbc(%ebp),%esi
c0032b48:	2b b5 38 ff ff ff    	sub    -0xc8(%ebp),%esi
c0032b4e:	85 f6                	test   %esi,%esi
c0032b50:	0f 8e d2 00 00 00    	jle    c0032c28 <_svfprintf_r+0xa68>
c0032b56:	83 fe 10             	cmp    $0x10,%esi
c0032b59:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032b5f:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0032b65:	7f 11                	jg     c0032b78 <_svfprintf_r+0x9b8>
c0032b67:	eb 6b                	jmp    c0032bd4 <_svfprintf_r+0xa14>
c0032b69:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0032b70:	83 ee 10             	sub    $0x10,%esi
c0032b73:	83 fe 10             	cmp    $0x10,%esi
c0032b76:	7e 5c                	jle    c0032bd4 <_svfprintf_r+0xa14>
c0032b78:	83 c0 01             	add    $0x1,%eax
c0032b7b:	83 c1 10             	add    $0x10,%ecx
c0032b7e:	c7 07 18 90 03 c0    	movl   $0xc0039018,(%edi)
c0032b84:	83 c7 08             	add    $0x8,%edi
c0032b87:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0032b8e:	83 f8 07             	cmp    $0x7,%eax
c0032b91:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032b97:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032b9d:	7e d1                	jle    c0032b70 <_svfprintf_r+0x9b0>
c0032b9f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032ba2:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0032ba6:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032baa:	8b 45 08             	mov    0x8(%ebp),%eax
c0032bad:	89 04 24             	mov    %eax,(%esp)
c0032bb0:	e8 1b 41 00 00       	call   c0036cd0 <__ssprint_r>
c0032bb5:	85 c0                	test   %eax,%eax
c0032bb7:	0f 85 d3 f7 ff ff    	jne    c0032390 <_svfprintf_r+0x1d0>
c0032bbd:	83 ee 10             	sub    $0x10,%esi
c0032bc0:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032bc6:	83 fe 10             	cmp    $0x10,%esi
c0032bc9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032bcf:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032bd2:	7f a4                	jg     c0032b78 <_svfprintf_r+0x9b8>
c0032bd4:	83 c0 01             	add    $0x1,%eax
c0032bd7:	01 f1                	add    %esi,%ecx
c0032bd9:	c7 07 18 90 03 c0    	movl   $0xc0039018,(%edi)
c0032bdf:	83 c7 08             	add    $0x8,%edi
c0032be2:	89 77 fc             	mov    %esi,-0x4(%edi)
c0032be5:	83 f8 07             	cmp    $0x7,%eax
c0032be8:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032bee:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032bf4:	7e 32                	jle    c0032c28 <_svfprintf_r+0xa68>
c0032bf6:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032bfc:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032c00:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032c03:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032c07:	8b 45 08             	mov    0x8(%ebp),%eax
c0032c0a:	89 04 24             	mov    %eax,(%esp)
c0032c0d:	e8 be 40 00 00       	call   c0036cd0 <__ssprint_r>
c0032c12:	85 c0                	test   %eax,%eax
c0032c14:	0f 85 76 f7 ff ff    	jne    c0032390 <_svfprintf_r+0x1d0>
c0032c1a:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032c20:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032c23:	90                   	nop
c0032c24:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032c28:	f7 85 4c ff ff ff 00 	testl  $0x100,-0xb4(%ebp)
c0032c2f:	01 00 00 
c0032c32:	0f 85 50 01 00 00    	jne    c0032d88 <_svfprintf_r+0xbc8>
c0032c38:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c0032c3e:	89 07                	mov    %eax,(%edi)
c0032c40:	8b 85 38 ff ff ff    	mov    -0xc8(%ebp),%eax
c0032c46:	01 c1                	add    %eax,%ecx
c0032c48:	89 47 04             	mov    %eax,0x4(%edi)
c0032c4b:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032c51:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032c57:	83 c0 01             	add    $0x1,%eax
c0032c5a:	83 f8 07             	cmp    $0x7,%eax
c0032c5d:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032c63:	0f 8f 6a 04 00 00    	jg     c00330d3 <_svfprintf_r+0xf13>
c0032c69:	83 c7 08             	add    $0x8,%edi
c0032c6c:	f6 85 4c ff ff ff 04 	testb  $0x4,-0xb4(%ebp)
c0032c73:	0f 84 d7 00 00 00    	je     c0032d50 <_svfprintf_r+0xb90>
c0032c79:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
c0032c7f:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
c0032c85:	85 f6                	test   %esi,%esi
c0032c87:	0f 8e c3 00 00 00    	jle    c0032d50 <_svfprintf_r+0xb90>
c0032c8d:	83 fe 10             	cmp    $0x10,%esi
c0032c90:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032c96:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0032c9c:	7f 0a                	jg     c0032ca8 <_svfprintf_r+0xae8>
c0032c9e:	eb 64                	jmp    c0032d04 <_svfprintf_r+0xb44>
c0032ca0:	83 ee 10             	sub    $0x10,%esi
c0032ca3:	83 fe 10             	cmp    $0x10,%esi
c0032ca6:	7e 5c                	jle    c0032d04 <_svfprintf_r+0xb44>
c0032ca8:	83 c0 01             	add    $0x1,%eax
c0032cab:	83 c1 10             	add    $0x10,%ecx
c0032cae:	c7 07 28 90 03 c0    	movl   $0xc0039028,(%edi)
c0032cb4:	83 c7 08             	add    $0x8,%edi
c0032cb7:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0032cbe:	83 f8 07             	cmp    $0x7,%eax
c0032cc1:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032cc7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032ccd:	7e d1                	jle    c0032ca0 <_svfprintf_r+0xae0>
c0032ccf:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032cd2:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0032cd6:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032cda:	8b 45 08             	mov    0x8(%ebp),%eax
c0032cdd:	89 04 24             	mov    %eax,(%esp)
c0032ce0:	e8 eb 3f 00 00       	call   c0036cd0 <__ssprint_r>
c0032ce5:	85 c0                	test   %eax,%eax
c0032ce7:	0f 85 a3 f6 ff ff    	jne    c0032390 <_svfprintf_r+0x1d0>
c0032ced:	83 ee 10             	sub    $0x10,%esi
c0032cf0:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032cf6:	83 fe 10             	cmp    $0x10,%esi
c0032cf9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032cff:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032d02:	7f a4                	jg     c0032ca8 <_svfprintf_r+0xae8>
c0032d04:	83 c0 01             	add    $0x1,%eax
c0032d07:	01 f1                	add    %esi,%ecx
c0032d09:	83 f8 07             	cmp    $0x7,%eax
c0032d0c:	c7 07 28 90 03 c0    	movl   $0xc0039028,(%edi)
c0032d12:	89 77 04             	mov    %esi,0x4(%edi)
c0032d15:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032d1b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032d21:	7e 2d                	jle    c0032d50 <_svfprintf_r+0xb90>
c0032d23:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032d29:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032d2d:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032d30:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032d34:	8b 45 08             	mov    0x8(%ebp),%eax
c0032d37:	89 04 24             	mov    %eax,(%esp)
c0032d3a:	e8 91 3f 00 00       	call   c0036cd0 <__ssprint_r>
c0032d3f:	85 c0                	test   %eax,%eax
c0032d41:	0f 85 49 f6 ff ff    	jne    c0032390 <_svfprintf_r+0x1d0>
c0032d47:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032d4d:	8d 76 00             	lea    0x0(%esi),%esi
c0032d50:	8b 85 40 ff ff ff    	mov    -0xc0(%ebp),%eax
c0032d56:	8b 95 48 ff ff ff    	mov    -0xb8(%ebp),%edx
c0032d5c:	39 c2                	cmp    %eax,%edx
c0032d5e:	0f 4d c2             	cmovge %edx,%eax
c0032d61:	01 85 34 ff ff ff    	add    %eax,-0xcc(%ebp)
c0032d67:	85 c9                	test   %ecx,%ecx
c0032d69:	0f 85 99 03 00 00    	jne    c0033108 <_svfprintf_r+0xf48>
c0032d6f:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c0032d76:	00 00 00 
c0032d79:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032d7c:	e9 da f4 ff ff       	jmp    c003225b <_svfprintf_r+0x9b>
c0032d81:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0032d88:	83 bd 24 ff ff ff 65 	cmpl   $0x65,-0xdc(%ebp)
c0032d8f:	0f 8e 5b 02 00 00    	jle    c0032ff0 <_svfprintf_r+0xe30>
c0032d95:	d9 ee                	fldz   
c0032d97:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0032d9d:	df e9                	fucomip %st(1),%st
c0032d9f:	dd d8                	fstp   %st(0)
c0032da1:	0f 8a 59 04 00 00    	jp     c0033200 <_svfprintf_r+0x1040>
c0032da7:	0f 85 53 04 00 00    	jne    c0033200 <_svfprintf_r+0x1040>
c0032dad:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032db3:	83 c1 01             	add    $0x1,%ecx
c0032db6:	83 c7 08             	add    $0x8,%edi
c0032db9:	c7 47 f8 af 8e 03 c0 	movl   $0xc0038eaf,-0x8(%edi)
c0032dc0:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
c0032dc7:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032dcd:	83 c0 01             	add    $0x1,%eax
c0032dd0:	83 f8 07             	cmp    $0x7,%eax
c0032dd3:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032dd9:	0f 8f 63 09 00 00    	jg     c0033742 <_svfprintf_r+0x1582>
c0032ddf:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
c0032de5:	39 85 5c ff ff ff    	cmp    %eax,-0xa4(%ebp)
c0032deb:	7c 0d                	jl     c0032dfa <_svfprintf_r+0xc3a>
c0032ded:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0032df4:	0f 84 72 fe ff ff    	je     c0032c6c <_svfprintf_r+0xaac>
c0032dfa:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
c0032e00:	83 c7 08             	add    $0x8,%edi
c0032e03:	89 47 f8             	mov    %eax,-0x8(%edi)
c0032e06:	8b 85 08 ff ff ff    	mov    -0xf8(%ebp),%eax
c0032e0c:	89 47 fc             	mov    %eax,-0x4(%edi)
c0032e0f:	01 c1                	add    %eax,%ecx
c0032e11:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032e17:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032e1d:	83 c0 01             	add    $0x1,%eax
c0032e20:	83 f8 07             	cmp    $0x7,%eax
c0032e23:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032e29:	0f 8f dc 0b 00 00    	jg     c0033a0b <_svfprintf_r+0x184b>
c0032e2f:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
c0032e35:	8d 70 ff             	lea    -0x1(%eax),%esi
c0032e38:	85 f6                	test   %esi,%esi
c0032e3a:	0f 8e 2c fe ff ff    	jle    c0032c6c <_svfprintf_r+0xaac>
c0032e40:	83 fe 10             	cmp    $0x10,%esi
c0032e43:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032e49:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0032e4f:	7f 13                	jg     c0032e64 <_svfprintf_r+0xca4>
c0032e51:	e9 e6 05 00 00       	jmp    c003343c <_svfprintf_r+0x127c>
c0032e56:	66 90                	xchg   %ax,%ax
c0032e58:	83 ee 10             	sub    $0x10,%esi
c0032e5b:	83 fe 10             	cmp    $0x10,%esi
c0032e5e:	0f 8e d8 05 00 00    	jle    c003343c <_svfprintf_r+0x127c>
c0032e64:	83 c0 01             	add    $0x1,%eax
c0032e67:	83 c1 10             	add    $0x10,%ecx
c0032e6a:	c7 07 18 90 03 c0    	movl   $0xc0039018,(%edi)
c0032e70:	83 c7 08             	add    $0x8,%edi
c0032e73:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0032e7a:	83 f8 07             	cmp    $0x7,%eax
c0032e7d:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032e83:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032e89:	7e cd                	jle    c0032e58 <_svfprintf_r+0xc98>
c0032e8b:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032e8e:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0032e92:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032e96:	8b 45 08             	mov    0x8(%ebp),%eax
c0032e99:	89 04 24             	mov    %eax,(%esp)
c0032e9c:	e8 2f 3e 00 00       	call   c0036cd0 <__ssprint_r>
c0032ea1:	85 c0                	test   %eax,%eax
c0032ea3:	0f 85 e7 f4 ff ff    	jne    c0032390 <_svfprintf_r+0x1d0>
c0032ea9:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032eaf:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032eb2:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032eb8:	eb 9e                	jmp    c0032e58 <_svfprintf_r+0xc98>
c0032eba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0032ec0:	84 c0                	test   %al,%al
c0032ec2:	75 2c                	jne    c0032ef0 <_svfprintf_r+0xd30>
c0032ec4:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0032ecb:	74 23                	je     c0032ef0 <_svfprintf_r+0xd30>
c0032ecd:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
c0032ed3:	c6 45 a7 30          	movb   $0x30,-0x59(%ebp)
c0032ed7:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0032edd:	8d 45 a7             	lea    -0x59(%ebp),%eax
c0032ee0:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0032ee6:	e9 2d f7 ff ff       	jmp    c0032618 <_svfprintf_r+0x458>
c0032eeb:	90                   	nop
c0032eec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032ef0:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0032ef3:	c7 85 38 ff ff ff 00 	movl   $0x0,-0xc8(%ebp)
c0032efa:	00 00 00 
c0032efd:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0032f03:	e9 10 f7 ff ff       	jmp    c0032618 <_svfprintf_r+0x458>
c0032f08:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
c0032f0e:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
c0032f14:	85 f6                	test   %esi,%esi
c0032f16:	0f 8e 26 fc ff ff    	jle    c0032b42 <_svfprintf_r+0x982>
c0032f1c:	83 fe 10             	cmp    $0x10,%esi
c0032f1f:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032f25:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0032f2b:	7f 0b                	jg     c0032f38 <_svfprintf_r+0xd78>
c0032f2d:	eb 65                	jmp    c0032f94 <_svfprintf_r+0xdd4>
c0032f2f:	90                   	nop
c0032f30:	83 ee 10             	sub    $0x10,%esi
c0032f33:	83 fe 10             	cmp    $0x10,%esi
c0032f36:	7e 5c                	jle    c0032f94 <_svfprintf_r+0xdd4>
c0032f38:	83 c0 01             	add    $0x1,%eax
c0032f3b:	83 c1 10             	add    $0x10,%ecx
c0032f3e:	c7 07 18 90 03 c0    	movl   $0xc0039018,(%edi)
c0032f44:	83 c7 08             	add    $0x8,%edi
c0032f47:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0032f4e:	83 f8 07             	cmp    $0x7,%eax
c0032f51:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032f57:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032f5d:	7e d1                	jle    c0032f30 <_svfprintf_r+0xd70>
c0032f5f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032f62:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0032f66:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032f6a:	8b 45 08             	mov    0x8(%ebp),%eax
c0032f6d:	89 04 24             	mov    %eax,(%esp)
c0032f70:	e8 5b 3d 00 00       	call   c0036cd0 <__ssprint_r>
c0032f75:	85 c0                	test   %eax,%eax
c0032f77:	0f 85 13 f4 ff ff    	jne    c0032390 <_svfprintf_r+0x1d0>
c0032f7d:	83 ee 10             	sub    $0x10,%esi
c0032f80:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032f86:	83 fe 10             	cmp    $0x10,%esi
c0032f89:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032f8f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032f92:	7f a4                	jg     c0032f38 <_svfprintf_r+0xd78>
c0032f94:	83 c0 01             	add    $0x1,%eax
c0032f97:	01 f1                	add    %esi,%ecx
c0032f99:	c7 07 18 90 03 c0    	movl   $0xc0039018,(%edi)
c0032f9f:	83 c7 08             	add    $0x8,%edi
c0032fa2:	89 77 fc             	mov    %esi,-0x4(%edi)
c0032fa5:	83 f8 07             	cmp    $0x7,%eax
c0032fa8:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032fae:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032fb4:	0f 8e 88 fb ff ff    	jle    c0032b42 <_svfprintf_r+0x982>
c0032fba:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032fc0:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032fc4:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032fc7:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032fcb:	8b 45 08             	mov    0x8(%ebp),%eax
c0032fce:	89 04 24             	mov    %eax,(%esp)
c0032fd1:	e8 fa 3c 00 00       	call   c0036cd0 <__ssprint_r>
c0032fd6:	85 c0                	test   %eax,%eax
c0032fd8:	0f 85 b2 f3 ff ff    	jne    c0032390 <_svfprintf_r+0x1d0>
c0032fde:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032fe4:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032fe7:	e9 56 fb ff ff       	jmp    c0032b42 <_svfprintf_r+0x982>
c0032fec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032ff0:	83 bd 1c ff ff ff 01 	cmpl   $0x1,-0xe4(%ebp)
c0032ff7:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c0032ffd:	0f 8e df 05 00 00    	jle    c00335e2 <_svfprintf_r+0x1422>
c0033003:	89 07                	mov    %eax,(%edi)
c0033005:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003300b:	8d 51 01             	lea    0x1(%ecx),%edx
c003300e:	c7 47 04 01 00 00 00 	movl   $0x1,0x4(%edi)
c0033015:	83 c7 08             	add    $0x8,%edi
c0033018:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c003301e:	83 c0 01             	add    $0x1,%eax
c0033021:	83 f8 07             	cmp    $0x7,%eax
c0033024:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003302a:	0f 8f 59 06 00 00    	jg     c0033689 <_svfprintf_r+0x14c9>
c0033030:	8b 9d 0c ff ff ff    	mov    -0xf4(%ebp),%ebx
c0033036:	83 c0 01             	add    $0x1,%eax
c0033039:	83 c7 08             	add    $0x8,%edi
c003303c:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033042:	89 5f f8             	mov    %ebx,-0x8(%edi)
c0033045:	8b 9d 08 ff ff ff    	mov    -0xf8(%ebp),%ebx
c003304b:	89 5f fc             	mov    %ebx,-0x4(%edi)
c003304e:	01 da                	add    %ebx,%edx
c0033050:	83 f8 07             	cmp    $0x7,%eax
c0033053:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0033059:	0f 8f f2 05 00 00    	jg     c0033651 <_svfprintf_r+0x1491>
c003305f:	d9 ee                	fldz   
c0033061:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0033067:	df e9                	fucomip %st(1),%st
c0033069:	dd d8                	fstp   %st(0)
c003306b:	7a 06                	jp     c0033073 <_svfprintf_r+0xeb3>
c003306d:	0f 84 33 03 00 00    	je     c00333a6 <_svfprintf_r+0x11e6>
c0033073:	8b 8d 28 ff ff ff    	mov    -0xd8(%ebp),%ecx
c0033079:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c003307f:	83 c1 01             	add    $0x1,%ecx
c0033082:	89 0f                	mov    %ecx,(%edi)
c0033084:	8d 4b ff             	lea    -0x1(%ebx),%ecx
c0033087:	89 4f 04             	mov    %ecx,0x4(%edi)
c003308a:	01 ca                	add    %ecx,%edx
c003308c:	83 c0 01             	add    $0x1,%eax
c003308f:	83 f8 07             	cmp    $0x7,%eax
c0033092:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0033098:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003309e:	0f 8f 75 05 00 00    	jg     c0033619 <_svfprintf_r+0x1459>
c00330a4:	83 c7 08             	add    $0x8,%edi
c00330a7:	8b 9d 04 ff ff ff    	mov    -0xfc(%ebp),%ebx
c00330ad:	8d 8d 65 ff ff ff    	lea    -0x9b(%ebp),%ecx
c00330b3:	89 0f                	mov    %ecx,(%edi)
c00330b5:	89 5f 04             	mov    %ebx,0x4(%edi)
c00330b8:	8d 0c 1a             	lea    (%edx,%ebx,1),%ecx
c00330bb:	83 c0 01             	add    $0x1,%eax
c00330be:	83 f8 07             	cmp    $0x7,%eax
c00330c1:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00330c7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00330cd:	0f 8e 96 fb ff ff    	jle    c0032c69 <_svfprintf_r+0xaa9>
c00330d3:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00330d9:	89 44 24 08          	mov    %eax,0x8(%esp)
c00330dd:	8b 45 0c             	mov    0xc(%ebp),%eax
c00330e0:	89 44 24 04          	mov    %eax,0x4(%esp)
c00330e4:	8b 45 08             	mov    0x8(%ebp),%eax
c00330e7:	89 04 24             	mov    %eax,(%esp)
c00330ea:	e8 e1 3b 00 00       	call   c0036cd0 <__ssprint_r>
c00330ef:	85 c0                	test   %eax,%eax
c00330f1:	0f 85 99 f2 ff ff    	jne    c0032390 <_svfprintf_r+0x1d0>
c00330f7:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00330fd:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033100:	e9 67 fb ff ff       	jmp    c0032c6c <_svfprintf_r+0xaac>
c0033105:	8d 76 00             	lea    0x0(%esi),%esi
c0033108:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003310e:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033112:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033115:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033119:	8b 45 08             	mov    0x8(%ebp),%eax
c003311c:	89 04 24             	mov    %eax,(%esp)
c003311f:	e8 ac 3b 00 00       	call   c0036cd0 <__ssprint_r>
c0033124:	85 c0                	test   %eax,%eax
c0033126:	0f 84 43 fc ff ff    	je     c0032d6f <_svfprintf_r+0xbaf>
c003312c:	e9 5f f2 ff ff       	jmp    c0032390 <_svfprintf_r+0x1d0>
c0033131:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0033138:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003313e:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033142:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033145:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033149:	8b 45 08             	mov    0x8(%ebp),%eax
c003314c:	89 04 24             	mov    %eax,(%esp)
c003314f:	e8 7c 3b 00 00       	call   c0036cd0 <__ssprint_r>
c0033154:	85 c0                	test   %eax,%eax
c0033156:	0f 85 34 f2 ff ff    	jne    c0032390 <_svfprintf_r+0x1d0>
c003315c:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033162:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033165:	e9 c8 f9 ff ff       	jmp    c0032b32 <_svfprintf_r+0x972>
c003316a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0033170:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033176:	89 44 24 08          	mov    %eax,0x8(%esp)
c003317a:	8b 45 0c             	mov    0xc(%ebp),%eax
c003317d:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033181:	8b 45 08             	mov    0x8(%ebp),%eax
c0033184:	89 04 24             	mov    %eax,(%esp)
c0033187:	e8 44 3b 00 00       	call   c0036cd0 <__ssprint_r>
c003318c:	85 c0                	test   %eax,%eax
c003318e:	0f 85 fc f1 ff ff    	jne    c0032390 <_svfprintf_r+0x1d0>
c0033194:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c003319a:	8d 7d a8             	lea    -0x58(%ebp),%edi
c003319d:	e9 53 f9 ff ff       	jmp    c0032af5 <_svfprintf_r+0x935>
c00331a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00331a8:	89 c2                	mov    %eax,%edx
c00331aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00331b0:	89 c8                	mov    %ecx,%eax
c00331b2:	83 ea 01             	sub    $0x1,%edx
c00331b5:	83 e0 07             	and    $0x7,%eax
c00331b8:	c1 e9 03             	shr    $0x3,%ecx
c00331bb:	83 c0 30             	add    $0x30,%eax
c00331be:	85 c9                	test   %ecx,%ecx
c00331c0:	88 02                	mov    %al,(%edx)
c00331c2:	75 ec                	jne    c00331b0 <_svfprintf_r+0xff0>
c00331c4:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c00331cb:	89 95 28 ff ff ff    	mov    %edx,-0xd8(%ebp)
c00331d1:	0f 84 5b 01 00 00    	je     c0033332 <_svfprintf_r+0x1172>
c00331d7:	3c 30                	cmp    $0x30,%al
c00331d9:	74 0b                	je     c00331e6 <_svfprintf_r+0x1026>
c00331db:	83 ad 28 ff ff ff 01 	subl   $0x1,-0xd8(%ebp)
c00331e2:	c6 42 ff 30          	movb   $0x30,-0x1(%edx)
c00331e6:	8d 45 a8             	lea    -0x58(%ebp),%eax
c00331e9:	2b 85 28 ff ff ff    	sub    -0xd8(%ebp),%eax
c00331ef:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c00331f5:	e9 1e f4 ff ff       	jmp    c0032618 <_svfprintf_r+0x458>
c00331fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0033200:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c0033206:	85 db                	test   %ebx,%ebx
c0033208:	0f 8e 66 05 00 00    	jle    c0033774 <_svfprintf_r+0x15b4>
c003320e:	8b 95 28 ff ff ff    	mov    -0xd8(%ebp),%edx
c0033214:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
c003321a:	01 d0                	add    %edx,%eax
c003321c:	89 c3                	mov    %eax,%ebx
c003321e:	29 d3                	sub    %edx,%ebx
c0033220:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%ebp)
c0033226:	89 d0                	mov    %edx,%eax
c0033228:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c003322e:	39 d3                	cmp    %edx,%ebx
c0033230:	0f 4f da             	cmovg  %edx,%ebx
c0033233:	85 db                	test   %ebx,%ebx
c0033235:	7e 28                	jle    c003325f <_svfprintf_r+0x109f>
c0033237:	89 07                	mov    %eax,(%edi)
c0033239:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003323f:	01 d9                	add    %ebx,%ecx
c0033241:	89 5f 04             	mov    %ebx,0x4(%edi)
c0033244:	83 c7 08             	add    $0x8,%edi
c0033247:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c003324d:	83 c0 01             	add    $0x1,%eax
c0033250:	83 f8 07             	cmp    $0x7,%eax
c0033253:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033259:	0f 8f 58 09 00 00    	jg     c0033bb7 <_svfprintf_r+0x19f7>
c003325f:	8b b5 20 ff ff ff    	mov    -0xe0(%ebp),%esi
c0033265:	31 c0                	xor    %eax,%eax
c0033267:	85 db                	test   %ebx,%ebx
c0033269:	0f 49 c3             	cmovns %ebx,%eax
c003326c:	29 c6                	sub    %eax,%esi
c003326e:	85 f6                	test   %esi,%esi
c0033270:	0f 8e 40 02 00 00    	jle    c00334b6 <_svfprintf_r+0x12f6>
c0033276:	83 fe 10             	cmp    $0x10,%esi
c0033279:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003327f:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0033285:	7f 15                	jg     c003329c <_svfprintf_r+0x10dc>
c0033287:	e9 db 01 00 00       	jmp    c0033467 <_svfprintf_r+0x12a7>
c003328c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033290:	83 ee 10             	sub    $0x10,%esi
c0033293:	83 fe 10             	cmp    $0x10,%esi
c0033296:	0f 8e cb 01 00 00    	jle    c0033467 <_svfprintf_r+0x12a7>
c003329c:	83 c0 01             	add    $0x1,%eax
c003329f:	83 c1 10             	add    $0x10,%ecx
c00332a2:	c7 07 18 90 03 c0    	movl   $0xc0039018,(%edi)
c00332a8:	83 c7 08             	add    $0x8,%edi
c00332ab:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c00332b2:	83 f8 07             	cmp    $0x7,%eax
c00332b5:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00332bb:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00332c1:	7e cd                	jle    c0033290 <_svfprintf_r+0x10d0>
c00332c3:	8b 45 0c             	mov    0xc(%ebp),%eax
c00332c6:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c00332ca:	89 44 24 04          	mov    %eax,0x4(%esp)
c00332ce:	8b 45 08             	mov    0x8(%ebp),%eax
c00332d1:	89 04 24             	mov    %eax,(%esp)
c00332d4:	e8 f7 39 00 00       	call   c0036cd0 <__ssprint_r>
c00332d9:	85 c0                	test   %eax,%eax
c00332db:	0f 85 af f0 ff ff    	jne    c0032390 <_svfprintf_r+0x1d0>
c00332e1:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00332e7:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00332ea:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00332f0:	eb 9e                	jmp    c0033290 <_svfprintf_r+0x10d0>
c00332f2:	8d 45 a8             	lea    -0x58(%ebp),%eax
c00332f5:	be cd cc cc cc       	mov    $0xcccccccd,%esi
c00332fa:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c0033300:	89 c7                	mov    %eax,%edi
c0033302:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0033308:	89 c8                	mov    %ecx,%eax
c003330a:	83 ef 01             	sub    $0x1,%edi
c003330d:	f7 e6                	mul    %esi
c003330f:	c1 ea 03             	shr    $0x3,%edx
c0033312:	8d 04 92             	lea    (%edx,%edx,4),%eax
c0033315:	01 c0                	add    %eax,%eax
c0033317:	29 c1                	sub    %eax,%ecx
c0033319:	83 c1 30             	add    $0x30,%ecx
c003331c:	85 d2                	test   %edx,%edx
c003331e:	88 0f                	mov    %cl,(%edi)
c0033320:	89 d1                	mov    %edx,%ecx
c0033322:	75 e4                	jne    c0033308 <_svfprintf_r+0x1148>
c0033324:	89 fa                	mov    %edi,%edx
c0033326:	89 bd 28 ff ff ff    	mov    %edi,-0xd8(%ebp)
c003332c:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
c0033332:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0033335:	29 d0                	sub    %edx,%eax
c0033337:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c003333d:	e9 d6 f2 ff ff       	jmp    c0032618 <_svfprintf_r+0x458>
c0033342:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0033348:	83 f9 09             	cmp    $0x9,%ecx
c003334b:	77 a5                	ja     c00332f2 <_svfprintf_r+0x1132>
c003334d:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
c0033353:	83 c1 30             	add    $0x30,%ecx
c0033356:	88 4d a7             	mov    %cl,-0x59(%ebp)
c0033359:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c003335f:	8d 45 a7             	lea    -0x59(%ebp),%eax
c0033362:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0033368:	e9 ab f2 ff ff       	jmp    c0032618 <_svfprintf_r+0x458>
c003336d:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033373:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033377:	8b 45 0c             	mov    0xc(%ebp),%eax
c003337a:	89 44 24 04          	mov    %eax,0x4(%esp)
c003337e:	8b 45 08             	mov    0x8(%ebp),%eax
c0033381:	89 04 24             	mov    %eax,(%esp)
c0033384:	e8 47 39 00 00       	call   c0036cd0 <__ssprint_r>
c0033389:	85 c0                	test   %eax,%eax
c003338b:	0f 85 ff ef ff ff    	jne    c0032390 <_svfprintf_r+0x1d0>
c0033391:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0033398:	8d 7d a8             	lea    -0x58(%ebp),%edi
c003339b:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00333a1:	e9 18 f7 ff ff       	jmp    c0032abe <_svfprintf_r+0x8fe>
c00333a6:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c00333ac:	8d 73 ff             	lea    -0x1(%ebx),%esi
c00333af:	85 f6                	test   %esi,%esi
c00333b1:	0f 8e f0 fc ff ff    	jle    c00330a7 <_svfprintf_r+0xee7>
c00333b7:	83 fe 10             	cmp    $0x10,%esi
c00333ba:	7e 70                	jle    c003342c <_svfprintf_r+0x126c>
c00333bc:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c00333c2:	eb 0c                	jmp    c00333d0 <_svfprintf_r+0x1210>
c00333c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00333c8:	83 ee 10             	sub    $0x10,%esi
c00333cb:	83 fe 10             	cmp    $0x10,%esi
c00333ce:	7e 5c                	jle    c003342c <_svfprintf_r+0x126c>
c00333d0:	83 c0 01             	add    $0x1,%eax
c00333d3:	83 c2 10             	add    $0x10,%edx
c00333d6:	c7 07 18 90 03 c0    	movl   $0xc0039018,(%edi)
c00333dc:	83 c7 08             	add    $0x8,%edi
c00333df:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c00333e6:	83 f8 07             	cmp    $0x7,%eax
c00333e9:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00333ef:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00333f5:	7e d1                	jle    c00333c8 <_svfprintf_r+0x1208>
c00333f7:	8b 45 0c             	mov    0xc(%ebp),%eax
c00333fa:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c00333fe:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033402:	8b 45 08             	mov    0x8(%ebp),%eax
c0033405:	89 04 24             	mov    %eax,(%esp)
c0033408:	e8 c3 38 00 00       	call   c0036cd0 <__ssprint_r>
c003340d:	85 c0                	test   %eax,%eax
c003340f:	0f 85 7b ef ff ff    	jne    c0032390 <_svfprintf_r+0x1d0>
c0033415:	83 ee 10             	sub    $0x10,%esi
c0033418:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003341e:	83 fe 10             	cmp    $0x10,%esi
c0033421:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033427:	8d 7d a8             	lea    -0x58(%ebp),%edi
c003342a:	7f a4                	jg     c00333d0 <_svfprintf_r+0x1210>
c003342c:	c7 07 18 90 03 c0    	movl   $0xc0039018,(%edi)
c0033432:	01 f2                	add    %esi,%edx
c0033434:	89 77 04             	mov    %esi,0x4(%edi)
c0033437:	e9 50 fc ff ff       	jmp    c003308c <_svfprintf_r+0xecc>
c003343c:	c7 07 18 90 03 c0    	movl   $0xc0039018,(%edi)
c0033442:	01 f1                	add    %esi,%ecx
c0033444:	89 77 04             	mov    %esi,0x4(%edi)
c0033447:	e9 6f fc ff ff       	jmp    c00330bb <_svfprintf_r+0xefb>
c003344c:	8b 45 14             	mov    0x14(%ebp),%eax
c003344f:	8b 95 34 ff ff ff    	mov    -0xcc(%ebp),%edx
c0033455:	8b 00                	mov    (%eax),%eax
c0033457:	89 10                	mov    %edx,(%eax)
c0033459:	8b 45 14             	mov    0x14(%ebp),%eax
c003345c:	83 c0 04             	add    $0x4,%eax
c003345f:	89 45 14             	mov    %eax,0x14(%ebp)
c0033462:	e9 f4 ed ff ff       	jmp    c003225b <_svfprintf_r+0x9b>
c0033467:	83 c0 01             	add    $0x1,%eax
c003346a:	01 f1                	add    %esi,%ecx
c003346c:	c7 07 18 90 03 c0    	movl   $0xc0039018,(%edi)
c0033472:	83 c7 08             	add    $0x8,%edi
c0033475:	89 77 fc             	mov    %esi,-0x4(%edi)
c0033478:	83 f8 07             	cmp    $0x7,%eax
c003347b:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0033481:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033487:	7e 2d                	jle    c00334b6 <_svfprintf_r+0x12f6>
c0033489:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003348f:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033493:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033496:	89 44 24 04          	mov    %eax,0x4(%esp)
c003349a:	8b 45 08             	mov    0x8(%ebp),%eax
c003349d:	89 04 24             	mov    %eax,(%esp)
c00334a0:	e8 2b 38 00 00       	call   c0036cd0 <__ssprint_r>
c00334a5:	85 c0                	test   %eax,%eax
c00334a7:	0f 85 e3 ee ff ff    	jne    c0032390 <_svfprintf_r+0x1d0>
c00334ad:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00334b3:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00334b6:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c00334bc:	8b 95 5c ff ff ff    	mov    -0xa4(%ebp),%edx
c00334c2:	03 85 20 ff ff ff    	add    -0xe0(%ebp),%eax
c00334c8:	3b 95 1c ff ff ff    	cmp    -0xe4(%ebp),%edx
c00334ce:	89 c6                	mov    %eax,%esi
c00334d0:	7c 0d                	jl     c00334df <_svfprintf_r+0x131f>
c00334d2:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c00334d9:	0f 84 5e 05 00 00    	je     c0033a3d <_svfprintf_r+0x187d>
c00334df:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
c00334e5:	89 07                	mov    %eax,(%edi)
c00334e7:	8b 85 08 ff ff ff    	mov    -0xf8(%ebp),%eax
c00334ed:	01 c1                	add    %eax,%ecx
c00334ef:	89 47 04             	mov    %eax,0x4(%edi)
c00334f2:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00334f8:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00334fe:	83 c0 01             	add    $0x1,%eax
c0033501:	83 f8 07             	cmp    $0x7,%eax
c0033504:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003350a:	0f 8f d9 06 00 00    	jg     c0033be9 <_svfprintf_r+0x1a29>
c0033510:	83 c7 08             	add    $0x8,%edi
c0033513:	89 d0                	mov    %edx,%eax
c0033515:	8b 9d 44 ff ff ff    	mov    -0xbc(%ebp),%ebx
c003351b:	89 f2                	mov    %esi,%edx
c003351d:	29 f3                	sub    %esi,%ebx
c003351f:	8b b5 1c ff ff ff    	mov    -0xe4(%ebp),%esi
c0033525:	29 c6                	sub    %eax,%esi
c0033527:	39 de                	cmp    %ebx,%esi
c0033529:	0f 4e de             	cmovle %esi,%ebx
c003352c:	85 db                	test   %ebx,%ebx
c003352e:	7e 29                	jle    c0033559 <_svfprintf_r+0x1399>
c0033530:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033536:	01 d9                	add    %ebx,%ecx
c0033538:	83 c7 08             	add    $0x8,%edi
c003353b:	89 57 f8             	mov    %edx,-0x8(%edi)
c003353e:	89 5f fc             	mov    %ebx,-0x4(%edi)
c0033541:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0033547:	83 c0 01             	add    $0x1,%eax
c003354a:	83 f8 07             	cmp    $0x7,%eax
c003354d:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033553:	0f 8f c8 06 00 00    	jg     c0033c21 <_svfprintf_r+0x1a61>
c0033559:	31 c0                	xor    %eax,%eax
c003355b:	85 db                	test   %ebx,%ebx
c003355d:	0f 49 c3             	cmovns %ebx,%eax
c0033560:	29 c6                	sub    %eax,%esi
c0033562:	85 f6                	test   %esi,%esi
c0033564:	0f 8e 02 f7 ff ff    	jle    c0032c6c <_svfprintf_r+0xaac>
c003356a:	83 fe 10             	cmp    $0x10,%esi
c003356d:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033573:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0033579:	7f 11                	jg     c003358c <_svfprintf_r+0x13cc>
c003357b:	e9 bc fe ff ff       	jmp    c003343c <_svfprintf_r+0x127c>
c0033580:	83 ee 10             	sub    $0x10,%esi
c0033583:	83 fe 10             	cmp    $0x10,%esi
c0033586:	0f 8e b0 fe ff ff    	jle    c003343c <_svfprintf_r+0x127c>
c003358c:	83 c0 01             	add    $0x1,%eax
c003358f:	83 c1 10             	add    $0x10,%ecx
c0033592:	c7 07 18 90 03 c0    	movl   $0xc0039018,(%edi)
c0033598:	83 c7 08             	add    $0x8,%edi
c003359b:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c00335a2:	83 f8 07             	cmp    $0x7,%eax
c00335a5:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00335ab:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00335b1:	7e cd                	jle    c0033580 <_svfprintf_r+0x13c0>
c00335b3:	8b 45 0c             	mov    0xc(%ebp),%eax
c00335b6:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c00335ba:	89 44 24 04          	mov    %eax,0x4(%esp)
c00335be:	8b 45 08             	mov    0x8(%ebp),%eax
c00335c1:	89 04 24             	mov    %eax,(%esp)
c00335c4:	e8 07 37 00 00       	call   c0036cd0 <__ssprint_r>
c00335c9:	85 c0                	test   %eax,%eax
c00335cb:	0f 85 bf ed ff ff    	jne    c0032390 <_svfprintf_r+0x1d0>
c00335d1:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00335d7:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00335da:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00335e0:	eb 9e                	jmp    c0033580 <_svfprintf_r+0x13c0>
c00335e2:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c00335e9:	0f 85 14 fa ff ff    	jne    c0033003 <_svfprintf_r+0xe43>
c00335ef:	89 07                	mov    %eax,(%edi)
c00335f1:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00335f7:	8d 51 01             	lea    0x1(%ecx),%edx
c00335fa:	c7 47 04 01 00 00 00 	movl   $0x1,0x4(%edi)
c0033601:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0033607:	83 c0 01             	add    $0x1,%eax
c003360a:	83 f8 07             	cmp    $0x7,%eax
c003360d:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033613:	0f 8e 8b fa ff ff    	jle    c00330a4 <_svfprintf_r+0xee4>
c0033619:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003361f:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033623:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033626:	89 44 24 04          	mov    %eax,0x4(%esp)
c003362a:	8b 45 08             	mov    0x8(%ebp),%eax
c003362d:	89 04 24             	mov    %eax,(%esp)
c0033630:	e8 9b 36 00 00       	call   c0036cd0 <__ssprint_r>
c0033635:	85 c0                	test   %eax,%eax
c0033637:	0f 85 53 ed ff ff    	jne    c0032390 <_svfprintf_r+0x1d0>
c003363d:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0033643:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033646:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003364c:	e9 56 fa ff ff       	jmp    c00330a7 <_svfprintf_r+0xee7>
c0033651:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033657:	89 44 24 08          	mov    %eax,0x8(%esp)
c003365b:	8b 45 0c             	mov    0xc(%ebp),%eax
c003365e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033662:	8b 45 08             	mov    0x8(%ebp),%eax
c0033665:	89 04 24             	mov    %eax,(%esp)
c0033668:	e8 63 36 00 00       	call   c0036cd0 <__ssprint_r>
c003366d:	85 c0                	test   %eax,%eax
c003366f:	0f 85 1b ed ff ff    	jne    c0032390 <_svfprintf_r+0x1d0>
c0033675:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003367b:	8d 7d a8             	lea    -0x58(%ebp),%edi
c003367e:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033684:	e9 d6 f9 ff ff       	jmp    c003305f <_svfprintf_r+0xe9f>
c0033689:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003368f:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033693:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033696:	89 44 24 04          	mov    %eax,0x4(%esp)
c003369a:	8b 45 08             	mov    0x8(%ebp),%eax
c003369d:	89 04 24             	mov    %eax,(%esp)
c00336a0:	e8 2b 36 00 00       	call   c0036cd0 <__ssprint_r>
c00336a5:	85 c0                	test   %eax,%eax
c00336a7:	0f 85 e3 ec ff ff    	jne    c0032390 <_svfprintf_r+0x1d0>
c00336ad:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00336b3:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00336b6:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00336bc:	e9 6f f9 ff ff       	jmp    c0033030 <_svfprintf_r+0xe70>
c00336c1:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c00336c7:	dd 1c 24             	fstpl  (%esp)
c00336ca:	e8 11 35 00 00       	call   c0036be0 <__fpclassifyd>
c00336cf:	85 c0                	test   %eax,%eax
c00336d1:	0f 85 a3 01 00 00    	jne    c003387a <_svfprintf_r+0x16ba>
c00336d7:	83 bd 24 ff ff ff 47 	cmpl   $0x47,-0xdc(%ebp)
c00336de:	ba 7e 8e 03 c0       	mov    $0xc0038e7e,%edx
c00336e3:	b8 82 8e 03 c0       	mov    $0xc0038e82,%eax
c00336e8:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c00336ef:	c7 85 48 ff ff ff 03 	movl   $0x3,-0xb8(%ebp)
c00336f6:	00 00 00 
c00336f9:	0f 4e c2             	cmovle %edx,%eax
c00336fc:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0033702:	81 a5 4c ff ff ff 7f 	andl   $0xffffff7f,-0xb4(%ebp)
c0033709:	ff ff ff 
c003370c:	c7 85 38 ff ff ff 03 	movl   $0x3,-0xc8(%ebp)
c0033713:	00 00 00 
c0033716:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c003371d:	00 00 00 
c0033720:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0033727:	00 00 00 
c003372a:	e9 29 ed ff ff       	jmp    c0032458 <_svfprintf_r+0x298>
c003372f:	dd 00                	fldl   (%eax)
c0033731:	83 c0 08             	add    $0x8,%eax
c0033734:	dd 9d 10 ff ff ff    	fstpl  -0xf0(%ebp)
c003373a:	89 45 14             	mov    %eax,0x14(%ebp)
c003373d:	e9 e6 ef ff ff       	jmp    c0032728 <_svfprintf_r+0x568>
c0033742:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033748:	89 44 24 08          	mov    %eax,0x8(%esp)
c003374c:	8b 45 0c             	mov    0xc(%ebp),%eax
c003374f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033753:	8b 45 08             	mov    0x8(%ebp),%eax
c0033756:	89 04 24             	mov    %eax,(%esp)
c0033759:	e8 72 35 00 00       	call   c0036cd0 <__ssprint_r>
c003375e:	85 c0                	test   %eax,%eax
c0033760:	0f 85 2a ec ff ff    	jne    c0032390 <_svfprintf_r+0x1d0>
c0033766:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c003376c:	8d 7d a8             	lea    -0x58(%ebp),%edi
c003376f:	e9 6b f6 ff ff       	jmp    c0032ddf <_svfprintf_r+0xc1f>
c0033774:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003377a:	83 c1 01             	add    $0x1,%ecx
c003377d:	83 c7 08             	add    $0x8,%edi
c0033780:	c7 47 f8 af 8e 03 c0 	movl   $0xc0038eaf,-0x8(%edi)
c0033787:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
c003378e:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0033794:	83 c0 01             	add    $0x1,%eax
c0033797:	83 f8 07             	cmp    $0x7,%eax
c003379a:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00337a0:	0f 8f ef 02 00 00    	jg     c0033a95 <_svfprintf_r+0x18d5>
c00337a6:	85 db                	test   %ebx,%ebx
c00337a8:	75 17                	jne    c00337c1 <_svfprintf_r+0x1601>
c00337aa:	8b 95 1c ff ff ff    	mov    -0xe4(%ebp),%edx
c00337b0:	85 d2                	test   %edx,%edx
c00337b2:	75 0d                	jne    c00337c1 <_svfprintf_r+0x1601>
c00337b4:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c00337bb:	0f 84 ab f4 ff ff    	je     c0032c6c <_svfprintf_r+0xaac>
c00337c1:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
c00337c7:	83 c7 08             	add    $0x8,%edi
c00337ca:	89 47 f8             	mov    %eax,-0x8(%edi)
c00337cd:	8b 85 08 ff ff ff    	mov    -0xf8(%ebp),%eax
c00337d3:	89 47 fc             	mov    %eax,-0x4(%edi)
c00337d6:	8d 14 01             	lea    (%ecx,%eax,1),%edx
c00337d9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00337df:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00337e5:	83 c0 01             	add    $0x1,%eax
c00337e8:	83 f8 07             	cmp    $0x7,%eax
c00337eb:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00337f1:	0f 8f 60 03 00 00    	jg     c0033b57 <_svfprintf_r+0x1997>
c00337f7:	f7 db                	neg    %ebx
c00337f9:	85 db                	test   %ebx,%ebx
c00337fb:	0f 8e 21 03 00 00    	jle    c0033b22 <_svfprintf_r+0x1962>
c0033801:	83 fb 10             	cmp    $0x10,%ebx
c0033804:	0f 8e c3 02 00 00    	jle    c0033acd <_svfprintf_r+0x190d>
c003380a:	8d b5 74 ff ff ff    	lea    -0x8c(%ebp),%esi
c0033810:	eb 12                	jmp    c0033824 <_svfprintf_r+0x1664>
c0033812:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0033818:	83 eb 10             	sub    $0x10,%ebx
c003381b:	83 fb 10             	cmp    $0x10,%ebx
c003381e:	0f 8e a9 02 00 00    	jle    c0033acd <_svfprintf_r+0x190d>
c0033824:	83 c0 01             	add    $0x1,%eax
c0033827:	83 c2 10             	add    $0x10,%edx
c003382a:	c7 07 18 90 03 c0    	movl   $0xc0039018,(%edi)
c0033830:	83 c7 08             	add    $0x8,%edi
c0033833:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c003383a:	83 f8 07             	cmp    $0x7,%eax
c003383d:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0033843:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033849:	7e cd                	jle    c0033818 <_svfprintf_r+0x1658>
c003384b:	8b 45 0c             	mov    0xc(%ebp),%eax
c003384e:	89 74 24 08          	mov    %esi,0x8(%esp)
c0033852:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033856:	8b 45 08             	mov    0x8(%ebp),%eax
c0033859:	89 04 24             	mov    %eax,(%esp)
c003385c:	e8 6f 34 00 00       	call   c0036cd0 <__ssprint_r>
c0033861:	85 c0                	test   %eax,%eax
c0033863:	0f 85 27 eb ff ff    	jne    c0032390 <_svfprintf_r+0x1d0>
c0033869:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003386f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033872:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033878:	eb 9e                	jmp    c0033818 <_svfprintf_r+0x1658>
c003387a:	8b 9d 24 ff ff ff    	mov    -0xdc(%ebp),%ebx
c0033880:	83 e3 df             	and    $0xffffffdf,%ebx
c0033883:	83 bd 44 ff ff ff ff 	cmpl   $0xffffffff,-0xbc(%ebp)
c003388a:	0f 84 05 03 00 00    	je     c0033b95 <_svfprintf_r+0x19d5>
c0033890:	83 fb 47             	cmp    $0x47,%ebx
c0033893:	75 16                	jne    c00338ab <_svfprintf_r+0x16eb>
c0033895:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c003389b:	b8 01 00 00 00       	mov    $0x1,%eax
c00338a0:	85 d2                	test   %edx,%edx
c00338a2:	0f 45 c2             	cmovne %edx,%eax
c00338a5:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%ebp)
c00338ab:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
c00338b1:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c00338b7:	dd 95 38 ff ff ff    	fstl   -0xc8(%ebp)
c00338bd:	80 cc 01             	or     $0x1,%ah
c00338c0:	89 85 30 ff ff ff    	mov    %eax,-0xd0(%ebp)
c00338c6:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
c00338cc:	c6 85 48 ff ff ff 00 	movb   $0x0,-0xb8(%ebp)
c00338d3:	85 c0                	test   %eax,%eax
c00338d5:	0f 88 ba 05 00 00    	js     c0033e95 <_svfprintf_r+0x1cd5>
c00338db:	83 fb 46             	cmp    $0x46,%ebx
c00338de:	0f 94 c0             	sete   %al
c00338e1:	89 c6                	mov    %eax,%esi
c00338e3:	0f 84 d4 03 00 00    	je     c0033cbd <_svfprintf_r+0x1afd>
c00338e9:	83 fb 45             	cmp    $0x45,%ebx
c00338ec:	0f 85 99 05 00 00    	jne    c0033e8b <_svfprintf_r+0x1ccb>
c00338f2:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c00338f8:	dd 54 24 04          	fstl   0x4(%esp)
c00338fc:	c7 44 24 0c 02 00 00 	movl   $0x2,0xc(%esp)
c0033903:	00 
c0033904:	dd 9d 38 ff ff ff    	fstpl  -0xc8(%ebp)
c003390a:	8d 70 01             	lea    0x1(%eax),%esi
c003390d:	8d 85 6c ff ff ff    	lea    -0x94(%ebp),%eax
c0033913:	89 44 24 1c          	mov    %eax,0x1c(%esp)
c0033917:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
c003391d:	89 44 24 18          	mov    %eax,0x18(%esp)
c0033921:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
c0033927:	89 44 24 14          	mov    %eax,0x14(%esp)
c003392b:	8b 45 08             	mov    0x8(%ebp),%eax
c003392e:	89 74 24 10          	mov    %esi,0x10(%esp)
c0033932:	89 04 24             	mov    %eax,(%esp)
c0033935:	e8 56 09 00 00       	call   c0034290 <_dtoa_r>
c003393a:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0033940:	8d 0c 30             	lea    (%eax,%esi,1),%ecx
c0033943:	dd 85 38 ff ff ff    	fldl   -0xc8(%ebp)
c0033949:	d9 ee                	fldz   
c003394b:	d9 c9                	fxch   %st(1)
c003394d:	df e9                	fucomip %st(1),%st
c003394f:	dd d8                	fstp   %st(0)
c0033951:	0f 8a fd 00 00 00    	jp     c0033a54 <_svfprintf_r+0x1894>
c0033957:	89 c8                	mov    %ecx,%eax
c0033959:	0f 85 f5 00 00 00    	jne    c0033a54 <_svfprintf_r+0x1894>
c003395f:	2b 85 28 ff ff ff    	sub    -0xd8(%ebp),%eax
c0033965:	83 fb 47             	cmp    $0x47,%ebx
c0033968:	89 85 1c ff ff ff    	mov    %eax,-0xe4(%ebp)
c003396e:	0f 84 1e 04 00 00    	je     c0033d92 <_svfprintf_r+0x1bd2>
c0033974:	83 bd 24 ff ff ff 65 	cmpl   $0x65,-0xdc(%ebp)
c003397b:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0033981:	0f 8e 65 04 00 00    	jle    c0033dec <_svfprintf_r+0x1c2c>
c0033987:	83 bd 24 ff ff ff 66 	cmpl   $0x66,-0xdc(%ebp)
c003398e:	89 85 20 ff ff ff    	mov    %eax,-0xe0(%ebp)
c0033994:	0f 84 3c 05 00 00    	je     c0033ed6 <_svfprintf_r+0x1d16>
c003399a:	8b 85 20 ff ff ff    	mov    -0xe0(%ebp),%eax
c00339a0:	39 85 1c ff ff ff    	cmp    %eax,-0xe4(%ebp)
c00339a6:	0f 8f f7 04 00 00    	jg     c0033ea3 <_svfprintf_r+0x1ce3>
c00339ac:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
c00339b2:	83 e0 01             	and    $0x1,%eax
c00339b5:	0f 85 e2 05 00 00    	jne    c0033f9d <_svfprintf_r+0x1ddd>
c00339bb:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c00339c1:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
c00339c8:	00 00 00 
c00339cb:	85 d2                	test   %edx,%edx
c00339cd:	0f 49 c2             	cmovns %edx,%eax
c00339d0:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c00339d6:	80 bd 48 ff ff ff 00 	cmpb   $0x0,-0xb8(%ebp)
c00339dd:	0f 85 68 03 00 00    	jne    c0033d4b <_svfprintf_r+0x1b8b>
c00339e3:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c00339e9:	8b 85 30 ff ff ff    	mov    -0xd0(%ebp),%eax
c00339ef:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c00339f6:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c00339fd:	00 00 00 
c0033a00:	89 85 4c ff ff ff    	mov    %eax,-0xb4(%ebp)
c0033a06:	e9 4d ea ff ff       	jmp    c0032458 <_svfprintf_r+0x298>
c0033a0b:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033a11:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033a15:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033a18:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033a1c:	8b 45 08             	mov    0x8(%ebp),%eax
c0033a1f:	89 04 24             	mov    %eax,(%esp)
c0033a22:	e8 a9 32 00 00       	call   c0036cd0 <__ssprint_r>
c0033a27:	85 c0                	test   %eax,%eax
c0033a29:	0f 85 61 e9 ff ff    	jne    c0032390 <_svfprintf_r+0x1d0>
c0033a2f:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033a35:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033a38:	e9 f2 f3 ff ff       	jmp    c0032e2f <_svfprintf_r+0xc6f>
c0033a3d:	89 d0                	mov    %edx,%eax
c0033a3f:	e9 d1 fa ff ff       	jmp    c0033515 <_svfprintf_r+0x1355>
c0033a44:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033a48:	8d 50 01             	lea    0x1(%eax),%edx
c0033a4b:	89 95 6c ff ff ff    	mov    %edx,-0x94(%ebp)
c0033a51:	c6 00 30             	movb   $0x30,(%eax)
c0033a54:	8b 85 6c ff ff ff    	mov    -0x94(%ebp),%eax
c0033a5a:	39 c1                	cmp    %eax,%ecx
c0033a5c:	77 ea                	ja     c0033a48 <_svfprintf_r+0x1888>
c0033a5e:	e9 fc fe ff ff       	jmp    c003395f <_svfprintf_r+0x179f>
c0033a63:	8b 45 08             	mov    0x8(%ebp),%eax
c0033a66:	c7 44 24 04 40 00 00 	movl   $0x40,0x4(%esp)
c0033a6d:	00 
c0033a6e:	89 04 24             	mov    %eax,(%esp)
c0033a71:	e8 4a 1b 00 00       	call   c00355c0 <_malloc_r>
c0033a76:	8b 55 0c             	mov    0xc(%ebp),%edx
c0033a79:	85 c0                	test   %eax,%eax
c0033a7b:	89 02                	mov    %eax,(%edx)
c0033a7d:	89 42 10             	mov    %eax,0x10(%edx)
c0033a80:	0f 84 15 06 00 00    	je     c003409b <_svfprintf_r+0x1edb>
c0033a86:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033a89:	c7 40 14 40 00 00 00 	movl   $0x40,0x14(%eax)
c0033a90:	e9 6c e7 ff ff       	jmp    c0032201 <_svfprintf_r+0x41>
c0033a95:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033a9b:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033a9f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033aa2:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033aa6:	8b 45 08             	mov    0x8(%ebp),%eax
c0033aa9:	89 04 24             	mov    %eax,(%esp)
c0033aac:	e8 1f 32 00 00       	call   c0036cd0 <__ssprint_r>
c0033ab1:	85 c0                	test   %eax,%eax
c0033ab3:	0f 85 d7 e8 ff ff    	jne    c0032390 <_svfprintf_r+0x1d0>
c0033ab9:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c0033abf:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033ac2:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033ac8:	e9 d9 fc ff ff       	jmp    c00337a6 <_svfprintf_r+0x15e6>
c0033acd:	83 c0 01             	add    $0x1,%eax
c0033ad0:	01 da                	add    %ebx,%edx
c0033ad2:	c7 07 18 90 03 c0    	movl   $0xc0039018,(%edi)
c0033ad8:	83 c7 08             	add    $0x8,%edi
c0033adb:	89 5f fc             	mov    %ebx,-0x4(%edi)
c0033ade:	83 f8 07             	cmp    $0x7,%eax
c0033ae1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0033ae7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033aed:	7e 33                	jle    c0033b22 <_svfprintf_r+0x1962>
c0033aef:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033af5:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033af9:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033afc:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033b00:	8b 45 08             	mov    0x8(%ebp),%eax
c0033b03:	89 04 24             	mov    %eax,(%esp)
c0033b06:	e8 c5 31 00 00       	call   c0036cd0 <__ssprint_r>
c0033b0b:	85 c0                	test   %eax,%eax
c0033b0d:	0f 85 7d e8 ff ff    	jne    c0032390 <_svfprintf_r+0x1d0>
c0033b13:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0033b19:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033b1c:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033b22:	8b 9d 28 ff ff ff    	mov    -0xd8(%ebp),%ebx
c0033b28:	83 c0 01             	add    $0x1,%eax
c0033b2b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033b31:	89 1f                	mov    %ebx,(%edi)
c0033b33:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c0033b39:	01 da                	add    %ebx,%edx
c0033b3b:	83 f8 07             	cmp    $0x7,%eax
c0033b3e:	89 5f 04             	mov    %ebx,0x4(%edi)
c0033b41:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0033b47:	0f 8f 86 f5 ff ff    	jg     c00330d3 <_svfprintf_r+0xf13>
c0033b4d:	83 c7 08             	add    $0x8,%edi
c0033b50:	89 d1                	mov    %edx,%ecx
c0033b52:	e9 15 f1 ff ff       	jmp    c0032c6c <_svfprintf_r+0xaac>
c0033b57:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033b5d:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033b61:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033b64:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033b68:	8b 45 08             	mov    0x8(%ebp),%eax
c0033b6b:	89 04 24             	mov    %eax,(%esp)
c0033b6e:	e8 5d 31 00 00       	call   c0036cd0 <__ssprint_r>
c0033b73:	85 c0                	test   %eax,%eax
c0033b75:	0f 85 15 e8 ff ff    	jne    c0032390 <_svfprintf_r+0x1d0>
c0033b7b:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c0033b81:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033b84:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0033b8a:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033b90:	e9 62 fc ff ff       	jmp    c00337f7 <_svfprintf_r+0x1637>
c0033b95:	c7 85 44 ff ff ff 06 	movl   $0x6,-0xbc(%ebp)
c0033b9c:	00 00 00 
c0033b9f:	e9 07 fd ff ff       	jmp    c00338ab <_svfprintf_r+0x16eb>
c0033ba4:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c0033baa:	89 04 24             	mov    %eax,(%esp)
c0033bad:	e8 9e 30 00 00       	call   c0036c50 <strlen>
c0033bb2:	e9 6a e8 ff ff       	jmp    c0032421 <_svfprintf_r+0x261>
c0033bb7:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033bbd:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033bc1:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033bc4:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033bc8:	8b 45 08             	mov    0x8(%ebp),%eax
c0033bcb:	89 04 24             	mov    %eax,(%esp)
c0033bce:	e8 fd 30 00 00       	call   c0036cd0 <__ssprint_r>
c0033bd3:	85 c0                	test   %eax,%eax
c0033bd5:	0f 85 b5 e7 ff ff    	jne    c0032390 <_svfprintf_r+0x1d0>
c0033bdb:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033be1:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033be4:	e9 76 f6 ff ff       	jmp    c003325f <_svfprintf_r+0x109f>
c0033be9:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033bef:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033bf3:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033bf6:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033bfa:	8b 45 08             	mov    0x8(%ebp),%eax
c0033bfd:	89 04 24             	mov    %eax,(%esp)
c0033c00:	e8 cb 30 00 00       	call   c0036cd0 <__ssprint_r>
c0033c05:	85 c0                	test   %eax,%eax
c0033c07:	0f 85 83 e7 ff ff    	jne    c0032390 <_svfprintf_r+0x1d0>
c0033c0d:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0033c13:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033c16:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033c1c:	e9 f4 f8 ff ff       	jmp    c0033515 <_svfprintf_r+0x1355>
c0033c21:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033c27:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033c2b:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033c2e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033c32:	8b 45 08             	mov    0x8(%ebp),%eax
c0033c35:	89 04 24             	mov    %eax,(%esp)
c0033c38:	e8 93 30 00 00       	call   c0036cd0 <__ssprint_r>
c0033c3d:	85 c0                	test   %eax,%eax
c0033c3f:	0f 85 4b e7 ff ff    	jne    c0032390 <_svfprintf_r+0x1d0>
c0033c45:	8b b5 1c ff ff ff    	mov    -0xe4(%ebp),%esi
c0033c4b:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033c4e:	2b b5 5c ff ff ff    	sub    -0xa4(%ebp),%esi
c0033c54:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033c5a:	e9 fa f8 ff ff       	jmp    c0033559 <_svfprintf_r+0x1399>
c0033c5f:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c0033c65:	b0 06                	mov    $0x6,%al
c0033c67:	89 75 14             	mov    %esi,0x14(%ebp)
c0033c6a:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0033c71:	00 00 00 
c0033c74:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0033c7b:	00 00 00 
c0033c7e:	83 fa 06             	cmp    $0x6,%edx
c0033c81:	0f 46 c2             	cmovbe %edx,%eax
c0033c84:	8b 95 28 ff ff ff    	mov    -0xd8(%ebp),%edx
c0033c8a:	85 c0                	test   %eax,%eax
c0033c8c:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0033c92:	c7 85 28 ff ff ff a8 	movl   $0xc0038ea8,-0xd8(%ebp)
c0033c99:	8e 03 c0 
c0033c9c:	0f 49 d0             	cmovns %eax,%edx
c0033c9f:	31 db                	xor    %ebx,%ebx
c0033ca1:	89 95 48 ff ff ff    	mov    %edx,-0xb8(%ebp)
c0033ca7:	e9 b7 e7 ff ff       	jmp    c0032463 <_svfprintf_r+0x2a3>
c0033cac:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
c0033cb3:	bb 2d 00 00 00       	mov    $0x2d,%ebx
c0033cb8:	e9 9d ea ff ff       	jmp    c003275a <_svfprintf_r+0x59a>
c0033cbd:	ba 03 00 00 00       	mov    $0x3,%edx
c0033cc2:	8d 85 6c ff ff ff    	lea    -0x94(%ebp),%eax
c0033cc8:	89 44 24 1c          	mov    %eax,0x1c(%esp)
c0033ccc:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
c0033cd2:	89 44 24 18          	mov    %eax,0x18(%esp)
c0033cd6:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
c0033cdc:	89 44 24 14          	mov    %eax,0x14(%esp)
c0033ce0:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c0033ce6:	dd 54 24 04          	fstl   0x4(%esp)
c0033cea:	89 54 24 0c          	mov    %edx,0xc(%esp)
c0033cee:	dd 9d 38 ff ff ff    	fstpl  -0xc8(%ebp)
c0033cf4:	89 44 24 10          	mov    %eax,0x10(%esp)
c0033cf8:	8b 45 08             	mov    0x8(%ebp),%eax
c0033cfb:	89 04 24             	mov    %eax,(%esp)
c0033cfe:	e8 8d 05 00 00       	call   c0034290 <_dtoa_r>
c0033d03:	83 fb 47             	cmp    $0x47,%ebx
c0033d06:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0033d0c:	dd 85 38 ff ff ff    	fldl   -0xc8(%ebp)
c0033d12:	75 09                	jne    c0033d1d <_svfprintf_r+0x1b5d>
c0033d14:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0033d1b:	74 5b                	je     c0033d78 <_svfprintf_r+0x1bb8>
c0033d1d:	8b 95 28 ff ff ff    	mov    -0xd8(%ebp),%edx
c0033d23:	89 f0                	mov    %esi,%eax
c0033d25:	8b 8d 44 ff ff ff    	mov    -0xbc(%ebp),%ecx
c0033d2b:	01 d1                	add    %edx,%ecx
c0033d2d:	84 c0                	test   %al,%al
c0033d2f:	0f 84 14 fc ff ff    	je     c0033949 <_svfprintf_r+0x1789>
c0033d35:	80 3a 30             	cmpb   $0x30,(%edx)
c0033d38:	0f 84 37 02 00 00    	je     c0033f75 <_svfprintf_r+0x1db5>
c0033d3e:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0033d44:	01 c1                	add    %eax,%ecx
c0033d46:	e9 fe fb ff ff       	jmp    c0033949 <_svfprintf_r+0x1789>
c0033d4b:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0033d51:	8b 85 30 ff ff ff    	mov    -0xd0(%ebp),%eax
c0033d57:	bb 2d 00 00 00       	mov    $0x2d,%ebx
c0033d5c:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
c0033d63:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0033d6a:	00 00 00 
c0033d6d:	89 85 4c ff ff ff    	mov    %eax,-0xb4(%ebp)
c0033d73:	e9 e4 e6 ff ff       	jmp    c003245c <_svfprintf_r+0x29c>
c0033d78:	dd d8                	fstp   %st(0)
c0033d7a:	8b 85 6c ff ff ff    	mov    -0x94(%ebp),%eax
c0033d80:	89 85 1c ff ff ff    	mov    %eax,-0xe4(%ebp)
c0033d86:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c0033d8c:	29 85 1c ff ff ff    	sub    %eax,-0xe4(%ebp)
c0033d92:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0033d98:	83 f8 fd             	cmp    $0xfffffffd,%eax
c0033d9b:	7c 48                	jl     c0033de5 <_svfprintf_r+0x1c25>
c0033d9d:	39 85 44 ff ff ff    	cmp    %eax,-0xbc(%ebp)
c0033da3:	7c 40                	jl     c0033de5 <_svfprintf_r+0x1c25>
c0033da5:	89 85 20 ff ff ff    	mov    %eax,-0xe0(%ebp)
c0033dab:	e9 ea fb ff ff       	jmp    c003399a <_svfprintf_r+0x17da>
c0033db0:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c0033db6:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0033dbd:	89 75 14             	mov    %esi,0x14(%ebp)
c0033dc0:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0033dc7:	00 00 00 
c0033dca:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0033dd0:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0033dd6:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0033ddd:	00 00 00 
c0033de0:	e9 73 e6 ff ff       	jmp    c0032458 <_svfprintf_r+0x298>
c0033de5:	83 ad 24 ff ff ff 02 	subl   $0x2,-0xdc(%ebp)
c0033dec:	8d 48 ff             	lea    -0x1(%eax),%ecx
c0033def:	0f b6 85 24 ff ff ff 	movzbl -0xdc(%ebp),%eax
c0033df6:	85 c9                	test   %ecx,%ecx
c0033df8:	89 8d 5c ff ff ff    	mov    %ecx,-0xa4(%ebp)
c0033dfe:	88 85 65 ff ff ff    	mov    %al,-0x9b(%ebp)
c0033e04:	0f 88 2c 02 00 00    	js     c0034036 <_svfprintf_r+0x1e76>
c0033e0a:	c6 85 66 ff ff ff 2b 	movb   $0x2b,-0x9a(%ebp)
c0033e11:	83 f9 09             	cmp    $0x9,%ecx
c0033e14:	0f 8f ea 00 00 00    	jg     c0033f04 <_svfprintf_r+0x1d44>
c0033e1a:	83 c1 30             	add    $0x30,%ecx
c0033e1d:	c6 85 67 ff ff ff 30 	movb   $0x30,-0x99(%ebp)
c0033e24:	8d 85 69 ff ff ff    	lea    -0x97(%ebp),%eax
c0033e2a:	88 8d 68 ff ff ff    	mov    %cl,-0x98(%ebp)
c0033e30:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c0033e36:	8d 95 65 ff ff ff    	lea    -0x9b(%ebp),%edx
c0033e3c:	29 d0                	sub    %edx,%eax
c0033e3e:	89 85 04 ff ff ff    	mov    %eax,-0xfc(%ebp)
c0033e44:	89 da                	mov    %ebx,%edx
c0033e46:	01 c2                	add    %eax,%edx
c0033e48:	83 fb 01             	cmp    $0x1,%ebx
c0033e4b:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0033e51:	0f 8e 21 02 00 00    	jle    c0034078 <_svfprintf_r+0x1eb8>
c0033e57:	31 c0                	xor    %eax,%eax
c0033e59:	83 85 38 ff ff ff 01 	addl   $0x1,-0xc8(%ebp)
c0033e60:	0f 49 85 38 ff ff ff 	cmovns -0xc8(%ebp),%eax
c0033e67:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0033e6e:	00 00 00 
c0033e71:	e9 60 fb ff ff       	jmp    c00339d6 <_svfprintf_r+0x1816>
c0033e76:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c0033e7c:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0033e83:	00 00 00 
c0033e86:	e9 68 e4 ff ff       	jmp    c00322f3 <_svfprintf_r+0x133>
c0033e8b:	ba 02 00 00 00       	mov    $0x2,%edx
c0033e90:	e9 2d fe ff ff       	jmp    c0033cc2 <_svfprintf_r+0x1b02>
c0033e95:	d9 e0                	fchs   
c0033e97:	c6 85 48 ff ff ff 2d 	movb   $0x2d,-0xb8(%ebp)
c0033e9e:	e9 38 fa ff ff       	jmp    c00338db <_svfprintf_r+0x171b>
c0033ea3:	8b 8d 20 ff ff ff    	mov    -0xe0(%ebp),%ecx
c0033ea9:	ba 01 00 00 00       	mov    $0x1,%edx
c0033eae:	85 c9                	test   %ecx,%ecx
c0033eb0:	0f 8e 5a 01 00 00    	jle    c0034010 <_svfprintf_r+0x1e50>
c0033eb6:	31 c0                	xor    %eax,%eax
c0033eb8:	03 95 1c ff ff ff    	add    -0xe4(%ebp),%edx
c0033ebe:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
c0033ec5:	00 00 00 
c0033ec8:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0033ece:	0f 49 c2             	cmovns %edx,%eax
c0033ed1:	e9 00 fb ff ff       	jmp    c00339d6 <_svfprintf_r+0x1816>
c0033ed6:	85 c0                	test   %eax,%eax
c0033ed8:	0f 8e 06 01 00 00    	jle    c0033fe4 <_svfprintf_r+0x1e24>
c0033ede:	8b b5 44 ff ff ff    	mov    -0xbc(%ebp),%esi
c0033ee4:	85 f6                	test   %esi,%esi
c0033ee6:	0f 85 d4 00 00 00    	jne    c0033fc0 <_svfprintf_r+0x1e00>
c0033eec:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0033ef3:	0f 85 c7 00 00 00    	jne    c0033fc0 <_svfprintf_r+0x1e00>
c0033ef9:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0033eff:	e9 d2 fa ff ff       	jmp    c00339d6 <_svfprintf_r+0x1816>
c0033f04:	8d b5 73 ff ff ff    	lea    -0x8d(%ebp),%esi
c0033f0a:	89 f3                	mov    %esi,%ebx
c0033f0c:	b8 67 66 66 66       	mov    $0x66666667,%eax
c0033f11:	83 eb 01             	sub    $0x1,%ebx
c0033f14:	f7 e9                	imul   %ecx
c0033f16:	89 c8                	mov    %ecx,%eax
c0033f18:	c1 f8 1f             	sar    $0x1f,%eax
c0033f1b:	c1 fa 02             	sar    $0x2,%edx
c0033f1e:	29 c2                	sub    %eax,%edx
c0033f20:	8d 04 92             	lea    (%edx,%edx,4),%eax
c0033f23:	01 c0                	add    %eax,%eax
c0033f25:	29 c1                	sub    %eax,%ecx
c0033f27:	83 fa 09             	cmp    $0x9,%edx
c0033f2a:	8d 41 30             	lea    0x30(%ecx),%eax
c0033f2d:	89 d1                	mov    %edx,%ecx
c0033f2f:	88 03                	mov    %al,(%ebx)
c0033f31:	7f d9                	jg     c0033f0c <_svfprintf_r+0x1d4c>
c0033f33:	8d 43 ff             	lea    -0x1(%ebx),%eax
c0033f36:	83 c1 30             	add    $0x30,%ecx
c0033f39:	39 f0                	cmp    %esi,%eax
c0033f3b:	88 4b ff             	mov    %cl,-0x1(%ebx)
c0033f3e:	0f 83 6a 01 00 00    	jae    c00340ae <_svfprintf_r+0x1eee>
c0033f44:	8d 95 67 ff ff ff    	lea    -0x99(%ebp),%edx
c0033f4a:	eb 07                	jmp    c0033f53 <_svfprintf_r+0x1d93>
c0033f4c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033f50:	0f b6 08             	movzbl (%eax),%ecx
c0033f53:	83 c0 01             	add    $0x1,%eax
c0033f56:	83 c2 01             	add    $0x1,%edx
c0033f59:	39 f0                	cmp    %esi,%eax
c0033f5b:	88 4a ff             	mov    %cl,-0x1(%edx)
c0033f5e:	75 f0                	jne    c0033f50 <_svfprintf_r+0x1d90>
c0033f60:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033f66:	29 d8                	sub    %ebx,%eax
c0033f68:	8d 95 67 ff ff ff    	lea    -0x99(%ebp),%edx
c0033f6e:	01 d0                	add    %edx,%eax
c0033f70:	e9 bb fe ff ff       	jmp    c0033e30 <_svfprintf_r+0x1c70>
c0033f75:	d9 ee                	fldz   
c0033f77:	d9 c9                	fxch   %st(1)
c0033f79:	db e9                	fucomi %st(1),%st
c0033f7b:	dd d9                	fstp   %st(1)
c0033f7d:	7a 06                	jp     c0033f85 <_svfprintf_r+0x1dc5>
c0033f7f:	0f 84 b9 fd ff ff    	je     c0033d3e <_svfprintf_r+0x1b7e>
c0033f85:	b8 01 00 00 00       	mov    $0x1,%eax
c0033f8a:	2b 85 44 ff ff ff    	sub    -0xbc(%ebp),%eax
c0033f90:	89 85 5c ff ff ff    	mov    %eax,-0xa4(%ebp)
c0033f96:	01 c1                	add    %eax,%ecx
c0033f98:	e9 ac f9 ff ff       	jmp    c0033949 <_svfprintf_r+0x1789>
c0033f9d:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c0033fa3:	31 c0                	xor    %eax,%eax
c0033fa5:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
c0033fac:	00 00 00 
c0033faf:	83 c2 01             	add    $0x1,%edx
c0033fb2:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0033fb8:	0f 49 c2             	cmovns %edx,%eax
c0033fbb:	e9 16 fa ff ff       	jmp    c00339d6 <_svfprintf_r+0x1816>
c0033fc0:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c0033fc6:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c0033fcc:	8d 44 10 01          	lea    0x1(%eax,%edx,1),%eax
c0033fd0:	89 c2                	mov    %eax,%edx
c0033fd2:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0033fd8:	31 c0                	xor    %eax,%eax
c0033fda:	85 d2                	test   %edx,%edx
c0033fdc:	0f 49 c2             	cmovns %edx,%eax
c0033fdf:	e9 f2 f9 ff ff       	jmp    c00339d6 <_svfprintf_r+0x1816>
c0033fe4:	8b 9d 44 ff ff ff    	mov    -0xbc(%ebp),%ebx
c0033fea:	85 db                	test   %ebx,%ebx
c0033fec:	75 2f                	jne    c003401d <_svfprintf_r+0x1e5d>
c0033fee:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0033ff5:	75 26                	jne    c003401d <_svfprintf_r+0x1e5d>
c0033ff7:	b8 01 00 00 00       	mov    $0x1,%eax
c0033ffc:	c7 85 38 ff ff ff 01 	movl   $0x1,-0xc8(%ebp)
c0034003:	00 00 00 
c0034006:	e9 cb f9 ff ff       	jmp    c00339d6 <_svfprintf_r+0x1816>
c003400b:	90                   	nop
c003400c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034010:	b2 02                	mov    $0x2,%dl
c0034012:	2b 95 20 ff ff ff    	sub    -0xe0(%ebp),%edx
c0034018:	e9 99 fe ff ff       	jmp    c0033eb6 <_svfprintf_r+0x1cf6>
c003401d:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c0034023:	31 c0                	xor    %eax,%eax
c0034025:	83 c2 02             	add    $0x2,%edx
c0034028:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c003402e:	0f 49 c2             	cmovns %edx,%eax
c0034031:	e9 a0 f9 ff ff       	jmp    c00339d6 <_svfprintf_r+0x1816>
c0034036:	f7 d9                	neg    %ecx
c0034038:	c6 85 66 ff ff ff 2d 	movb   $0x2d,-0x9a(%ebp)
c003403f:	e9 cd fd ff ff       	jmp    c0033e11 <_svfprintf_r+0x1c51>
c0034044:	8b 55 14             	mov    0x14(%ebp),%edx
c0034047:	8b 45 14             	mov    0x14(%ebp),%eax
c003404a:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c0034050:	8b 12                	mov    (%edx),%edx
c0034052:	83 c0 04             	add    $0x4,%eax
c0034055:	89 45 14             	mov    %eax,0x14(%ebp)
c0034058:	85 d2                	test   %edx,%edx
c003405a:	89 95 44 ff ff ff    	mov    %edx,-0xbc(%ebp)
c0034060:	0f 89 a9 e2 ff ff    	jns    c003230f <_svfprintf_r+0x14f>
c0034066:	c7 85 44 ff ff ff ff 	movl   $0xffffffff,-0xbc(%ebp)
c003406d:	ff ff ff 
c0034070:	89 c8                	mov    %ecx,%eax
c0034072:	e9 76 e2 ff ff       	jmp    c00322ed <_svfprintf_r+0x12d>
c0034077:	90                   	nop
c0034078:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
c003407e:	83 e0 01             	and    $0x1,%eax
c0034081:	0f 85 d0 fd ff ff    	jne    c0033e57 <_svfprintf_r+0x1c97>
c0034087:	85 d2                	test   %edx,%edx
c0034089:	0f 49 c2             	cmovns %edx,%eax
c003408c:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0034093:	00 00 00 
c0034096:	e9 3b f9 ff ff       	jmp    c00339d6 <_svfprintf_r+0x1816>
c003409b:	8b 45 08             	mov    0x8(%ebp),%eax
c003409e:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c00340a4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c00340a9:	e9 f5 e2 ff ff       	jmp    c00323a3 <_svfprintf_r+0x1e3>
c00340ae:	8d 85 67 ff ff ff    	lea    -0x99(%ebp),%eax
c00340b4:	e9 77 fd ff ff       	jmp    c0033e30 <_svfprintf_r+0x1c70>
c00340b9:	66 90                	xchg   %ax,%ax
c00340bb:	66 90                	xchg   %ax,%ax
c00340bd:	66 90                	xchg   %ax,%ax
c00340bf:	90                   	nop

c00340c0 <quorem>:
c00340c0:	55                   	push   %ebp
c00340c1:	89 c1                	mov    %eax,%ecx
c00340c3:	89 e5                	mov    %esp,%ebp
c00340c5:	57                   	push   %edi
c00340c6:	89 d7                	mov    %edx,%edi
c00340c8:	56                   	push   %esi
c00340c9:	53                   	push   %ebx
c00340ca:	83 ec 3c             	sub    $0x3c,%esp
c00340cd:	89 45 d0             	mov    %eax,-0x30(%ebp)
c00340d0:	8b 42 10             	mov    0x10(%edx),%eax
c00340d3:	3b 41 10             	cmp    0x10(%ecx),%eax
c00340d6:	89 55 c8             	mov    %edx,-0x38(%ebp)
c00340d9:	89 ca                	mov    %ecx,%edx
c00340db:	0f 8f 9f 01 00 00    	jg     c0034280 <quorem+0x1c0>
c00340e1:	83 e8 01             	sub    $0x1,%eax
c00340e4:	83 c7 14             	add    $0x14,%edi
c00340e7:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c00340ea:	c1 e0 02             	shl    $0x2,%eax
c00340ed:	83 c2 14             	add    $0x14,%edx
c00340f0:	8d 1c 07             	lea    (%edi,%eax,1),%ebx
c00340f3:	01 d0                	add    %edx,%eax
c00340f5:	89 55 d8             	mov    %edx,-0x28(%ebp)
c00340f8:	8b 13                	mov    (%ebx),%edx
c00340fa:	89 45 c4             	mov    %eax,-0x3c(%ebp)
c00340fd:	8b 00                	mov    (%eax),%eax
c00340ff:	89 5d e4             	mov    %ebx,-0x1c(%ebp)
c0034102:	8d 4a 01             	lea    0x1(%edx),%ecx
c0034105:	31 d2                	xor    %edx,%edx
c0034107:	f7 f1                	div    %ecx
c0034109:	85 c0                	test   %eax,%eax
c003410b:	89 45 e0             	mov    %eax,-0x20(%ebp)
c003410e:	89 45 cc             	mov    %eax,-0x34(%ebp)
c0034111:	0f 84 b5 00 00 00    	je     c00341cc <quorem+0x10c>
c0034117:	8b 45 d8             	mov    -0x28(%ebp),%eax
c003411a:	31 f6                	xor    %esi,%esi
c003411c:	89 fa                	mov    %edi,%edx
c003411e:	89 7d c0             	mov    %edi,-0x40(%ebp)
c0034121:	89 f7                	mov    %esi,%edi
c0034123:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
c003412a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0034130:	83 c2 04             	add    $0x4,%edx
c0034133:	8b 72 fc             	mov    -0x4(%edx),%esi
c0034136:	83 c0 04             	add    $0x4,%eax
c0034139:	0f b7 ce             	movzwl %si,%ecx
c003413c:	0f af 4d e0          	imul   -0x20(%ebp),%ecx
c0034140:	03 4d dc             	add    -0x24(%ebp),%ecx
c0034143:	c1 ee 10             	shr    $0x10,%esi
c0034146:	0f af 75 e0          	imul   -0x20(%ebp),%esi
c003414a:	89 cb                	mov    %ecx,%ebx
c003414c:	0f b7 c9             	movzwl %cx,%ecx
c003414f:	c1 eb 10             	shr    $0x10,%ebx
c0034152:	29 cf                	sub    %ecx,%edi
c0034154:	01 f3                	add    %esi,%ebx
c0034156:	89 de                	mov    %ebx,%esi
c0034158:	0f b7 db             	movzwl %bx,%ebx
c003415b:	c1 ee 10             	shr    $0x10,%esi
c003415e:	89 75 dc             	mov    %esi,-0x24(%ebp)
c0034161:	8b 70 fc             	mov    -0x4(%eax),%esi
c0034164:	0f b7 ce             	movzwl %si,%ecx
c0034167:	01 f9                	add    %edi,%ecx
c0034169:	c1 ee 10             	shr    $0x10,%esi
c003416c:	29 de                	sub    %ebx,%esi
c003416e:	89 cb                	mov    %ecx,%ebx
c0034170:	c1 fb 10             	sar    $0x10,%ebx
c0034173:	0f b7 c9             	movzwl %cx,%ecx
c0034176:	01 de                	add    %ebx,%esi
c0034178:	89 f7                	mov    %esi,%edi
c003417a:	c1 e6 10             	shl    $0x10,%esi
c003417d:	09 ce                	or     %ecx,%esi
c003417f:	c1 ff 10             	sar    $0x10,%edi
c0034182:	39 55 e4             	cmp    %edx,-0x1c(%ebp)
c0034185:	89 70 fc             	mov    %esi,-0x4(%eax)
c0034188:	73 a6                	jae    c0034130 <quorem+0x70>
c003418a:	8b 45 c4             	mov    -0x3c(%ebp),%eax
c003418d:	8b 7d c0             	mov    -0x40(%ebp),%edi
c0034190:	8b 10                	mov    (%eax),%edx
c0034192:	85 d2                	test   %edx,%edx
c0034194:	75 36                	jne    c00341cc <quorem+0x10c>
c0034196:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c0034199:	89 c2                	mov    %eax,%edx
c003419b:	83 e8 04             	sub    $0x4,%eax
c003419e:	39 c1                	cmp    %eax,%ecx
c00341a0:	73 21                	jae    c00341c3 <quorem+0x103>
c00341a2:	8b 72 fc             	mov    -0x4(%edx),%esi
c00341a5:	85 f6                	test   %esi,%esi
c00341a7:	75 1a                	jne    c00341c3 <quorem+0x103>
c00341a9:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c00341ac:	eb 08                	jmp    c00341b6 <quorem+0xf6>
c00341ae:	66 90                	xchg   %ax,%ax
c00341b0:	8b 18                	mov    (%eax),%ebx
c00341b2:	85 db                	test   %ebx,%ebx
c00341b4:	75 0a                	jne    c00341c0 <quorem+0x100>
c00341b6:	83 e8 04             	sub    $0x4,%eax
c00341b9:	83 ea 01             	sub    $0x1,%edx
c00341bc:	39 c1                	cmp    %eax,%ecx
c00341be:	72 f0                	jb     c00341b0 <quorem+0xf0>
c00341c0:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c00341c3:	8b 45 d0             	mov    -0x30(%ebp),%eax
c00341c6:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c00341c9:	89 50 10             	mov    %edx,0x10(%eax)
c00341cc:	8b 45 c8             	mov    -0x38(%ebp),%eax
c00341cf:	89 44 24 04          	mov    %eax,0x4(%esp)
c00341d3:	8b 45 d0             	mov    -0x30(%ebp),%eax
c00341d6:	89 04 24             	mov    %eax,(%esp)
c00341d9:	e8 a2 23 00 00       	call   c0036580 <__mcmp>
c00341de:	85 c0                	test   %eax,%eax
c00341e0:	0f 88 8e 00 00 00    	js     c0034274 <quorem+0x1b4>
c00341e6:	8b 45 e0             	mov    -0x20(%ebp),%eax
c00341e9:	31 f6                	xor    %esi,%esi
c00341eb:	83 c0 01             	add    $0x1,%eax
c00341ee:	89 45 cc             	mov    %eax,-0x34(%ebp)
c00341f1:	8b 45 d8             	mov    -0x28(%ebp),%eax
c00341f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00341f8:	83 c7 04             	add    $0x4,%edi
c00341fb:	8b 4f fc             	mov    -0x4(%edi),%ecx
c00341fe:	83 c0 04             	add    $0x4,%eax
c0034201:	8b 58 fc             	mov    -0x4(%eax),%ebx
c0034204:	0f b7 d1             	movzwl %cx,%edx
c0034207:	29 d6                	sub    %edx,%esi
c0034209:	0f b7 d3             	movzwl %bx,%edx
c003420c:	01 f2                	add    %esi,%edx
c003420e:	c1 e9 10             	shr    $0x10,%ecx
c0034211:	c1 eb 10             	shr    $0x10,%ebx
c0034214:	29 cb                	sub    %ecx,%ebx
c0034216:	89 d1                	mov    %edx,%ecx
c0034218:	c1 f9 10             	sar    $0x10,%ecx
c003421b:	0f b7 d2             	movzwl %dx,%edx
c003421e:	01 cb                	add    %ecx,%ebx
c0034220:	89 de                	mov    %ebx,%esi
c0034222:	c1 e3 10             	shl    $0x10,%ebx
c0034225:	09 d3                	or     %edx,%ebx
c0034227:	c1 fe 10             	sar    $0x10,%esi
c003422a:	39 7d e4             	cmp    %edi,-0x1c(%ebp)
c003422d:	89 58 fc             	mov    %ebx,-0x4(%eax)
c0034230:	73 c6                	jae    c00341f8 <quorem+0x138>
c0034232:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0034235:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c0034238:	8d 14 b8             	lea    (%eax,%edi,4),%edx
c003423b:	8b 02                	mov    (%edx),%eax
c003423d:	85 c0                	test   %eax,%eax
c003423f:	75 33                	jne    c0034274 <quorem+0x1b4>
c0034241:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c0034244:	8d 42 fc             	lea    -0x4(%edx),%eax
c0034247:	39 c1                	cmp    %eax,%ecx
c0034249:	73 20                	jae    c003426b <quorem+0x1ab>
c003424b:	8b 72 fc             	mov    -0x4(%edx),%esi
c003424e:	85 f6                	test   %esi,%esi
c0034250:	75 19                	jne    c003426b <quorem+0x1ab>
c0034252:	89 fa                	mov    %edi,%edx
c0034254:	eb 08                	jmp    c003425e <quorem+0x19e>
c0034256:	66 90                	xchg   %ax,%ax
c0034258:	8b 18                	mov    (%eax),%ebx
c003425a:	85 db                	test   %ebx,%ebx
c003425c:	75 0a                	jne    c0034268 <quorem+0x1a8>
c003425e:	83 e8 04             	sub    $0x4,%eax
c0034261:	83 ea 01             	sub    $0x1,%edx
c0034264:	39 c1                	cmp    %eax,%ecx
c0034266:	72 f0                	jb     c0034258 <quorem+0x198>
c0034268:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c003426b:	8b 45 d0             	mov    -0x30(%ebp),%eax
c003426e:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c0034271:	89 78 10             	mov    %edi,0x10(%eax)
c0034274:	8b 45 cc             	mov    -0x34(%ebp),%eax
c0034277:	83 c4 3c             	add    $0x3c,%esp
c003427a:	5b                   	pop    %ebx
c003427b:	5e                   	pop    %esi
c003427c:	5f                   	pop    %edi
c003427d:	5d                   	pop    %ebp
c003427e:	c3                   	ret    
c003427f:	90                   	nop
c0034280:	83 c4 3c             	add    $0x3c,%esp
c0034283:	31 c0                	xor    %eax,%eax
c0034285:	5b                   	pop    %ebx
c0034286:	5e                   	pop    %esi
c0034287:	5f                   	pop    %edi
c0034288:	5d                   	pop    %ebp
c0034289:	c3                   	ret    
c003428a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0034290 <_dtoa_r>:
c0034290:	55                   	push   %ebp
c0034291:	89 e5                	mov    %esp,%ebp
c0034293:	57                   	push   %edi
c0034294:	56                   	push   %esi
c0034295:	53                   	push   %ebx
c0034296:	81 ec 8c 00 00 00    	sub    $0x8c,%esp
c003429c:	8b 75 08             	mov    0x8(%ebp),%esi
c003429f:	dd 45 0c             	fldl   0xc(%ebp)
c00342a2:	8b 5d 20             	mov    0x20(%ebp),%ebx
c00342a5:	dd 5d c0             	fstpl  -0x40(%ebp)
c00342a8:	8b 46 40             	mov    0x40(%esi),%eax
c00342ab:	85 c0                	test   %eax,%eax
c00342ad:	74 23                	je     c00342d2 <_dtoa_r+0x42>
c00342af:	8b 4e 44             	mov    0x44(%esi),%ecx
c00342b2:	ba 01 00 00 00       	mov    $0x1,%edx
c00342b7:	d3 e2                	shl    %cl,%edx
c00342b9:	89 48 04             	mov    %ecx,0x4(%eax)
c00342bc:	89 50 08             	mov    %edx,0x8(%eax)
c00342bf:	89 44 24 04          	mov    %eax,0x4(%esp)
c00342c3:	89 34 24             	mov    %esi,(%esp)
c00342c6:	e8 95 1b 00 00       	call   c0035e60 <_Bfree>
c00342cb:	c7 46 40 00 00 00 00 	movl   $0x0,0x40(%esi)
c00342d2:	8b 7d c4             	mov    -0x3c(%ebp),%edi
c00342d5:	85 ff                	test   %edi,%edi
c00342d7:	0f 88 3b 02 00 00    	js     c0034518 <_dtoa_r+0x288>
c00342dd:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
c00342e3:	89 f8                	mov    %edi,%eax
c00342e5:	25 00 00 f0 7f       	and    $0x7ff00000,%eax
c00342ea:	3d 00 00 f0 7f       	cmp    $0x7ff00000,%eax
c00342ef:	0f 84 e3 01 00 00    	je     c00344d8 <_dtoa_r+0x248>
c00342f5:	dd 45 c0             	fldl   -0x40(%ebp)
c00342f8:	d9 ee                	fldz   
c00342fa:	d9 c9                	fxch   %st(1)
c00342fc:	db e9                	fucomi %st(1),%st
c00342fe:	dd d9                	fstp   %st(1)
c0034300:	7a 36                	jp     c0034338 <_dtoa_r+0xa8>
c0034302:	75 34                	jne    c0034338 <_dtoa_r+0xa8>
c0034304:	dd d8                	fstp   %st(0)
c0034306:	8b 4d 24             	mov    0x24(%ebp),%ecx
c0034309:	8b 45 1c             	mov    0x1c(%ebp),%eax
c003430c:	85 c9                	test   %ecx,%ecx
c003430e:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
c0034314:	0f 84 4e 02 00 00    	je     c0034568 <_dtoa_r+0x2d8>
c003431a:	8b 45 24             	mov    0x24(%ebp),%eax
c003431d:	c7 00 b0 8e 03 c0    	movl   $0xc0038eb0,(%eax)
c0034323:	b8 af 8e 03 c0       	mov    $0xc0038eaf,%eax
c0034328:	81 c4 8c 00 00 00    	add    $0x8c,%esp
c003432e:	5b                   	pop    %ebx
c003432f:	5e                   	pop    %esi
c0034330:	5f                   	pop    %edi
c0034331:	5d                   	pop    %ebp
c0034332:	c3                   	ret    
c0034333:	90                   	nop
c0034334:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034338:	8d 45 e0             	lea    -0x20(%ebp),%eax
c003433b:	89 fb                	mov    %edi,%ebx
c003433d:	89 44 24 10          	mov    %eax,0x10(%esp)
c0034341:	8d 45 e4             	lea    -0x1c(%ebp),%eax
c0034344:	dd 54 24 04          	fstl   0x4(%esp)
c0034348:	89 44 24 0c          	mov    %eax,0xc(%esp)
c003434c:	dd 5d b8             	fstpl  -0x48(%ebp)
c003434f:	89 34 24             	mov    %esi,(%esp)
c0034352:	c1 eb 14             	shr    $0x14,%ebx
c0034355:	e8 76 25 00 00       	call   c00368d0 <__d2b>
c003435a:	85 db                	test   %ebx,%ebx
c003435c:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c003435f:	0f 85 db 01 00 00    	jne    c0034540 <_dtoa_r+0x2b0>
c0034365:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0034368:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
c003436b:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c003436e:	01 c3                	add    %eax,%ebx
c0034370:	81 fb ef fb ff ff    	cmp    $0xfffffbef,%ebx
c0034376:	0f 8c ec 07 00 00    	jl     c0034b68 <_dtoa_r+0x8d8>
c003437c:	8b 55 c0             	mov    -0x40(%ebp),%edx
c003437f:	b9 0e fc ff ff       	mov    $0xfffffc0e,%ecx
c0034384:	89 f8                	mov    %edi,%eax
c0034386:	29 d9                	sub    %ebx,%ecx
c0034388:	d3 e0                	shl    %cl,%eax
c003438a:	8d 8b 12 04 00 00    	lea    0x412(%ebx),%ecx
c0034390:	d3 ea                	shr    %cl,%edx
c0034392:	09 d0                	or     %edx,%eax
c0034394:	31 d2                	xor    %edx,%edx
c0034396:	83 eb 01             	sub    $0x1,%ebx
c0034399:	89 55 cc             	mov    %edx,-0x34(%ebp)
c003439c:	8b 55 b4             	mov    -0x4c(%ebp),%edx
c003439f:	89 45 c8             	mov    %eax,-0x38(%ebp)
c00343a2:	df 6d c8             	fildll -0x38(%ebp)
c00343a5:	dd 5d b8             	fstpl  -0x48(%ebp)
c00343a8:	81 6d bc 00 00 f0 01 	subl   $0x1f00000,-0x44(%ebp)
c00343af:	c7 45 8c 01 00 00 00 	movl   $0x1,-0x74(%ebp)
c00343b6:	dd 45 b8             	fldl   -0x48(%ebp)
c00343b9:	d8 25 48 90 03 c0    	fsubs  0xc0039048
c00343bf:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
c00343c2:	d9 7d d2             	fnstcw -0x2e(%ebp)
c00343c5:	dc 0d 60 90 03 c0    	fmull  0xc0039060
c00343cb:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c00343cf:	b4 0c                	mov    $0xc,%ah
c00343d1:	dc 05 68 90 03 c0    	faddl  0xc0039068
c00343d7:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c00343db:	db 45 d4             	fildl  -0x2c(%ebp)
c00343de:	dc 0d 70 90 03 c0    	fmull  0xc0039070
c00343e4:	de c1                	faddp  %st,%st(1)
c00343e6:	d9 6d d0             	fldcw  -0x30(%ebp)
c00343e9:	db 55 b8             	fistl  -0x48(%ebp)
c00343ec:	d9 6d d2             	fldcw  -0x2e(%ebp)
c00343ef:	d9 ee                	fldz   
c00343f1:	df e9                	fucomip %st(1),%st
c00343f3:	0f 87 27 07 00 00    	ja     c0034b20 <_dtoa_r+0x890>
c00343f9:	dd d8                	fstp   %st(0)
c00343fb:	83 7d b8 16          	cmpl   $0x16,-0x48(%ebp)
c00343ff:	c7 45 9c 01 00 00 00 	movl   $0x1,-0x64(%ebp)
c0034406:	77 24                	ja     c003442c <_dtoa_r+0x19c>
c0034408:	8b 45 b8             	mov    -0x48(%ebp),%eax
c003440b:	dd 04 c5 20 91 03 c0 	fldl   -0x3ffc6ee0(,%eax,8)
c0034412:	dd 45 c0             	fldl   -0x40(%ebp)
c0034415:	d9 c9                	fxch   %st(1)
c0034417:	df e9                	fucomip %st(1),%st
c0034419:	dd d8                	fstp   %st(0)
c003441b:	0f 86 5f 07 00 00    	jbe    c0034b80 <_dtoa_r+0x8f0>
c0034421:	83 6d b8 01          	subl   $0x1,-0x48(%ebp)
c0034425:	c7 45 9c 00 00 00 00 	movl   $0x0,-0x64(%ebp)
c003442c:	89 d0                	mov    %edx,%eax
c003442e:	29 d8                	sub    %ebx,%eax
c0034430:	83 e8 01             	sub    $0x1,%eax
c0034433:	c7 45 a0 00 00 00 00 	movl   $0x0,-0x60(%ebp)
c003443a:	89 45 ac             	mov    %eax,-0x54(%ebp)
c003443d:	0f 88 0d 07 00 00    	js     c0034b50 <_dtoa_r+0x8c0>
c0034443:	8b 45 b8             	mov    -0x48(%ebp),%eax
c0034446:	85 c0                	test   %eax,%eax
c0034448:	0f 88 ea 06 00 00    	js     c0034b38 <_dtoa_r+0x8a8>
c003444e:	01 45 ac             	add    %eax,-0x54(%ebp)
c0034451:	89 45 94             	mov    %eax,-0x6c(%ebp)
c0034454:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c003445b:	83 7d 14 09          	cmpl   $0x9,0x14(%ebp)
c003445f:	0f 87 0b 03 00 00    	ja     c0034770 <_dtoa_r+0x4e0>
c0034465:	83 7d 14 05          	cmpl   $0x5,0x14(%ebp)
c0034469:	0f 8e 23 10 00 00    	jle    c0035492 <_dtoa_r+0x1202>
c003446f:	83 6d 14 04          	subl   $0x4,0x14(%ebp)
c0034473:	31 c0                	xor    %eax,%eax
c0034475:	83 7d 14 03          	cmpl   $0x3,0x14(%ebp)
c0034479:	0f 84 43 0d 00 00    	je     c00351c2 <_dtoa_r+0xf32>
c003447f:	0f 8e f3 00 00 00    	jle    c0034578 <_dtoa_r+0x2e8>
c0034485:	83 7d 14 04          	cmpl   $0x4,0x14(%ebp)
c0034489:	c7 45 98 01 00 00 00 	movl   $0x1,-0x68(%ebp)
c0034490:	0f 84 f3 00 00 00    	je     c0034589 <_dtoa_r+0x2f9>
c0034496:	83 7d 14 05          	cmpl   $0x5,0x14(%ebp)
c003449a:	0f 85 d7 02 00 00    	jne    c0034777 <_dtoa_r+0x4e7>
c00344a0:	8b 5d b8             	mov    -0x48(%ebp),%ebx
c00344a3:	03 5d 18             	add    0x18(%ebp),%ebx
c00344a6:	89 5d 90             	mov    %ebx,-0x70(%ebp)
c00344a9:	83 c3 01             	add    $0x1,%ebx
c00344ac:	83 fb 0e             	cmp    $0xe,%ebx
c00344af:	0f 96 c2             	setbe  %dl
c00344b2:	85 db                	test   %ebx,%ebx
c00344b4:	89 5d a8             	mov    %ebx,-0x58(%ebp)
c00344b7:	0f 8e a7 08 00 00    	jle    c0034d64 <_dtoa_r+0xad4>
c00344bd:	8b 5d a8             	mov    -0x58(%ebp),%ebx
c00344c0:	83 fb 0e             	cmp    $0xe,%ebx
c00344c3:	89 df                	mov    %ebx,%edi
c00344c5:	0f 96 45 b4          	setbe  -0x4c(%ebp)
c00344c9:	20 45 b4             	and    %al,-0x4c(%ebp)
c00344cc:	e9 d6 00 00 00       	jmp    c00345a7 <_dtoa_r+0x317>
c00344d1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00344d8:	8b 55 c0             	mov    -0x40(%ebp),%edx
c00344db:	8b 45 1c             	mov    0x1c(%ebp),%eax
c00344de:	85 d2                	test   %edx,%edx
c00344e0:	c7 00 0f 27 00 00    	movl   $0x270f,(%eax)
c00344e6:	b8 41 90 03 c0       	mov    $0xc0039041,%eax
c00344eb:	74 43                	je     c0034530 <_dtoa_r+0x2a0>
c00344ed:	8b 5d 24             	mov    0x24(%ebp),%ebx
c00344f0:	85 db                	test   %ebx,%ebx
c00344f2:	0f 84 30 fe ff ff    	je     c0034328 <_dtoa_r+0x98>
c00344f8:	8b 75 24             	mov    0x24(%ebp),%esi
c00344fb:	8d 50 08             	lea    0x8(%eax),%edx
c00344fe:	80 78 03 00          	cmpb   $0x0,0x3(%eax)
c0034502:	8d 48 03             	lea    0x3(%eax),%ecx
c0034505:	0f 44 d1             	cmove  %ecx,%edx
c0034508:	89 16                	mov    %edx,(%esi)
c003450a:	81 c4 8c 00 00 00    	add    $0x8c,%esp
c0034510:	5b                   	pop    %ebx
c0034511:	5e                   	pop    %esi
c0034512:	5f                   	pop    %edi
c0034513:	5d                   	pop    %ebp
c0034514:	c3                   	ret    
c0034515:	8d 76 00             	lea    0x0(%esi),%esi
c0034518:	81 e7 ff ff ff 7f    	and    $0x7fffffff,%edi
c003451e:	c7 03 01 00 00 00    	movl   $0x1,(%ebx)
c0034524:	89 7d c4             	mov    %edi,-0x3c(%ebp)
c0034527:	e9 b7 fd ff ff       	jmp    c00342e3 <_dtoa_r+0x53>
c003452c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034530:	81 e7 ff ff 0f 00    	and    $0xfffff,%edi
c0034536:	ba 38 90 03 c0       	mov    $0xc0039038,%edx
c003453b:	0f 44 c2             	cmove  %edx,%eax
c003453e:	eb ad                	jmp    c00344ed <_dtoa_r+0x25d>
c0034540:	8b 45 bc             	mov    -0x44(%ebp),%eax
c0034543:	81 eb ff 03 00 00    	sub    $0x3ff,%ebx
c0034549:	8b 55 e0             	mov    -0x20(%ebp),%edx
c003454c:	c7 45 8c 00 00 00 00 	movl   $0x0,-0x74(%ebp)
c0034553:	25 ff ff 0f 00       	and    $0xfffff,%eax
c0034558:	0d 00 00 f0 3f       	or     $0x3ff00000,%eax
c003455d:	89 45 bc             	mov    %eax,-0x44(%ebp)
c0034560:	e9 51 fe ff ff       	jmp    c00343b6 <_dtoa_r+0x126>
c0034565:	8d 76 00             	lea    0x0(%esi),%esi
c0034568:	b8 af 8e 03 c0       	mov    $0xc0038eaf,%eax
c003456d:	e9 b6 fd ff ff       	jmp    c0034328 <_dtoa_r+0x98>
c0034572:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0034578:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c003457c:	c7 45 98 00 00 00 00 	movl   $0x0,-0x68(%ebp)
c0034583:	0f 85 ee 01 00 00    	jne    c0034777 <_dtoa_r+0x4e7>
c0034589:	8b 55 18             	mov    0x18(%ebp),%edx
c003458c:	85 d2                	test   %edx,%edx
c003458e:	0f 8e b6 07 00 00    	jle    c0034d4a <_dtoa_r+0xaba>
c0034594:	8b 7d 18             	mov    0x18(%ebp),%edi
c0034597:	83 ff 0e             	cmp    $0xe,%edi
c003459a:	0f 96 45 b4          	setbe  -0x4c(%ebp)
c003459e:	20 45 b4             	and    %al,-0x4c(%ebp)
c00345a1:	89 7d 90             	mov    %edi,-0x70(%ebp)
c00345a4:	89 7d a8             	mov    %edi,-0x58(%ebp)
c00345a7:	83 ff 17             	cmp    $0x17,%edi
c00345aa:	c7 46 44 00 00 00 00 	movl   $0x0,0x44(%esi)
c00345b1:	0f 86 e5 0e 00 00    	jbe    c003549c <_dtoa_r+0x120c>
c00345b7:	b9 01 00 00 00       	mov    $0x1,%ecx
c00345bc:	b8 04 00 00 00       	mov    $0x4,%eax
c00345c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00345c8:	01 c0                	add    %eax,%eax
c00345ca:	89 ca                	mov    %ecx,%edx
c00345cc:	8d 58 14             	lea    0x14(%eax),%ebx
c00345cf:	39 fb                	cmp    %edi,%ebx
c00345d1:	8d 49 01             	lea    0x1(%ecx),%ecx
c00345d4:	76 f2                	jbe    c00345c8 <_dtoa_r+0x338>
c00345d6:	89 56 44             	mov    %edx,0x44(%esi)
c00345d9:	89 54 24 04          	mov    %edx,0x4(%esp)
c00345dd:	89 34 24             	mov    %esi,(%esp)
c00345e0:	e8 db 17 00 00       	call   c0035dc0 <_Balloc>
c00345e5:	80 7d b4 00          	cmpb   $0x0,-0x4c(%ebp)
c00345e9:	89 c7                	mov    %eax,%edi
c00345eb:	89 46 40             	mov    %eax,0x40(%esi)
c00345ee:	0f 84 bb 01 00 00    	je     c00347af <_dtoa_r+0x51f>
c00345f4:	8b 5d b8             	mov    -0x48(%ebp),%ebx
c00345f7:	dd 45 c0             	fldl   -0x40(%ebp)
c00345fa:	85 db                	test   %ebx,%ebx
c00345fc:	0f 8e de 07 00 00    	jle    c0034de0 <_dtoa_r+0xb50>
c0034602:	89 d8                	mov    %ebx,%eax
c0034604:	83 e0 0f             	and    $0xf,%eax
c0034607:	dd 04 c5 20 91 03 c0 	fldl   -0x3ffc6ee0(,%eax,8)
c003460e:	89 d8                	mov    %ebx,%eax
c0034610:	c1 f8 04             	sar    $0x4,%eax
c0034613:	a8 10                	test   $0x10,%al
c0034615:	0f 84 cd 05 00 00    	je     c0034be8 <_dtoa_r+0x958>
c003461b:	dd 05 00 91 03 c0    	fldl   0xc0039100
c0034621:	83 e0 0f             	and    $0xf,%eax
c0034624:	b9 03 00 00 00       	mov    $0x3,%ecx
c0034629:	d8 fa                	fdivr  %st(2),%st
c003462b:	85 c0                	test   %eax,%eax
c003462d:	74 22                	je     c0034651 <_dtoa_r+0x3c1>
c003462f:	31 d2                	xor    %edx,%edx
c0034631:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034638:	a8 01                	test   $0x1,%al
c003463a:	74 0e                	je     c003464a <_dtoa_r+0x3ba>
c003463c:	d9 c9                	fxch   %st(1)
c003463e:	dc 0c d5 e0 90 03 c0 	fmull  -0x3ffc6f20(,%edx,8)
c0034645:	d9 c9                	fxch   %st(1)
c0034647:	83 c1 01             	add    $0x1,%ecx
c003464a:	83 c2 01             	add    $0x1,%edx
c003464d:	d1 f8                	sar    %eax
c003464f:	75 e7                	jne    c0034638 <_dtoa_r+0x3a8>
c0034651:	de f1                	fdivp  %st,%st(1)
c0034653:	8b 45 9c             	mov    -0x64(%ebp),%eax
c0034656:	85 c0                	test   %eax,%eax
c0034658:	74 0a                	je     c0034664 <_dtoa_r+0x3d4>
c003465a:	d9 e8                	fld1   
c003465c:	df e9                	fucomip %st(1),%st
c003465e:	0f 87 92 0b 00 00    	ja     c00351f6 <_dtoa_r+0xf66>
c0034664:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c0034667:	8b 45 a8             	mov    -0x58(%ebp),%eax
c003466a:	db 45 d4             	fildl  -0x2c(%ebp)
c003466d:	d8 c9                	fmul   %st(1),%st
c003466f:	d8 05 54 90 03 c0    	fadds  0xc0039054
c0034675:	dd 5d c0             	fstpl  -0x40(%ebp)
c0034678:	81 6d c4 00 00 40 03 	subl   $0x3400000,-0x3c(%ebp)
c003467f:	85 c0                	test   %eax,%eax
c0034681:	0f 84 89 05 00 00    	je     c0034c10 <_dtoa_r+0x980>
c0034687:	8b 45 b8             	mov    -0x48(%ebp),%eax
c003468a:	8b 4d a8             	mov    -0x58(%ebp),%ecx
c003468d:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034690:	8b 45 98             	mov    -0x68(%ebp),%eax
c0034693:	85 c0                	test   %eax,%eax
c0034695:	0f 84 b5 07 00 00    	je     c0034e50 <_dtoa_r+0xbc0>
c003469b:	d9 05 5c 90 03 c0    	flds   0xc003905c
c00346a1:	8d 57 01             	lea    0x1(%edi),%edx
c00346a4:	dc 34 cd 18 91 03 c0 	fdivl  -0x3ffc6ee8(,%ecx,8)
c00346ab:	d9 7d d2             	fnstcw -0x2e(%ebp)
c00346ae:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c00346b2:	b4 0c                	mov    $0xc,%ah
c00346b4:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c00346b8:	dc 65 c0             	fsubl  -0x40(%ebp)
c00346bb:	d9 c9                	fxch   %st(1)
c00346bd:	d9 6d d0             	fldcw  -0x30(%ebp)
c00346c0:	db 55 d4             	fistl  -0x2c(%ebp)
c00346c3:	d9 6d d2             	fldcw  -0x2e(%ebp)
c00346c6:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c00346c9:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c00346cc:	83 c0 30             	add    $0x30,%eax
c00346cf:	db 45 d4             	fildl  -0x2c(%ebp)
c00346d2:	de e9                	fsubrp %st,%st(1)
c00346d4:	d9 c9                	fxch   %st(1)
c00346d6:	88 07                	mov    %al,(%edi)
c00346d8:	db e9                	fucomi %st(1),%st
c00346da:	77 7f                	ja     c003475b <_dtoa_r+0x4cb>
c00346dc:	d9 c1                	fld    %st(1)
c00346de:	d8 2d 4c 90 03 c0    	fsubrs 0xc003904c
c00346e4:	d9 c9                	fxch   %st(1)
c00346e6:	db e9                	fucomi %st(1),%st
c00346e8:	dd d9                	fstp   %st(1)
c00346ea:	0f 87 33 0c 00 00    	ja     c0035323 <_dtoa_r+0x1093>
c00346f0:	83 f9 01             	cmp    $0x1,%ecx
c00346f3:	0f 8e c4 06 00 00    	jle    c0034dbd <_dtoa_r+0xb2d>
c00346f9:	01 f9                	add    %edi,%ecx
c00346fb:	d9 05 50 90 03 c0    	flds   0xc0039050
c0034701:	eb 25                	jmp    c0034728 <_dtoa_r+0x498>
c0034703:	90                   	nop
c0034704:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034708:	d9 c1                	fld    %st(1)
c003470a:	d8 2d 4c 90 03 c0    	fsubrs 0xc003904c
c0034710:	d9 c9                	fxch   %st(1)
c0034712:	db e9                	fucomi %st(1),%st
c0034714:	dd d9                	fstp   %st(1)
c0034716:	0f 87 14 0c 00 00    	ja     c0035330 <_dtoa_r+0x10a0>
c003471c:	39 ca                	cmp    %ecx,%edx
c003471e:	0f 84 a4 06 00 00    	je     c0034dc8 <_dtoa_r+0xb38>
c0034724:	d9 c9                	fxch   %st(1)
c0034726:	d9 ca                	fxch   %st(2)
c0034728:	dc c9                	fmul   %st,%st(1)
c003472a:	83 c2 01             	add    $0x1,%edx
c003472d:	dc ca                	fmul   %st,%st(2)
c003472f:	d9 ca                	fxch   %st(2)
c0034731:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034734:	db 55 d4             	fistl  -0x2c(%ebp)
c0034737:	d9 6d d2             	fldcw  -0x2e(%ebp)
c003473a:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c003473d:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0034740:	83 c0 30             	add    $0x30,%eax
c0034743:	db 45 d4             	fildl  -0x2c(%ebp)
c0034746:	de e9                	fsubrp %st,%st(1)
c0034748:	d9 c9                	fxch   %st(1)
c003474a:	88 42 ff             	mov    %al,-0x1(%edx)
c003474d:	db e9                	fucomi %st(1),%st
c003474f:	76 b7                	jbe    c0034708 <_dtoa_r+0x478>
c0034751:	dd d8                	fstp   %st(0)
c0034753:	dd d8                	fstp   %st(0)
c0034755:	dd d8                	fstp   %st(0)
c0034757:	dd d8                	fstp   %st(0)
c0034759:	eb 06                	jmp    c0034761 <_dtoa_r+0x4d1>
c003475b:	dd d8                	fstp   %st(0)
c003475d:	dd d8                	fstp   %st(0)
c003475f:	dd d8                	fstp   %st(0)
c0034761:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034764:	89 fb                	mov    %edi,%ebx
c0034766:	89 d7                	mov    %edx,%edi
c0034768:	89 45 b8             	mov    %eax,-0x48(%ebp)
c003476b:	e9 70 03 00 00       	jmp    c0034ae0 <_dtoa_r+0x850>
c0034770:	c7 45 14 00 00 00 00 	movl   $0x0,0x14(%ebp)
c0034777:	c7 46 44 00 00 00 00 	movl   $0x0,0x44(%esi)
c003477e:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0034785:	00 
c0034786:	89 34 24             	mov    %esi,(%esp)
c0034789:	e8 32 16 00 00       	call   c0035dc0 <_Balloc>
c003478e:	c7 45 98 01 00 00 00 	movl   $0x1,-0x68(%ebp)
c0034795:	c7 45 a8 ff ff ff ff 	movl   $0xffffffff,-0x58(%ebp)
c003479c:	c7 45 90 ff ff ff ff 	movl   $0xffffffff,-0x70(%ebp)
c00347a3:	c7 45 18 00 00 00 00 	movl   $0x0,0x18(%ebp)
c00347aa:	89 c7                	mov    %eax,%edi
c00347ac:	89 46 40             	mov    %eax,0x40(%esi)
c00347af:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c00347b2:	85 c0                	test   %eax,%eax
c00347b4:	0f 88 2e 01 00 00    	js     c00348e8 <_dtoa_r+0x658>
c00347ba:	83 7d b8 0e          	cmpl   $0xe,-0x48(%ebp)
c00347be:	0f 8f 24 01 00 00    	jg     c00348e8 <_dtoa_r+0x658>
c00347c4:	8b 45 b8             	mov    -0x48(%ebp),%eax
c00347c7:	dd 04 c5 20 91 03 c0 	fldl   -0x3ffc6ee0(,%eax,8)
c00347ce:	8b 45 a8             	mov    -0x58(%ebp),%eax
c00347d1:	85 c0                	test   %eax,%eax
c00347d3:	7f 0e                	jg     c00347e3 <_dtoa_r+0x553>
c00347d5:	8b 45 18             	mov    0x18(%ebp),%eax
c00347d8:	c1 e8 1f             	shr    $0x1f,%eax
c00347db:	84 c0                	test   %al,%al
c00347dd:	0f 85 9d 07 00 00    	jne    c0034f80 <_dtoa_r+0xcf0>
c00347e3:	dd 45 c0             	fldl   -0x40(%ebp)
c00347e6:	d9 c0                	fld    %st(0)
c00347e8:	d8 f2                	fdiv   %st(2),%st
c00347ea:	d9 7d d2             	fnstcw -0x2e(%ebp)
c00347ed:	83 7d a8 01          	cmpl   $0x1,-0x58(%ebp)
c00347f1:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c00347f5:	b4 0c                	mov    $0xc,%ah
c00347f7:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c00347fb:	8d 47 01             	lea    0x1(%edi),%eax
c00347fe:	89 45 c0             	mov    %eax,-0x40(%ebp)
c0034801:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034804:	db 5d d4             	fistpl -0x2c(%ebp)
c0034807:	d9 6d d2             	fldcw  -0x2e(%ebp)
c003480a:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c003480d:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c0034810:	8d 42 30             	lea    0x30(%edx),%eax
c0034813:	db 45 d4             	fildl  -0x2c(%ebp)
c0034816:	d8 ca                	fmul   %st(2),%st
c0034818:	88 07                	mov    %al,(%edi)
c003481a:	de e9                	fsubrp %st,%st(1)
c003481c:	74 66                	je     c0034884 <_dtoa_r+0x5f4>
c003481e:	d8 0d 50 90 03 c0    	fmuls  0xc0039050
c0034824:	d9 ee                	fldz   
c0034826:	d9 c9                	fxch   %st(1)
c0034828:	db e9                	fucomi %st(1),%st
c003482a:	dd d9                	fstp   %st(1)
c003482c:	0f 8b 33 0c 00 00    	jnp    c0035465 <_dtoa_r+0x11d5>
c0034832:	8b 5d a8             	mov    -0x58(%ebp),%ebx
c0034835:	8d 47 02             	lea    0x2(%edi),%eax
c0034838:	d9 05 50 90 03 c0    	flds   0xc0039050
c003483e:	01 fb                	add    %edi,%ebx
c0034840:	eb 19                	jmp    c003485b <_dtoa_r+0x5cb>
c0034842:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0034848:	dc c9                	fmul   %st,%st(1)
c003484a:	83 c0 01             	add    $0x1,%eax
c003484d:	d9 ee                	fldz   
c003484f:	d9 ca                	fxch   %st(2)
c0034851:	db ea                	fucomi %st(2),%st
c0034853:	dd da                	fstp   %st(2)
c0034855:	0f 8b 73 09 00 00    	jnp    c00351ce <_dtoa_r+0xf3e>
c003485b:	d9 c1                	fld    %st(1)
c003485d:	39 d8                	cmp    %ebx,%eax
c003485f:	d8 f3                	fdiv   %st(3),%st
c0034861:	89 45 c0             	mov    %eax,-0x40(%ebp)
c0034864:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034867:	db 5d d4             	fistpl -0x2c(%ebp)
c003486a:	d9 6d d2             	fldcw  -0x2e(%ebp)
c003486d:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c0034870:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c0034873:	8d 4a 30             	lea    0x30(%edx),%ecx
c0034876:	db 45 d4             	fildl  -0x2c(%ebp)
c0034879:	d8 cb                	fmul   %st(3),%st
c003487b:	88 48 ff             	mov    %cl,-0x1(%eax)
c003487e:	de ea                	fsubrp %st,%st(2)
c0034880:	75 c6                	jne    c0034848 <_dtoa_r+0x5b8>
c0034882:	dd d8                	fstp   %st(0)
c0034884:	d8 c0                	fadd   %st(0),%st
c0034886:	db e9                	fucomi %st(1),%st
c0034888:	77 1e                	ja     c00348a8 <_dtoa_r+0x618>
c003488a:	d9 c9                	fxch   %st(1)
c003488c:	df e9                	fucomip %st(1),%st
c003488e:	dd d8                	fstp   %st(0)
c0034890:	0f 8a 44 09 00 00    	jp     c00351da <_dtoa_r+0xf4a>
c0034896:	0f 85 3e 09 00 00    	jne    c00351da <_dtoa_r+0xf4a>
c003489c:	83 e2 01             	and    $0x1,%edx
c003489f:	90                   	nop
c00348a0:	0f 84 34 09 00 00    	je     c00351da <_dtoa_r+0xf4a>
c00348a6:	eb 04                	jmp    c00348ac <_dtoa_r+0x61c>
c00348a8:	dd d8                	fstp   %st(0)
c00348aa:	dd d8                	fstp   %st(0)
c00348ac:	8b 4d c0             	mov    -0x40(%ebp),%ecx
c00348af:	89 fb                	mov    %edi,%ebx
c00348b1:	0f b6 41 ff          	movzbl -0x1(%ecx),%eax
c00348b5:	89 cf                	mov    %ecx,%edi
c00348b7:	8b 4d b8             	mov    -0x48(%ebp),%ecx
c00348ba:	89 4d b4             	mov    %ecx,-0x4c(%ebp)
c00348bd:	eb 0f                	jmp    c00348ce <_dtoa_r+0x63e>
c00348bf:	90                   	nop
c00348c0:	39 d3                	cmp    %edx,%ebx
c00348c2:	0f 84 75 09 00 00    	je     c003523d <_dtoa_r+0xfad>
c00348c8:	0f b6 42 ff          	movzbl -0x1(%edx),%eax
c00348cc:	89 d7                	mov    %edx,%edi
c00348ce:	3c 39                	cmp    $0x39,%al
c00348d0:	8d 57 ff             	lea    -0x1(%edi),%edx
c00348d3:	74 eb                	je     c00348c0 <_dtoa_r+0x630>
c00348d5:	8b 4d b4             	mov    -0x4c(%ebp),%ecx
c00348d8:	83 c0 01             	add    $0x1,%eax
c00348db:	88 02                	mov    %al,(%edx)
c00348dd:	89 4d b8             	mov    %ecx,-0x48(%ebp)
c00348e0:	e9 fb 01 00 00       	jmp    c0034ae0 <_dtoa_r+0x850>
c00348e5:	8d 76 00             	lea    0x0(%esi),%esi
c00348e8:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c00348eb:	85 c9                	test   %ecx,%ecx
c00348ed:	0f 85 9d 02 00 00    	jne    c0034b90 <_dtoa_r+0x900>
c00348f3:	8b 55 b0             	mov    -0x50(%ebp),%edx
c00348f6:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c00348f9:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c0034900:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0034903:	85 c0                	test   %eax,%eax
c0034905:	7e 14                	jle    c003491b <_dtoa_r+0x68b>
c0034907:	85 db                	test   %ebx,%ebx
c0034909:	7e 10                	jle    c003491b <_dtoa_r+0x68b>
c003490b:	8b 45 ac             	mov    -0x54(%ebp),%eax
c003490e:	39 d8                	cmp    %ebx,%eax
c0034910:	0f 4f c3             	cmovg  %ebx,%eax
c0034913:	29 45 a0             	sub    %eax,-0x60(%ebp)
c0034916:	29 c3                	sub    %eax,%ebx
c0034918:	29 45 ac             	sub    %eax,-0x54(%ebp)
c003491b:	8b 45 b0             	mov    -0x50(%ebp),%eax
c003491e:	85 c0                	test   %eax,%eax
c0034920:	7e 61                	jle    c0034983 <_dtoa_r+0x6f3>
c0034922:	8b 45 98             	mov    -0x68(%ebp),%eax
c0034925:	85 c0                	test   %eax,%eax
c0034927:	0f 84 72 04 00 00    	je     c0034d9f <_dtoa_r+0xb0f>
c003492d:	85 d2                	test   %edx,%edx
c003492f:	7e 47                	jle    c0034978 <_dtoa_r+0x6e8>
c0034931:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034934:	89 54 24 08          	mov    %edx,0x8(%esp)
c0034938:	89 34 24             	mov    %esi,(%esp)
c003493b:	89 55 88             	mov    %edx,-0x78(%ebp)
c003493e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034942:	e8 f9 19 00 00       	call   c0036340 <__pow5mult>
c0034947:	8b 4d a4             	mov    -0x5c(%ebp),%ecx
c003494a:	89 34 24             	mov    %esi,(%esp)
c003494d:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c0034951:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034955:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034958:	e8 13 18 00 00       	call   c0036170 <__multiply>
c003495d:	8b 4d a4             	mov    -0x5c(%ebp),%ecx
c0034960:	89 34 24             	mov    %esi,(%esp)
c0034963:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c0034967:	89 45 8c             	mov    %eax,-0x74(%ebp)
c003496a:	e8 f1 14 00 00       	call   c0035e60 <_Bfree>
c003496f:	8b 45 8c             	mov    -0x74(%ebp),%eax
c0034972:	8b 55 88             	mov    -0x78(%ebp),%edx
c0034975:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0034978:	8b 45 b0             	mov    -0x50(%ebp),%eax
c003497b:	29 d0                	sub    %edx,%eax
c003497d:	0f 85 1f 04 00 00    	jne    c0034da2 <_dtoa_r+0xb12>
c0034983:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c003498a:	00 
c003498b:	89 34 24             	mov    %esi,(%esp)
c003498e:	e8 ad 17 00 00       	call   c0036140 <__i2b>
c0034993:	8b 4d 94             	mov    -0x6c(%ebp),%ecx
c0034996:	85 c9                	test   %ecx,%ecx
c0034998:	89 45 b0             	mov    %eax,-0x50(%ebp)
c003499b:	7e 13                	jle    c00349b0 <_dtoa_r+0x720>
c003499d:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c00349a1:	89 44 24 04          	mov    %eax,0x4(%esp)
c00349a5:	89 34 24             	mov    %esi,(%esp)
c00349a8:	e8 93 19 00 00       	call   c0036340 <__pow5mult>
c00349ad:	89 45 b0             	mov    %eax,-0x50(%ebp)
c00349b0:	83 7d 14 01          	cmpl   $0x1,0x14(%ebp)
c00349b4:	c7 45 8c 00 00 00 00 	movl   $0x0,-0x74(%ebp)
c00349bb:	0f 8e f7 05 00 00    	jle    c0034fb8 <_dtoa_r+0xd28>
c00349c1:	8b 45 94             	mov    -0x6c(%ebp),%eax
c00349c4:	ba 01 00 00 00       	mov    $0x1,%edx
c00349c9:	85 c0                	test   %eax,%eax
c00349cb:	0f 85 27 05 00 00    	jne    c0034ef8 <_dtoa_r+0xc68>
c00349d1:	8b 45 ac             	mov    -0x54(%ebp),%eax
c00349d4:	01 d0                	add    %edx,%eax
c00349d6:	83 e0 1f             	and    $0x1f,%eax
c00349d9:	89 c2                	mov    %eax,%edx
c00349db:	0f 84 57 03 00 00    	je     c0034d38 <_dtoa_r+0xaa8>
c00349e1:	b8 20 00 00 00       	mov    $0x20,%eax
c00349e6:	29 d0                	sub    %edx,%eax
c00349e8:	83 f8 04             	cmp    $0x4,%eax
c00349eb:	0f 8e 8c 0a 00 00    	jle    c003547d <_dtoa_r+0x11ed>
c00349f1:	b8 1c 00 00 00       	mov    $0x1c,%eax
c00349f6:	29 d0                	sub    %edx,%eax
c00349f8:	01 45 a0             	add    %eax,-0x60(%ebp)
c00349fb:	01 c3                	add    %eax,%ebx
c00349fd:	01 45 ac             	add    %eax,-0x54(%ebp)
c0034a00:	8b 45 a0             	mov    -0x60(%ebp),%eax
c0034a03:	85 c0                	test   %eax,%eax
c0034a05:	7e 16                	jle    c0034a1d <_dtoa_r+0x78d>
c0034a07:	89 44 24 08          	mov    %eax,0x8(%esp)
c0034a0b:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0034a0e:	89 34 24             	mov    %esi,(%esp)
c0034a11:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034a15:	e8 46 1a 00 00       	call   c0036460 <__lshift>
c0034a1a:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0034a1d:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0034a20:	85 c0                	test   %eax,%eax
c0034a22:	7e 16                	jle    c0034a3a <_dtoa_r+0x7aa>
c0034a24:	89 44 24 08          	mov    %eax,0x8(%esp)
c0034a28:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034a2b:	89 34 24             	mov    %esi,(%esp)
c0034a2e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034a32:	e8 29 1a 00 00       	call   c0036460 <__lshift>
c0034a37:	89 45 b0             	mov    %eax,-0x50(%ebp)
c0034a3a:	8b 45 9c             	mov    -0x64(%ebp),%eax
c0034a3d:	85 c0                	test   %eax,%eax
c0034a3f:	0f 85 d3 04 00 00    	jne    c0034f18 <_dtoa_r+0xc88>
c0034a45:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c0034a49:	0f 8e 11 02 00 00    	jle    c0034c60 <_dtoa_r+0x9d0>
c0034a4f:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034a52:	85 c0                	test   %eax,%eax
c0034a54:	0f 8f 06 02 00 00    	jg     c0034c60 <_dtoa_r+0x9d0>
c0034a5a:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034a5d:	85 c0                	test   %eax,%eax
c0034a5f:	0f 85 e0 01 00 00    	jne    c0034c45 <_dtoa_r+0x9b5>
c0034a65:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034a68:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034a6f:	00 
c0034a70:	c7 44 24 08 05 00 00 	movl   $0x5,0x8(%esp)
c0034a77:	00 
c0034a78:	89 34 24             	mov    %esi,(%esp)
c0034a7b:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034a7f:	e8 fc 13 00 00       	call   c0035e80 <__multadd>
c0034a84:	89 45 b0             	mov    %eax,-0x50(%ebp)
c0034a87:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034a8b:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0034a8e:	89 04 24             	mov    %eax,(%esp)
c0034a91:	e8 ea 1a 00 00       	call   c0036580 <__mcmp>
c0034a96:	85 c0                	test   %eax,%eax
c0034a98:	0f 8e a7 01 00 00    	jle    c0034c45 <_dtoa_r+0x9b5>
c0034a9e:	83 45 b8 01          	addl   $0x1,-0x48(%ebp)
c0034aa2:	89 fb                	mov    %edi,%ebx
c0034aa4:	83 c7 01             	add    $0x1,%edi
c0034aa7:	c6 47 ff 31          	movb   $0x31,-0x1(%edi)
c0034aab:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
c0034ab2:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034ab5:	89 34 24             	mov    %esi,(%esp)
c0034ab8:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034abc:	e8 9f 13 00 00       	call   c0035e60 <_Bfree>
c0034ac1:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034ac4:	85 c0                	test   %eax,%eax
c0034ac6:	74 18                	je     c0034ae0 <_dtoa_r+0x850>
c0034ac8:	39 45 c0             	cmp    %eax,-0x40(%ebp)
c0034acb:	0f 85 a7 02 00 00    	jne    c0034d78 <_dtoa_r+0xae8>
c0034ad1:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034ad4:	89 34 24             	mov    %esi,(%esp)
c0034ad7:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034adb:	e8 80 13 00 00       	call   c0035e60 <_Bfree>
c0034ae0:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0034ae3:	89 34 24             	mov    %esi,(%esp)
c0034ae6:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034aea:	e8 71 13 00 00       	call   c0035e60 <_Bfree>
c0034aef:	8b 45 b8             	mov    -0x48(%ebp),%eax
c0034af2:	8b 75 1c             	mov    0x1c(%ebp),%esi
c0034af5:	c6 07 00             	movb   $0x0,(%edi)
c0034af8:	83 c0 01             	add    $0x1,%eax
c0034afb:	89 06                	mov    %eax,(%esi)
c0034afd:	8b 45 24             	mov    0x24(%ebp),%eax
c0034b00:	85 c0                	test   %eax,%eax
c0034b02:	0f 84 90 02 00 00    	je     c0034d98 <_dtoa_r+0xb08>
c0034b08:	8b 45 24             	mov    0x24(%ebp),%eax
c0034b0b:	89 38                	mov    %edi,(%eax)
c0034b0d:	81 c4 8c 00 00 00    	add    $0x8c,%esp
c0034b13:	89 d8                	mov    %ebx,%eax
c0034b15:	5b                   	pop    %ebx
c0034b16:	5e                   	pop    %esi
c0034b17:	5f                   	pop    %edi
c0034b18:	5d                   	pop    %ebp
c0034b19:	c3                   	ret    
c0034b1a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0034b20:	db 45 b8             	fildl  -0x48(%ebp)
c0034b23:	df e9                	fucomip %st(1),%st
c0034b25:	dd d8                	fstp   %st(0)
c0034b27:	7a 06                	jp     c0034b2f <_dtoa_r+0x89f>
c0034b29:	0f 84 cc f8 ff ff    	je     c00343fb <_dtoa_r+0x16b>
c0034b2f:	83 6d b8 01          	subl   $0x1,-0x48(%ebp)
c0034b33:	e9 c3 f8 ff ff       	jmp    c00343fb <_dtoa_r+0x16b>
c0034b38:	8b 45 b8             	mov    -0x48(%ebp),%eax
c0034b3b:	29 45 a0             	sub    %eax,-0x60(%ebp)
c0034b3e:	c7 45 94 00 00 00 00 	movl   $0x0,-0x6c(%ebp)
c0034b45:	f7 d8                	neg    %eax
c0034b47:	89 45 b0             	mov    %eax,-0x50(%ebp)
c0034b4a:	e9 0c f9 ff ff       	jmp    c003445b <_dtoa_r+0x1cb>
c0034b4f:	90                   	nop
c0034b50:	f7 d8                	neg    %eax
c0034b52:	89 45 a0             	mov    %eax,-0x60(%ebp)
c0034b55:	c7 45 ac 00 00 00 00 	movl   $0x0,-0x54(%ebp)
c0034b5c:	e9 e2 f8 ff ff       	jmp    c0034443 <_dtoa_r+0x1b3>
c0034b61:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034b68:	8b 45 c0             	mov    -0x40(%ebp),%eax
c0034b6b:	b9 ee fb ff ff       	mov    $0xfffffbee,%ecx
c0034b70:	29 d9                	sub    %ebx,%ecx
c0034b72:	d3 e0                	shl    %cl,%eax
c0034b74:	e9 1b f8 ff ff       	jmp    c0034394 <_dtoa_r+0x104>
c0034b79:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034b80:	c7 45 9c 00 00 00 00 	movl   $0x0,-0x64(%ebp)
c0034b87:	e9 a0 f8 ff ff       	jmp    c003442c <_dtoa_r+0x19c>
c0034b8c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034b90:	83 7d 14 01          	cmpl   $0x1,0x14(%ebp)
c0034b94:	0f 8e fe 06 00 00    	jle    c0035298 <_dtoa_r+0x1008>
c0034b9a:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034b9d:	83 e8 01             	sub    $0x1,%eax
c0034ba0:	39 45 b0             	cmp    %eax,-0x50(%ebp)
c0034ba3:	0f 8c 3b 06 00 00    	jl     c00351e4 <_dtoa_r+0xf54>
c0034ba9:	8b 55 b0             	mov    -0x50(%ebp),%edx
c0034bac:	29 c2                	sub    %eax,%edx
c0034bae:	8b 4d a8             	mov    -0x58(%ebp),%ecx
c0034bb1:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c0034bb4:	85 c9                	test   %ecx,%ecx
c0034bb6:	89 c8                	mov    %ecx,%eax
c0034bb8:	0f 88 83 07 00 00    	js     c0035341 <_dtoa_r+0x10b1>
c0034bbe:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0034bc5:	00 
c0034bc6:	89 34 24             	mov    %esi,(%esp)
c0034bc9:	89 55 8c             	mov    %edx,-0x74(%ebp)
c0034bcc:	01 45 a0             	add    %eax,-0x60(%ebp)
c0034bcf:	01 45 ac             	add    %eax,-0x54(%ebp)
c0034bd2:	e8 69 15 00 00       	call   c0036140 <__i2b>
c0034bd7:	8b 55 8c             	mov    -0x74(%ebp),%edx
c0034bda:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034bdd:	e9 1e fd ff ff       	jmp    c0034900 <_dtoa_r+0x670>
c0034be2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0034be8:	d9 c1                	fld    %st(1)
c0034bea:	b9 02 00 00 00       	mov    $0x2,%ecx
c0034bef:	e9 37 fa ff ff       	jmp    c003462b <_dtoa_r+0x39b>
c0034bf4:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c0034bf7:	db 45 d4             	fildl  -0x2c(%ebp)
c0034bfa:	d8 c9                	fmul   %st(1),%st
c0034bfc:	d8 05 54 90 03 c0    	fadds  0xc0039054
c0034c02:	dd 5d c0             	fstpl  -0x40(%ebp)
c0034c05:	81 6d c4 00 00 40 03 	subl   $0x3400000,-0x3c(%ebp)
c0034c0c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034c10:	d8 25 58 90 03 c0    	fsubs  0xc0039058
c0034c16:	dd 45 c0             	fldl   -0x40(%ebp)
c0034c19:	d9 c9                	fxch   %st(1)
c0034c1b:	db e9                	fucomi %st(1),%st
c0034c1d:	0f 87 0d 02 00 00    	ja     c0034e30 <_dtoa_r+0xba0>
c0034c23:	d9 c9                	fxch   %st(1)
c0034c25:	d9 e0                	fchs   
c0034c27:	df e9                	fucomip %st(1),%st
c0034c29:	dd d8                	fstp   %st(0)
c0034c2b:	0f 86 a7 01 00 00    	jbe    c0034dd8 <_dtoa_r+0xb48>
c0034c31:	dd d8                	fstp   %st(0)
c0034c33:	eb 02                	jmp    c0034c37 <_dtoa_r+0x9a7>
c0034c35:	dd d8                	fstp   %st(0)
c0034c37:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c0034c3e:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c0034c45:	8b 45 18             	mov    0x18(%ebp),%eax
c0034c48:	89 fb                	mov    %edi,%ebx
c0034c4a:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
c0034c51:	f7 d0                	not    %eax
c0034c53:	89 45 b8             	mov    %eax,-0x48(%ebp)
c0034c56:	e9 57 fe ff ff       	jmp    c0034ab2 <_dtoa_r+0x822>
c0034c5b:	90                   	nop
c0034c5c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034c60:	8b 45 98             	mov    -0x68(%ebp),%eax
c0034c63:	85 c0                	test   %eax,%eax
c0034c65:	0f 85 c5 03 00 00    	jne    c0035030 <_dtoa_r+0xda0>
c0034c6b:	89 75 08             	mov    %esi,0x8(%ebp)
c0034c6e:	bb 01 00 00 00       	mov    $0x1,%ebx
c0034c73:	8b 75 a4             	mov    -0x5c(%ebp),%esi
c0034c76:	eb 24                	jmp    c0034c9c <_dtoa_r+0xa0c>
c0034c78:	8b 45 08             	mov    0x8(%ebp),%eax
c0034c7b:	83 c3 01             	add    $0x1,%ebx
c0034c7e:	89 74 24 04          	mov    %esi,0x4(%esp)
c0034c82:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034c89:	00 
c0034c8a:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0034c91:	00 
c0034c92:	89 04 24             	mov    %eax,(%esp)
c0034c95:	e8 e6 11 00 00       	call   c0035e80 <__multadd>
c0034c9a:	89 c6                	mov    %eax,%esi
c0034c9c:	8b 55 b0             	mov    -0x50(%ebp),%edx
c0034c9f:	89 f0                	mov    %esi,%eax
c0034ca1:	e8 1a f4 ff ff       	call   c00340c0 <quorem>
c0034ca6:	83 c0 30             	add    $0x30,%eax
c0034ca9:	3b 5d a8             	cmp    -0x58(%ebp),%ebx
c0034cac:	88 44 1f ff          	mov    %al,-0x1(%edi,%ebx,1)
c0034cb0:	7c c6                	jl     c0034c78 <_dtoa_r+0x9e8>
c0034cb2:	89 45 a0             	mov    %eax,-0x60(%ebp)
c0034cb5:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034cb8:	ba 01 00 00 00       	mov    $0x1,%edx
c0034cbd:	89 75 a4             	mov    %esi,-0x5c(%ebp)
c0034cc0:	8b 75 08             	mov    0x8(%ebp),%esi
c0034cc3:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
c0034cca:	85 c0                	test   %eax,%eax
c0034ccc:	0f 4f d0             	cmovg  %eax,%edx
c0034ccf:	01 fa                	add    %edi,%edx
c0034cd1:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0034cd4:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
c0034cdb:	00 
c0034cdc:	89 34 24             	mov    %esi,(%esp)
c0034cdf:	89 55 ac             	mov    %edx,-0x54(%ebp)
c0034ce2:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034ce6:	e8 75 17 00 00       	call   c0036460 <__lshift>
c0034ceb:	8b 5d b0             	mov    -0x50(%ebp),%ebx
c0034cee:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c0034cf2:	89 04 24             	mov    %eax,(%esp)
c0034cf5:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0034cf8:	e8 83 18 00 00       	call   c0036580 <__mcmp>
c0034cfd:	8b 55 ac             	mov    -0x54(%ebp),%edx
c0034d00:	83 f8 00             	cmp    $0x0,%eax
c0034d03:	0f 8e 41 06 00 00    	jle    c003534a <_dtoa_r+0x10ba>
c0034d09:	0f b6 4a ff          	movzbl -0x1(%edx),%ecx
c0034d0d:	eb 0f                	jmp    c0034d1e <_dtoa_r+0xa8e>
c0034d0f:	90                   	nop
c0034d10:	39 c7                	cmp    %eax,%edi
c0034d12:	0f 84 70 05 00 00    	je     c0035288 <_dtoa_r+0xff8>
c0034d18:	0f b6 48 ff          	movzbl -0x1(%eax),%ecx
c0034d1c:	89 c2                	mov    %eax,%edx
c0034d1e:	80 f9 39             	cmp    $0x39,%cl
c0034d21:	8d 42 ff             	lea    -0x1(%edx),%eax
c0034d24:	74 ea                	je     c0034d10 <_dtoa_r+0xa80>
c0034d26:	83 c1 01             	add    $0x1,%ecx
c0034d29:	89 fb                	mov    %edi,%ebx
c0034d2b:	88 08                	mov    %cl,(%eax)
c0034d2d:	89 d7                	mov    %edx,%edi
c0034d2f:	e9 7e fd ff ff       	jmp    c0034ab2 <_dtoa_r+0x822>
c0034d34:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034d38:	b8 1c 00 00 00       	mov    $0x1c,%eax
c0034d3d:	01 45 a0             	add    %eax,-0x60(%ebp)
c0034d40:	01 c3                	add    %eax,%ebx
c0034d42:	01 45 ac             	add    %eax,-0x54(%ebp)
c0034d45:	e9 b6 fc ff ff       	jmp    c0034a00 <_dtoa_r+0x770>
c0034d4a:	ba 01 00 00 00       	mov    $0x1,%edx
c0034d4f:	c7 45 90 01 00 00 00 	movl   $0x1,-0x70(%ebp)
c0034d56:	c7 45 a8 01 00 00 00 	movl   $0x1,-0x58(%ebp)
c0034d5d:	c7 45 18 01 00 00 00 	movl   $0x1,0x18(%ebp)
c0034d64:	21 c2                	and    %eax,%edx
c0034d66:	88 55 b4             	mov    %dl,-0x4c(%ebp)
c0034d69:	31 d2                	xor    %edx,%edx
c0034d6b:	c7 46 44 00 00 00 00 	movl   $0x0,0x44(%esi)
c0034d72:	e9 62 f8 ff ff       	jmp    c00345d9 <_dtoa_r+0x349>
c0034d77:	90                   	nop
c0034d78:	8b 55 c0             	mov    -0x40(%ebp),%edx
c0034d7b:	85 d2                	test   %edx,%edx
c0034d7d:	0f 84 4e fd ff ff    	je     c0034ad1 <_dtoa_r+0x841>
c0034d83:	8b 45 c0             	mov    -0x40(%ebp),%eax
c0034d86:	89 34 24             	mov    %esi,(%esp)
c0034d89:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034d8d:	e8 ce 10 00 00       	call   c0035e60 <_Bfree>
c0034d92:	e9 3a fd ff ff       	jmp    c0034ad1 <_dtoa_r+0x841>
c0034d97:	90                   	nop
c0034d98:	89 d8                	mov    %ebx,%eax
c0034d9a:	e9 89 f5 ff ff       	jmp    c0034328 <_dtoa_r+0x98>
c0034d9f:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034da2:	89 44 24 08          	mov    %eax,0x8(%esp)
c0034da6:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0034da9:	89 34 24             	mov    %esi,(%esp)
c0034dac:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034db0:	e8 8b 15 00 00       	call   c0036340 <__pow5mult>
c0034db5:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0034db8:	e9 c6 fb ff ff       	jmp    c0034983 <_dtoa_r+0x6f3>
c0034dbd:	dd d8                	fstp   %st(0)
c0034dbf:	dd d8                	fstp   %st(0)
c0034dc1:	eb 15                	jmp    c0034dd8 <_dtoa_r+0xb48>
c0034dc3:	90                   	nop
c0034dc4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034dc8:	dd d8                	fstp   %st(0)
c0034dca:	dd d8                	fstp   %st(0)
c0034dcc:	dd d8                	fstp   %st(0)
c0034dce:	eb 08                	jmp    c0034dd8 <_dtoa_r+0xb48>
c0034dd0:	dd d8                	fstp   %st(0)
c0034dd2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0034dd8:	dd 5d c0             	fstpl  -0x40(%ebp)
c0034ddb:	e9 cf f9 ff ff       	jmp    c00347af <_dtoa_r+0x51f>
c0034de0:	8b 45 b8             	mov    -0x48(%ebp),%eax
c0034de3:	f7 d8                	neg    %eax
c0034de5:	0f 84 6a 04 00 00    	je     c0035255 <_dtoa_r+0xfc5>
c0034deb:	89 c2                	mov    %eax,%edx
c0034ded:	b9 02 00 00 00       	mov    $0x2,%ecx
c0034df2:	83 e2 0f             	and    $0xf,%edx
c0034df5:	c1 f8 04             	sar    $0x4,%eax
c0034df8:	dd 04 d5 20 91 03 c0 	fldl   -0x3ffc6ee0(,%edx,8)
c0034dff:	85 c0                	test   %eax,%eax
c0034e01:	d8 c9                	fmul   %st(1),%st
c0034e03:	0f 84 4a f8 ff ff    	je     c0034653 <_dtoa_r+0x3c3>
c0034e09:	31 d2                	xor    %edx,%edx
c0034e0b:	90                   	nop
c0034e0c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034e10:	a8 01                	test   $0x1,%al
c0034e12:	74 0a                	je     c0034e1e <_dtoa_r+0xb8e>
c0034e14:	dc 0c d5 e0 90 03 c0 	fmull  -0x3ffc6f20(,%edx,8)
c0034e1b:	83 c1 01             	add    $0x1,%ecx
c0034e1e:	83 c2 01             	add    $0x1,%edx
c0034e21:	d1 f8                	sar    %eax
c0034e23:	75 eb                	jne    c0034e10 <_dtoa_r+0xb80>
c0034e25:	e9 29 f8 ff ff       	jmp    c0034653 <_dtoa_r+0x3c3>
c0034e2a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0034e30:	dd d8                	fstp   %st(0)
c0034e32:	dd d8                	fstp   %st(0)
c0034e34:	dd d8                	fstp   %st(0)
c0034e36:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c0034e3d:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c0034e44:	e9 55 fc ff ff       	jmp    c0034a9e <_dtoa_r+0x80e>
c0034e49:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034e50:	d9 7d d2             	fnstcw -0x2e(%ebp)
c0034e53:	8d 41 ff             	lea    -0x1(%ecx),%eax
c0034e56:	dd 45 c0             	fldl   -0x40(%ebp)
c0034e59:	dc 0c c5 20 91 03 c0 	fmull  -0x3ffc6ee0(,%eax,8)
c0034e60:	d9 c9                	fxch   %st(1)
c0034e62:	89 45 88             	mov    %eax,-0x78(%ebp)
c0034e65:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c0034e69:	8d 57 01             	lea    0x1(%edi),%edx
c0034e6c:	8d 1c 0f             	lea    (%edi,%ecx,1),%ebx
c0034e6f:	b4 0c                	mov    $0xc,%ah
c0034e71:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c0034e75:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034e78:	db 55 d4             	fistl  -0x2c(%ebp)
c0034e7b:	d9 6d d2             	fldcw  -0x2e(%ebp)
c0034e7e:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c0034e81:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0034e84:	83 c0 30             	add    $0x30,%eax
c0034e87:	83 f9 01             	cmp    $0x1,%ecx
c0034e8a:	db 45 d4             	fildl  -0x2c(%ebp)
c0034e8d:	de e9                	fsubrp %st,%st(1)
c0034e8f:	88 07                	mov    %al,(%edi)
c0034e91:	89 d0                	mov    %edx,%eax
c0034e93:	74 37                	je     c0034ecc <_dtoa_r+0xc3c>
c0034e95:	d9 05 50 90 03 c0    	flds   0xc0039050
c0034e9b:	eb 05                	jmp    c0034ea2 <_dtoa_r+0xc12>
c0034e9d:	8d 76 00             	lea    0x0(%esi),%esi
c0034ea0:	d9 c9                	fxch   %st(1)
c0034ea2:	dc c9                	fmul   %st,%st(1)
c0034ea4:	d9 c9                	fxch   %st(1)
c0034ea6:	83 c0 01             	add    $0x1,%eax
c0034ea9:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034eac:	db 55 d4             	fistl  -0x2c(%ebp)
c0034eaf:	d9 6d d2             	fldcw  -0x2e(%ebp)
c0034eb2:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
c0034eb5:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c0034eb8:	83 c1 30             	add    $0x30,%ecx
c0034ebb:	39 d8                	cmp    %ebx,%eax
c0034ebd:	db 45 d4             	fildl  -0x2c(%ebp)
c0034ec0:	de e9                	fsubrp %st,%st(1)
c0034ec2:	88 48 ff             	mov    %cl,-0x1(%eax)
c0034ec5:	75 d9                	jne    c0034ea0 <_dtoa_r+0xc10>
c0034ec7:	dd d9                	fstp   %st(1)
c0034ec9:	03 55 88             	add    -0x78(%ebp),%edx
c0034ecc:	d9 05 5c 90 03 c0    	flds   0xc003905c
c0034ed2:	d9 c2                	fld    %st(2)
c0034ed4:	d8 c1                	fadd   %st(1),%st
c0034ed6:	d9 ca                	fxch   %st(2)
c0034ed8:	db ea                	fucomi %st(2),%st
c0034eda:	dd da                	fstp   %st(2)
c0034edc:	0f 86 7f 03 00 00    	jbe    c0035261 <_dtoa_r+0xfd1>
c0034ee2:	dd d8                	fstp   %st(0)
c0034ee4:	dd d8                	fstp   %st(0)
c0034ee6:	dd d8                	fstp   %st(0)
c0034ee8:	dd d8                	fstp   %st(0)
c0034eea:	89 fb                	mov    %edi,%ebx
c0034eec:	0f b6 42 ff          	movzbl -0x1(%edx),%eax
c0034ef0:	89 d7                	mov    %edx,%edi
c0034ef2:	e9 d7 f9 ff ff       	jmp    c00348ce <_dtoa_r+0x63e>
c0034ef7:	90                   	nop
c0034ef8:	8b 4d b0             	mov    -0x50(%ebp),%ecx
c0034efb:	8b 41 10             	mov    0x10(%ecx),%eax
c0034efe:	8b 44 81 10          	mov    0x10(%ecx,%eax,4),%eax
c0034f02:	89 04 24             	mov    %eax,(%esp)
c0034f05:	e8 56 11 00 00       	call   c0036060 <__hi0bits>
c0034f0a:	ba 20 00 00 00       	mov    $0x20,%edx
c0034f0f:	29 c2                	sub    %eax,%edx
c0034f11:	e9 bb fa ff ff       	jmp    c00349d1 <_dtoa_r+0x741>
c0034f16:	66 90                	xchg   %ax,%ax
c0034f18:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034f1b:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034f1f:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0034f22:	89 04 24             	mov    %eax,(%esp)
c0034f25:	e8 56 16 00 00       	call   c0036580 <__mcmp>
c0034f2a:	85 c0                	test   %eax,%eax
c0034f2c:	0f 89 13 fb ff ff    	jns    c0034a45 <_dtoa_r+0x7b5>
c0034f32:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0034f35:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034f3c:	00 
c0034f3d:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0034f44:	00 
c0034f45:	89 34 24             	mov    %esi,(%esp)
c0034f48:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034f4c:	83 6d b8 01          	subl   $0x1,-0x48(%ebp)
c0034f50:	e8 2b 0f 00 00       	call   c0035e80 <__multadd>
c0034f55:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c0034f58:	85 c9                	test   %ecx,%ecx
c0034f5a:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0034f5d:	0f 85 8d 00 00 00    	jne    c0034ff0 <_dtoa_r+0xd60>
c0034f63:	83 7d 90 00          	cmpl   $0x0,-0x70(%ebp)
c0034f67:	8b 45 90             	mov    -0x70(%ebp),%eax
c0034f6a:	7f 0a                	jg     c0034f76 <_dtoa_r+0xce6>
c0034f6c:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c0034f70:	0f 8f ff 04 00 00    	jg     c0035475 <_dtoa_r+0x11e5>
c0034f76:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0034f79:	e9 ed fc ff ff       	jmp    c0034c6b <_dtoa_r+0x9db>
c0034f7e:	66 90                	xchg   %ax,%ax
c0034f80:	8b 5d a8             	mov    -0x58(%ebp),%ebx
c0034f83:	85 db                	test   %ebx,%ebx
c0034f85:	0f 85 aa fc ff ff    	jne    c0034c35 <_dtoa_r+0x9a5>
c0034f8b:	d8 0d 58 90 03 c0    	fmuls  0xc0039058
c0034f91:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c0034f98:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c0034f9f:	dd 45 c0             	fldl   -0x40(%ebp)
c0034fa2:	d9 c9                	fxch   %st(1)
c0034fa4:	df e9                	fucomip %st(1),%st
c0034fa6:	dd d8                	fstp   %st(0)
c0034fa8:	0f 83 97 fc ff ff    	jae    c0034c45 <_dtoa_r+0x9b5>
c0034fae:	e9 eb fa ff ff       	jmp    c0034a9e <_dtoa_r+0x80e>
c0034fb3:	90                   	nop
c0034fb4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034fb8:	8b 45 c0             	mov    -0x40(%ebp),%eax
c0034fbb:	85 c0                	test   %eax,%eax
c0034fbd:	0f 85 fe f9 ff ff    	jne    c00349c1 <_dtoa_r+0x731>
c0034fc3:	8b 45 c4             	mov    -0x3c(%ebp),%eax
c0034fc6:	a9 ff ff 0f 00       	test   $0xfffff,%eax
c0034fcb:	0f 85 f0 f9 ff ff    	jne    c00349c1 <_dtoa_r+0x731>
c0034fd1:	a9 00 00 f0 7f       	test   $0x7ff00000,%eax
c0034fd6:	0f 84 e5 f9 ff ff    	je     c00349c1 <_dtoa_r+0x731>
c0034fdc:	83 45 a0 01          	addl   $0x1,-0x60(%ebp)
c0034fe0:	83 45 ac 01          	addl   $0x1,-0x54(%ebp)
c0034fe4:	c7 45 8c 01 00 00 00 	movl   $0x1,-0x74(%ebp)
c0034feb:	e9 d1 f9 ff ff       	jmp    c00349c1 <_dtoa_r+0x731>
c0034ff0:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034ff3:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034ffa:	00 
c0034ffb:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0035002:	00 
c0035003:	89 34 24             	mov    %esi,(%esp)
c0035006:	89 44 24 04          	mov    %eax,0x4(%esp)
c003500a:	e8 71 0e 00 00       	call   c0035e80 <__multadd>
c003500f:	8b 55 90             	mov    -0x70(%ebp),%edx
c0035012:	85 d2                	test   %edx,%edx
c0035014:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0035017:	8b 45 90             	mov    -0x70(%ebp),%eax
c003501a:	7f 0a                	jg     c0035026 <_dtoa_r+0xd96>
c003501c:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c0035020:	0f 8f 4f 04 00 00    	jg     c0035475 <_dtoa_r+0x11e5>
c0035026:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0035029:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0035030:	85 db                	test   %ebx,%ebx
c0035032:	7e 16                	jle    c003504a <_dtoa_r+0xdba>
c0035034:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0035037:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c003503b:	89 34 24             	mov    %esi,(%esp)
c003503e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035042:	e8 19 14 00 00       	call   c0036460 <__lshift>
c0035047:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c003504a:	8b 5d 8c             	mov    -0x74(%ebp),%ebx
c003504d:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0035050:	85 db                	test   %ebx,%ebx
c0035052:	89 45 ac             	mov    %eax,-0x54(%ebp)
c0035055:	0f 85 11 03 00 00    	jne    c003536c <_dtoa_r+0x10dc>
c003505b:	8b 45 a8             	mov    -0x58(%ebp),%eax
c003505e:	8d 5f 01             	lea    0x1(%edi),%ebx
c0035061:	89 7d 8c             	mov    %edi,-0x74(%ebp)
c0035064:	01 f8                	add    %edi,%eax
c0035066:	8b 7d a4             	mov    -0x5c(%ebp),%edi
c0035069:	89 45 90             	mov    %eax,-0x70(%ebp)
c003506c:	8b 45 c0             	mov    -0x40(%ebp),%eax
c003506f:	83 e0 01             	and    $0x1,%eax
c0035072:	89 45 9c             	mov    %eax,-0x64(%ebp)
c0035075:	eb 2e                	jmp    c00350a5 <_dtoa_r+0xe15>
c0035077:	90                   	nop
c0035078:	e8 03 0e 00 00       	call   c0035e80 <__multadd>
c003507d:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0035084:	00 
c0035085:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c003508c:	00 
c003508d:	89 34 24             	mov    %esi,(%esp)
c0035090:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0035093:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0035096:	89 44 24 04          	mov    %eax,0x4(%esp)
c003509a:	e8 e1 0d 00 00       	call   c0035e80 <__multadd>
c003509f:	89 45 ac             	mov    %eax,-0x54(%ebp)
c00350a2:	83 c3 01             	add    $0x1,%ebx
c00350a5:	8b 55 b0             	mov    -0x50(%ebp),%edx
c00350a8:	8d 43 ff             	lea    -0x1(%ebx),%eax
c00350ab:	89 45 98             	mov    %eax,-0x68(%ebp)
c00350ae:	89 f8                	mov    %edi,%eax
c00350b0:	e8 0b f0 ff ff       	call   c00340c0 <quorem>
c00350b5:	89 3c 24             	mov    %edi,(%esp)
c00350b8:	8d 48 30             	lea    0x30(%eax),%ecx
c00350bb:	89 4d a0             	mov    %ecx,-0x60(%ebp)
c00350be:	8b 4d b4             	mov    -0x4c(%ebp),%ecx
c00350c1:	89 45 94             	mov    %eax,-0x6c(%ebp)
c00350c4:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c00350c8:	e8 b3 14 00 00       	call   c0036580 <__mcmp>
c00350cd:	8b 4d ac             	mov    -0x54(%ebp),%ecx
c00350d0:	89 34 24             	mov    %esi,(%esp)
c00350d3:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c00350d7:	89 45 c0             	mov    %eax,-0x40(%ebp)
c00350da:	8b 45 b0             	mov    -0x50(%ebp),%eax
c00350dd:	89 44 24 04          	mov    %eax,0x4(%esp)
c00350e1:	e8 ea 14 00 00       	call   c00365d0 <__mdiff>
c00350e6:	8b 48 0c             	mov    0xc(%eax),%ecx
c00350e9:	89 c2                	mov    %eax,%edx
c00350eb:	85 c9                	test   %ecx,%ecx
c00350ed:	0f 85 c5 00 00 00    	jne    c00351b8 <_dtoa_r+0xf28>
c00350f3:	89 44 24 04          	mov    %eax,0x4(%esp)
c00350f7:	89 3c 24             	mov    %edi,(%esp)
c00350fa:	89 45 a8             	mov    %eax,-0x58(%ebp)
c00350fd:	e8 7e 14 00 00       	call   c0036580 <__mcmp>
c0035102:	8b 55 a8             	mov    -0x58(%ebp),%edx
c0035105:	89 54 24 04          	mov    %edx,0x4(%esp)
c0035109:	89 34 24             	mov    %esi,(%esp)
c003510c:	89 45 a8             	mov    %eax,-0x58(%ebp)
c003510f:	e8 4c 0d 00 00       	call   c0035e60 <_Bfree>
c0035114:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0035117:	89 c1                	mov    %eax,%ecx
c0035119:	0b 4d 14             	or     0x14(%ebp),%ecx
c003511c:	75 0b                	jne    c0035129 <_dtoa_r+0xe99>
c003511e:	8b 55 9c             	mov    -0x64(%ebp),%edx
c0035121:	85 d2                	test   %edx,%edx
c0035123:	0f 84 fb 02 00 00    	je     c0035424 <_dtoa_r+0x1194>
c0035129:	8b 55 c0             	mov    -0x40(%ebp),%edx
c003512c:	85 d2                	test   %edx,%edx
c003512e:	0f 88 7f 01 00 00    	js     c00352b3 <_dtoa_r+0x1023>
c0035134:	8b 4d c0             	mov    -0x40(%ebp),%ecx
c0035137:	0b 4d 14             	or     0x14(%ebp),%ecx
c003513a:	75 0b                	jne    c0035147 <_dtoa_r+0xeb7>
c003513c:	8b 4d 9c             	mov    -0x64(%ebp),%ecx
c003513f:	85 c9                	test   %ecx,%ecx
c0035141:	0f 84 6c 01 00 00    	je     c00352b3 <_dtoa_r+0x1023>
c0035147:	85 c0                	test   %eax,%eax
c0035149:	0f 8f 82 02 00 00    	jg     c00353d1 <_dtoa_r+0x1141>
c003514f:	0f b6 45 a0          	movzbl -0x60(%ebp),%eax
c0035153:	89 da                	mov    %ebx,%edx
c0035155:	3b 5d 90             	cmp    -0x70(%ebp),%ebx
c0035158:	88 43 ff             	mov    %al,-0x1(%ebx)
c003515b:	0f 84 8d 02 00 00    	je     c00353ee <_dtoa_r+0x115e>
c0035161:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0035165:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c003516c:	00 
c003516d:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0035174:	00 
c0035175:	89 34 24             	mov    %esi,(%esp)
c0035178:	e8 03 0d 00 00       	call   c0035e80 <__multadd>
c003517d:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0035184:	00 
c0035185:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c003518c:	00 
c003518d:	89 34 24             	mov    %esi,(%esp)
c0035190:	89 c7                	mov    %eax,%edi
c0035192:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0035195:	39 45 b4             	cmp    %eax,-0x4c(%ebp)
c0035198:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c003519b:	89 44 24 04          	mov    %eax,0x4(%esp)
c003519f:	0f 85 d3 fe ff ff    	jne    c0035078 <_dtoa_r+0xde8>
c00351a5:	e8 d6 0c 00 00       	call   c0035e80 <__multadd>
c00351aa:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c00351ad:	89 45 ac             	mov    %eax,-0x54(%ebp)
c00351b0:	e9 ed fe ff ff       	jmp    c00350a2 <_dtoa_r+0xe12>
c00351b5:	8d 76 00             	lea    0x0(%esi),%esi
c00351b8:	b8 01 00 00 00       	mov    $0x1,%eax
c00351bd:	e9 43 ff ff ff       	jmp    c0035105 <_dtoa_r+0xe75>
c00351c2:	c7 45 98 00 00 00 00 	movl   $0x0,-0x68(%ebp)
c00351c9:	e9 d2 f2 ff ff       	jmp    c00344a0 <_dtoa_r+0x210>
c00351ce:	0f 85 87 f6 ff ff    	jne    c003485b <_dtoa_r+0x5cb>
c00351d4:	dd d8                	fstp   %st(0)
c00351d6:	dd d8                	fstp   %st(0)
c00351d8:	dd d8                	fstp   %st(0)
c00351da:	89 fb                	mov    %edi,%ebx
c00351dc:	8b 7d c0             	mov    -0x40(%ebp),%edi
c00351df:	e9 fc f8 ff ff       	jmp    c0034ae0 <_dtoa_r+0x850>
c00351e4:	89 c2                	mov    %eax,%edx
c00351e6:	2b 55 b0             	sub    -0x50(%ebp),%edx
c00351e9:	89 45 b0             	mov    %eax,-0x50(%ebp)
c00351ec:	01 55 94             	add    %edx,-0x6c(%ebp)
c00351ef:	31 d2                	xor    %edx,%edx
c00351f1:	e9 b8 f9 ff ff       	jmp    c0034bae <_dtoa_r+0x91e>
c00351f6:	8b 45 a8             	mov    -0x58(%ebp),%eax
c00351f9:	85 c0                	test   %eax,%eax
c00351fb:	0f 84 f3 f9 ff ff    	je     c0034bf4 <_dtoa_r+0x964>
c0035201:	8b 45 90             	mov    -0x70(%ebp),%eax
c0035204:	85 c0                	test   %eax,%eax
c0035206:	0f 8e c4 fb ff ff    	jle    c0034dd0 <_dtoa_r+0xb40>
c003520c:	d8 0d 50 90 03 c0    	fmuls  0xc0039050
c0035212:	83 c1 01             	add    $0x1,%ecx
c0035215:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c0035218:	8b 5d b8             	mov    -0x48(%ebp),%ebx
c003521b:	89 c1                	mov    %eax,%ecx
c003521d:	83 eb 01             	sub    $0x1,%ebx
c0035220:	db 45 d4             	fildl  -0x2c(%ebp)
c0035223:	d8 c9                	fmul   %st(1),%st
c0035225:	89 5d b4             	mov    %ebx,-0x4c(%ebp)
c0035228:	d8 05 54 90 03 c0    	fadds  0xc0039054
c003522e:	dd 5d c0             	fstpl  -0x40(%ebp)
c0035231:	81 6d c4 00 00 40 03 	subl   $0x3400000,-0x3c(%ebp)
c0035238:	e9 53 f4 ff ff       	jmp    c0034690 <_dtoa_r+0x400>
c003523d:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0035240:	c6 03 30             	movb   $0x30,(%ebx)
c0035243:	83 c0 01             	add    $0x1,%eax
c0035246:	89 45 b8             	mov    %eax,-0x48(%ebp)
c0035249:	b8 31 00 00 00       	mov    $0x31,%eax
c003524e:	88 02                	mov    %al,(%edx)
c0035250:	e9 8b f8 ff ff       	jmp    c0034ae0 <_dtoa_r+0x850>
c0035255:	d9 c0                	fld    %st(0)
c0035257:	b9 02 00 00 00       	mov    $0x2,%ecx
c003525c:	e9 f2 f3 ff ff       	jmp    c0034653 <_dtoa_r+0x3c3>
c0035261:	de e2                	fsubp  %st,%st(2)
c0035263:	d9 c9                	fxch   %st(1)
c0035265:	df e9                	fucomip %st(1),%st
c0035267:	dd d8                	fstp   %st(0)
c0035269:	0f 86 69 fb ff ff    	jbe    c0034dd8 <_dtoa_r+0xb48>
c003526f:	dd d8                	fstp   %st(0)
c0035271:	eb 07                	jmp    c003527a <_dtoa_r+0xfea>
c0035273:	90                   	nop
c0035274:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035278:	89 c2                	mov    %eax,%edx
c003527a:	80 7a ff 30          	cmpb   $0x30,-0x1(%edx)
c003527e:	8d 42 ff             	lea    -0x1(%edx),%eax
c0035281:	74 f5                	je     c0035278 <_dtoa_r+0xfe8>
c0035283:	e9 d9 f4 ff ff       	jmp    c0034761 <_dtoa_r+0x4d1>
c0035288:	c6 07 31             	movb   $0x31,(%edi)
c003528b:	89 fb                	mov    %edi,%ebx
c003528d:	89 d7                	mov    %edx,%edi
c003528f:	83 45 b8 01          	addl   $0x1,-0x48(%ebp)
c0035293:	e9 1a f8 ff ff       	jmp    c0034ab2 <_dtoa_r+0x822>
c0035298:	8b 55 8c             	mov    -0x74(%ebp),%edx
c003529b:	85 d2                	test   %edx,%edx
c003529d:	0f 84 1b 01 00 00    	je     c00353be <_dtoa_r+0x112e>
c00352a3:	05 33 04 00 00       	add    $0x433,%eax
c00352a8:	8b 55 b0             	mov    -0x50(%ebp),%edx
c00352ab:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c00352ae:	e9 0b f9 ff ff       	jmp    c0034bbe <_dtoa_r+0x92e>
c00352b3:	85 c0                	test   %eax,%eax
c00352b5:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c00352b8:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c00352bb:	7e 45                	jle    c0035302 <_dtoa_r+0x1072>
c00352bd:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c00352c0:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
c00352c7:	00 
c00352c8:	89 34 24             	mov    %esi,(%esp)
c00352cb:	89 44 24 04          	mov    %eax,0x4(%esp)
c00352cf:	e8 8c 11 00 00       	call   c0036460 <__lshift>
c00352d4:	8b 5d b0             	mov    -0x50(%ebp),%ebx
c00352d7:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c00352db:	89 04 24             	mov    %eax,(%esp)
c00352de:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c00352e1:	e8 9a 12 00 00       	call   c0036580 <__mcmp>
c00352e6:	83 f8 00             	cmp    $0x0,%eax
c00352e9:	0f 8e 5b 01 00 00    	jle    c003544a <_dtoa_r+0x11ba>
c00352ef:	83 7d a0 39          	cmpl   $0x39,-0x60(%ebp)
c00352f3:	0f 84 0c 01 00 00    	je     c0035405 <_dtoa_r+0x1175>
c00352f9:	8b 45 94             	mov    -0x6c(%ebp),%eax
c00352fc:	83 c0 31             	add    $0x31,%eax
c00352ff:	89 45 a0             	mov    %eax,-0x60(%ebp)
c0035302:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c0035305:	0f b6 45 a0          	movzbl -0x60(%ebp),%eax
c0035309:	89 cb                	mov    %ecx,%ebx
c003530b:	88 03                	mov    %al,(%ebx)
c003530d:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0035310:	89 fb                	mov    %edi,%ebx
c0035312:	8d 79 01             	lea    0x1(%ecx),%edi
c0035315:	89 45 c0             	mov    %eax,-0x40(%ebp)
c0035318:	8b 45 ac             	mov    -0x54(%ebp),%eax
c003531b:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c003531e:	e9 8f f7 ff ff       	jmp    c0034ab2 <_dtoa_r+0x822>
c0035323:	dd d8                	fstp   %st(0)
c0035325:	dd d8                	fstp   %st(0)
c0035327:	dd d8                	fstp   %st(0)
c0035329:	eb 0d                	jmp    c0035338 <_dtoa_r+0x10a8>
c003532b:	90                   	nop
c003532c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035330:	dd d8                	fstp   %st(0)
c0035332:	dd d8                	fstp   %st(0)
c0035334:	dd d8                	fstp   %st(0)
c0035336:	dd d8                	fstp   %st(0)
c0035338:	89 fb                	mov    %edi,%ebx
c003533a:	89 d7                	mov    %edx,%edi
c003533c:	e9 8d f5 ff ff       	jmp    c00348ce <_dtoa_r+0x63e>
c0035341:	29 cb                	sub    %ecx,%ebx
c0035343:	31 c0                	xor    %eax,%eax
c0035345:	e9 74 f8 ff ff       	jmp    c0034bbe <_dtoa_r+0x92e>
c003534a:	75 0e                	jne    c003535a <_dtoa_r+0x10ca>
c003534c:	f6 45 a0 01          	testb  $0x1,-0x60(%ebp)
c0035350:	74 08                	je     c003535a <_dtoa_r+0x10ca>
c0035352:	e9 b2 f9 ff ff       	jmp    c0034d09 <_dtoa_r+0xa79>
c0035357:	90                   	nop
c0035358:	89 c2                	mov    %eax,%edx
c003535a:	80 7a ff 30          	cmpb   $0x30,-0x1(%edx)
c003535e:	8d 42 ff             	lea    -0x1(%edx),%eax
c0035361:	74 f5                	je     c0035358 <_dtoa_r+0x10c8>
c0035363:	89 fb                	mov    %edi,%ebx
c0035365:	89 d7                	mov    %edx,%edi
c0035367:	e9 46 f7 ff ff       	jmp    c0034ab2 <_dtoa_r+0x822>
c003536c:	8b 40 04             	mov    0x4(%eax),%eax
c003536f:	89 34 24             	mov    %esi,(%esp)
c0035372:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035376:	e8 45 0a 00 00       	call   c0035dc0 <_Balloc>
c003537b:	8b 4d b4             	mov    -0x4c(%ebp),%ecx
c003537e:	89 c3                	mov    %eax,%ebx
c0035380:	8b 41 10             	mov    0x10(%ecx),%eax
c0035383:	8d 04 85 08 00 00 00 	lea    0x8(,%eax,4),%eax
c003538a:	89 44 24 08          	mov    %eax,0x8(%esp)
c003538e:	89 c8                	mov    %ecx,%eax
c0035390:	83 c0 0c             	add    $0xc,%eax
c0035393:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035397:	8d 43 0c             	lea    0xc(%ebx),%eax
c003539a:	89 04 24             	mov    %eax,(%esp)
c003539d:	e8 f2 cb ff ff       	call   c0031f94 <memcpy>
c00353a2:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
c00353a9:	00 
c00353aa:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c00353ae:	89 34 24             	mov    %esi,(%esp)
c00353b1:	e8 aa 10 00 00       	call   c0036460 <__lshift>
c00353b6:	89 45 ac             	mov    %eax,-0x54(%ebp)
c00353b9:	e9 9d fc ff ff       	jmp    c003505b <_dtoa_r+0xdcb>
c00353be:	b8 36 00 00 00       	mov    $0x36,%eax
c00353c3:	8b 55 b0             	mov    -0x50(%ebp),%edx
c00353c6:	2b 45 e0             	sub    -0x20(%ebp),%eax
c00353c9:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c00353cc:	e9 ed f7 ff ff       	jmp    c0034bbe <_dtoa_r+0x92e>
c00353d1:	83 7d a0 39          	cmpl   $0x39,-0x60(%ebp)
c00353d5:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c00353d8:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c00353db:	74 28                	je     c0035405 <_dtoa_r+0x1175>
c00353dd:	0f b6 45 a0          	movzbl -0x60(%ebp),%eax
c00353e1:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c00353e4:	83 c0 01             	add    $0x1,%eax
c00353e7:	89 cb                	mov    %ecx,%ebx
c00353e9:	e9 1d ff ff ff       	jmp    c003530b <_dtoa_r+0x107b>
c00353ee:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c00353f1:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c00353f4:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c00353f7:	89 45 c0             	mov    %eax,-0x40(%ebp)
c00353fa:	8b 45 ac             	mov    -0x54(%ebp),%eax
c00353fd:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0035400:	e9 cc f8 ff ff       	jmp    c0034cd1 <_dtoa_r+0xa41>
c0035405:	8b 45 98             	mov    -0x68(%ebp),%eax
c0035408:	b9 39 00 00 00       	mov    $0x39,%ecx
c003540d:	8d 50 01             	lea    0x1(%eax),%edx
c0035410:	c6 00 39             	movb   $0x39,(%eax)
c0035413:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0035416:	89 45 c0             	mov    %eax,-0x40(%ebp)
c0035419:	8b 45 ac             	mov    -0x54(%ebp),%eax
c003541c:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c003541f:	e9 fa f8 ff ff       	jmp    c0034d1e <_dtoa_r+0xa8e>
c0035424:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c0035427:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c003542a:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c003542d:	83 fb 39             	cmp    $0x39,%ebx
c0035430:	74 d3                	je     c0035405 <_dtoa_r+0x1175>
c0035432:	8b 4d c0             	mov    -0x40(%ebp),%ecx
c0035435:	8b 45 94             	mov    -0x6c(%ebp),%eax
c0035438:	83 c0 31             	add    $0x31,%eax
c003543b:	85 c9                	test   %ecx,%ecx
c003543d:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c0035440:	0f 4e c3             	cmovle %ebx,%eax
c0035443:	89 cb                	mov    %ecx,%ebx
c0035445:	e9 c1 fe ff ff       	jmp    c003530b <_dtoa_r+0x107b>
c003544a:	0f 85 b2 fe ff ff    	jne    c0035302 <_dtoa_r+0x1072>
c0035450:	f6 45 a0 01          	testb  $0x1,-0x60(%ebp)
c0035454:	0f 84 a8 fe ff ff    	je     c0035302 <_dtoa_r+0x1072>
c003545a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035460:	e9 8a fe ff ff       	jmp    c00352ef <_dtoa_r+0x105f>
c0035465:	0f 85 c7 f3 ff ff    	jne    c0034832 <_dtoa_r+0x5a2>
c003546b:	dd d8                	fstp   %st(0)
c003546d:	dd d8                	fstp   %st(0)
c003546f:	90                   	nop
c0035470:	e9 65 fd ff ff       	jmp    c00351da <_dtoa_r+0xf4a>
c0035475:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0035478:	e9 dd f5 ff ff       	jmp    c0034a5a <_dtoa_r+0x7ca>
c003547d:	8d 76 00             	lea    0x0(%esi),%esi
c0035480:	0f 84 7a f5 ff ff    	je     c0034a00 <_dtoa_r+0x770>
c0035486:	b8 3c 00 00 00       	mov    $0x3c,%eax
c003548b:	29 d0                	sub    %edx,%eax
c003548d:	e9 ab f8 ff ff       	jmp    c0034d3d <_dtoa_r+0xaad>
c0035492:	b8 01 00 00 00       	mov    $0x1,%eax
c0035497:	e9 d9 ef ff ff       	jmp    c0034475 <_dtoa_r+0x1e5>
c003549c:	31 d2                	xor    %edx,%edx
c003549e:	e9 36 f1 ff ff       	jmp    c00345d9 <_dtoa_r+0x349>
c00354a3:	66 90                	xchg   %ax,%ax
c00354a5:	66 90                	xchg   %ax,%ax
c00354a7:	66 90                	xchg   %ax,%ax
c00354a9:	66 90                	xchg   %ax,%ax
c00354ab:	66 90                	xchg   %ax,%ax
c00354ad:	66 90                	xchg   %ax,%ax
c00354af:	90                   	nop

c00354b0 <_setlocale_r>:
c00354b0:	55                   	push   %ebp
c00354b1:	89 e5                	mov    %esp,%ebp
c00354b3:	53                   	push   %ebx
c00354b4:	83 ec 14             	sub    $0x14,%esp
c00354b7:	8b 5d 10             	mov    0x10(%ebp),%ebx
c00354ba:	85 db                	test   %ebx,%ebx
c00354bc:	74 14                	je     c00354d2 <_setlocale_r+0x22>
c00354be:	c7 44 24 04 78 90 03 	movl   $0xc0039078,0x4(%esp)
c00354c5:	c0 
c00354c6:	89 1c 24             	mov    %ebx,(%esp)
c00354c9:	e8 a2 cb ff ff       	call   c0032070 <strcmp>
c00354ce:	85 c0                	test   %eax,%eax
c00354d0:	75 0e                	jne    c00354e0 <_setlocale_r+0x30>
c00354d2:	83 c4 14             	add    $0x14,%esp
c00354d5:	b8 74 8e 03 c0       	mov    $0xc0038e74,%eax
c00354da:	5b                   	pop    %ebx
c00354db:	5d                   	pop    %ebp
c00354dc:	c3                   	ret    
c00354dd:	8d 76 00             	lea    0x0(%esi),%esi
c00354e0:	c7 44 24 04 74 8e 03 	movl   $0xc0038e74,0x4(%esp)
c00354e7:	c0 
c00354e8:	89 1c 24             	mov    %ebx,(%esp)
c00354eb:	e8 80 cb ff ff       	call   c0032070 <strcmp>
c00354f0:	85 c0                	test   %eax,%eax
c00354f2:	74 de                	je     c00354d2 <_setlocale_r+0x22>
c00354f4:	89 1c 24             	mov    %ebx,(%esp)
c00354f7:	c7 44 24 04 ae 8e 03 	movl   $0xc0038eae,0x4(%esp)
c00354fe:	c0 
c00354ff:	e8 6c cb ff ff       	call   c0032070 <strcmp>
c0035504:	89 c2                	mov    %eax,%edx
c0035506:	31 c0                	xor    %eax,%eax
c0035508:	85 d2                	test   %edx,%edx
c003550a:	ba 74 8e 03 c0       	mov    $0xc0038e74,%edx
c003550f:	0f 44 c2             	cmove  %edx,%eax
c0035512:	83 c4 14             	add    $0x14,%esp
c0035515:	5b                   	pop    %ebx
c0035516:	5d                   	pop    %ebp
c0035517:	c3                   	ret    
c0035518:	90                   	nop
c0035519:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0035520 <__locale_charset>:
c0035520:	55                   	push   %ebp
c0035521:	b8 c0 c4 03 c0       	mov    $0xc003c4c0,%eax
c0035526:	89 e5                	mov    %esp,%ebp
c0035528:	5d                   	pop    %ebp
c0035529:	c3                   	ret    
c003552a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0035530 <__locale_mb_cur_max>:
c0035530:	55                   	push   %ebp
c0035531:	a1 18 c5 03 c0       	mov    0xc003c518,%eax
c0035536:	89 e5                	mov    %esp,%ebp
c0035538:	5d                   	pop    %ebp
c0035539:	c3                   	ret    
c003553a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0035540 <__locale_msgcharset>:
c0035540:	55                   	push   %ebp
c0035541:	b8 a0 c4 03 c0       	mov    $0xc003c4a0,%eax
c0035546:	89 e5                	mov    %esp,%ebp
c0035548:	5d                   	pop    %ebp
c0035549:	c3                   	ret    
c003554a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0035550 <__locale_cjk_lang>:
c0035550:	55                   	push   %ebp
c0035551:	31 c0                	xor    %eax,%eax
c0035553:	89 e5                	mov    %esp,%ebp
c0035555:	5d                   	pop    %ebp
c0035556:	c3                   	ret    
c0035557:	89 f6                	mov    %esi,%esi
c0035559:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0035560 <_localeconv_r>:
c0035560:	55                   	push   %ebp
c0035561:	b8 e0 c4 03 c0       	mov    $0xc003c4e0,%eax
c0035566:	89 e5                	mov    %esp,%ebp
c0035568:	5d                   	pop    %ebp
c0035569:	c3                   	ret    
c003556a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0035570 <setlocale>:
c0035570:	55                   	push   %ebp
c0035571:	89 e5                	mov    %esp,%ebp
c0035573:	83 ec 18             	sub    $0x18,%esp
c0035576:	e8 35 cc ff ff       	call   c00321b0 <__getreent>
c003557b:	8b 55 0c             	mov    0xc(%ebp),%edx
c003557e:	89 54 24 08          	mov    %edx,0x8(%esp)
c0035582:	8b 55 08             	mov    0x8(%ebp),%edx
c0035585:	89 04 24             	mov    %eax,(%esp)
c0035588:	89 54 24 04          	mov    %edx,0x4(%esp)
c003558c:	e8 1f ff ff ff       	call   c00354b0 <_setlocale_r>
c0035591:	c9                   	leave  
c0035592:	c3                   	ret    
c0035593:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035599:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c00355a0 <localeconv>:
c00355a0:	55                   	push   %ebp
c00355a1:	89 e5                	mov    %esp,%ebp
c00355a3:	83 ec 08             	sub    $0x8,%esp
c00355a6:	e8 05 cc ff ff       	call   c00321b0 <__getreent>
c00355ab:	b8 e0 c4 03 c0       	mov    $0xc003c4e0,%eax
c00355b0:	c9                   	leave  
c00355b1:	c3                   	ret    
c00355b2:	66 90                	xchg   %ax,%ax
c00355b4:	66 90                	xchg   %ax,%ax
c00355b6:	66 90                	xchg   %ax,%ax
c00355b8:	66 90                	xchg   %ax,%ax
c00355ba:	66 90                	xchg   %ax,%ax
c00355bc:	66 90                	xchg   %ax,%ax
c00355be:	66 90                	xchg   %ax,%ax

c00355c0 <_malloc_r>:
c00355c0:	55                   	push   %ebp
c00355c1:	89 e5                	mov    %esp,%ebp
c00355c3:	57                   	push   %edi
c00355c4:	56                   	push   %esi
c00355c5:	53                   	push   %ebx
c00355c6:	83 ec 2c             	sub    $0x2c,%esp
c00355c9:	8b 45 0c             	mov    0xc(%ebp),%eax
c00355cc:	8d 50 0b             	lea    0xb(%eax),%edx
c00355cf:	83 fa 16             	cmp    $0x16,%edx
c00355d2:	76 6c                	jbe    c0035640 <_malloc_r+0x80>
c00355d4:	89 d7                	mov    %edx,%edi
c00355d6:	83 e7 f8             	and    $0xfffffff8,%edi
c00355d9:	89 fe                	mov    %edi,%esi
c00355db:	c1 ee 1f             	shr    $0x1f,%esi
c00355de:	39 c7                	cmp    %eax,%edi
c00355e0:	8b 45 08             	mov    0x8(%ebp),%eax
c00355e3:	89 f2                	mov    %esi,%edx
c00355e5:	72 67                	jb     c003564e <_malloc_r+0x8e>
c00355e7:	84 d2                	test   %dl,%dl
c00355e9:	75 63                	jne    c003564e <_malloc_r+0x8e>
c00355eb:	89 04 24             	mov    %eax,(%esp)
c00355ee:	e8 ad 07 00 00       	call   c0035da0 <__malloc_lock>
c00355f3:	81 ff f7 01 00 00    	cmp    $0x1f7,%edi
c00355f9:	77 65                	ja     c0035660 <_malloc_r+0xa0>
c00355fb:	89 fa                	mov    %edi,%edx
c00355fd:	c1 ea 03             	shr    $0x3,%edx
c0035600:	8d 04 d5 40 c5 03 c0 	lea    -0x3ffc3ac0(,%edx,8),%eax
c0035607:	8b 58 0c             	mov    0xc(%eax),%ebx
c003560a:	39 c3                	cmp    %eax,%ebx
c003560c:	0f 84 3e 05 00 00    	je     c0035b50 <_malloc_r+0x590>
c0035612:	8b 43 04             	mov    0x4(%ebx),%eax
c0035615:	83 e0 fc             	and    $0xfffffffc,%eax
c0035618:	8b 53 0c             	mov    0xc(%ebx),%edx
c003561b:	8b 4b 08             	mov    0x8(%ebx),%ecx
c003561e:	89 51 0c             	mov    %edx,0xc(%ecx)
c0035621:	89 4a 08             	mov    %ecx,0x8(%edx)
c0035624:	83 4c 03 04 01       	orl    $0x1,0x4(%ebx,%eax,1)
c0035629:	8b 45 08             	mov    0x8(%ebp),%eax
c003562c:	89 04 24             	mov    %eax,(%esp)
c003562f:	e8 7c 07 00 00       	call   c0035db0 <__malloc_unlock>
c0035634:	8d 43 08             	lea    0x8(%ebx),%eax
c0035637:	83 c4 2c             	add    $0x2c,%esp
c003563a:	5b                   	pop    %ebx
c003563b:	5e                   	pop    %esi
c003563c:	5f                   	pop    %edi
c003563d:	5d                   	pop    %ebp
c003563e:	c3                   	ret    
c003563f:	90                   	nop
c0035640:	bf 10 00 00 00       	mov    $0x10,%edi
c0035645:	31 d2                	xor    %edx,%edx
c0035647:	39 c7                	cmp    %eax,%edi
c0035649:	8b 45 08             	mov    0x8(%ebp),%eax
c003564c:	73 99                	jae    c00355e7 <_malloc_r+0x27>
c003564e:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0035654:	83 c4 2c             	add    $0x2c,%esp
c0035657:	31 c0                	xor    %eax,%eax
c0035659:	5b                   	pop    %ebx
c003565a:	5e                   	pop    %esi
c003565b:	5f                   	pop    %edi
c003565c:	5d                   	pop    %ebp
c003565d:	c3                   	ret    
c003565e:	66 90                	xchg   %ax,%ax
c0035660:	89 fe                	mov    %edi,%esi
c0035662:	c1 ee 09             	shr    $0x9,%esi
c0035665:	85 f6                	test   %esi,%esi
c0035667:	0f 84 ab 01 00 00    	je     c0035818 <_malloc_r+0x258>
c003566d:	83 fe 04             	cmp    $0x4,%esi
c0035670:	0f 87 8a 03 00 00    	ja     c0035a00 <_malloc_r+0x440>
c0035676:	89 fe                	mov    %edi,%esi
c0035678:	c1 ee 06             	shr    $0x6,%esi
c003567b:	83 c6 38             	add    $0x38,%esi
c003567e:	8d 04 36             	lea    (%esi,%esi,1),%eax
c0035681:	8d 0c 85 40 c5 03 c0 	lea    -0x3ffc3ac0(,%eax,4),%ecx
c0035688:	8b 59 0c             	mov    0xc(%ecx),%ebx
c003568b:	39 d9                	cmp    %ebx,%ecx
c003568d:	75 18                	jne    c00356a7 <_malloc_r+0xe7>
c003568f:	eb 28                	jmp    c00356b9 <_malloc_r+0xf9>
c0035691:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0035698:	85 d2                	test   %edx,%edx
c003569a:	0f 89 78 ff ff ff    	jns    c0035618 <_malloc_r+0x58>
c00356a0:	8b 5b 0c             	mov    0xc(%ebx),%ebx
c00356a3:	39 d9                	cmp    %ebx,%ecx
c00356a5:	74 12                	je     c00356b9 <_malloc_r+0xf9>
c00356a7:	8b 43 04             	mov    0x4(%ebx),%eax
c00356aa:	83 e0 fc             	and    $0xfffffffc,%eax
c00356ad:	89 c2                	mov    %eax,%edx
c00356af:	29 fa                	sub    %edi,%edx
c00356b1:	83 fa 0f             	cmp    $0xf,%edx
c00356b4:	7e e2                	jle    c0035698 <_malloc_r+0xd8>
c00356b6:	83 ee 01             	sub    $0x1,%esi
c00356b9:	8d 46 01             	lea    0x1(%esi),%eax
c00356bc:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c00356bf:	8b 1d 50 c5 03 c0    	mov    0xc003c550,%ebx
c00356c5:	a1 44 c5 03 c0       	mov    0xc003c544,%eax
c00356ca:	81 fb 48 c5 03 c0    	cmp    $0xc003c548,%ebx
c00356d0:	74 6b                	je     c003573d <_malloc_r+0x17d>
c00356d2:	8b 73 04             	mov    0x4(%ebx),%esi
c00356d5:	83 e6 fc             	and    $0xfffffffc,%esi
c00356d8:	89 f0                	mov    %esi,%eax
c00356da:	29 f8                	sub    %edi,%eax
c00356dc:	83 f8 0f             	cmp    $0xf,%eax
c00356df:	0f 8f a3 03 00 00    	jg     c0035a88 <_malloc_r+0x4c8>
c00356e5:	85 c0                	test   %eax,%eax
c00356e7:	c7 05 54 c5 03 c0 48 	movl   $0xc003c548,0xc003c554
c00356ee:	c5 03 c0 
c00356f1:	c7 05 50 c5 03 c0 48 	movl   $0xc003c548,0xc003c550
c00356f8:	c5 03 c0 
c00356fb:	0f 89 27 01 00 00    	jns    c0035828 <_malloc_r+0x268>
c0035701:	81 fe ff 01 00 00    	cmp    $0x1ff,%esi
c0035707:	0f 87 1b 03 00 00    	ja     c0035a28 <_malloc_r+0x468>
c003570d:	c1 ee 03             	shr    $0x3,%esi
c0035710:	b8 01 00 00 00       	mov    $0x1,%eax
c0035715:	89 f1                	mov    %esi,%ecx
c0035717:	8d 14 f5 40 c5 03 c0 	lea    -0x3ffc3ac0(,%esi,8),%edx
c003571e:	c1 f9 02             	sar    $0x2,%ecx
c0035721:	d3 e0                	shl    %cl,%eax
c0035723:	8b 4a 08             	mov    0x8(%edx),%ecx
c0035726:	0b 05 44 c5 03 c0    	or     0xc003c544,%eax
c003572c:	89 53 0c             	mov    %edx,0xc(%ebx)
c003572f:	89 4b 08             	mov    %ecx,0x8(%ebx)
c0035732:	a3 44 c5 03 c0       	mov    %eax,0xc003c544
c0035737:	89 5a 08             	mov    %ebx,0x8(%edx)
c003573a:	89 59 0c             	mov    %ebx,0xc(%ecx)
c003573d:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0035740:	be 01 00 00 00       	mov    $0x1,%esi
c0035745:	c1 f9 02             	sar    $0x2,%ecx
c0035748:	d3 e6                	shl    %cl,%esi
c003574a:	39 c6                	cmp    %eax,%esi
c003574c:	0f 87 f6 00 00 00    	ja     c0035848 <_malloc_r+0x288>
c0035752:	85 f0                	test   %esi,%eax
c0035754:	0f 85 76 03 00 00    	jne    c0035ad0 <_malloc_r+0x510>
c003575a:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c003575d:	01 f6                	add    %esi,%esi
c003575f:	83 e2 fc             	and    $0xfffffffc,%edx
c0035762:	85 f0                	test   %esi,%eax
c0035764:	8d 4a 04             	lea    0x4(%edx),%ecx
c0035767:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c003576a:	0f 85 60 03 00 00    	jne    c0035ad0 <_malloc_r+0x510>
c0035770:	89 ca                	mov    %ecx,%edx
c0035772:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035778:	01 f6                	add    %esi,%esi
c003577a:	83 c2 04             	add    $0x4,%edx
c003577d:	85 f0                	test   %esi,%eax
c003577f:	74 f7                	je     c0035778 <_malloc_r+0x1b8>
c0035781:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c0035784:	89 75 dc             	mov    %esi,-0x24(%ebp)
c0035787:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c003578a:	8d 34 c5 40 c5 03 c0 	lea    -0x3ffc3ac0(,%eax,8),%esi
c0035791:	89 f1                	mov    %esi,%ecx
c0035793:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0035796:	8b 59 0c             	mov    0xc(%ecx),%ebx
c0035799:	39 d9                	cmp    %ebx,%ecx
c003579b:	75 1e                	jne    c00357bb <_malloc_r+0x1fb>
c003579d:	e9 36 03 00 00       	jmp    c0035ad8 <_malloc_r+0x518>
c00357a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00357a8:	85 d2                	test   %edx,%edx
c00357aa:	0f 89 c0 03 00 00    	jns    c0035b70 <_malloc_r+0x5b0>
c00357b0:	8b 5b 0c             	mov    0xc(%ebx),%ebx
c00357b3:	39 d9                	cmp    %ebx,%ecx
c00357b5:	0f 84 1d 03 00 00    	je     c0035ad8 <_malloc_r+0x518>
c00357bb:	8b 43 04             	mov    0x4(%ebx),%eax
c00357be:	83 e0 fc             	and    $0xfffffffc,%eax
c00357c1:	89 c2                	mov    %eax,%edx
c00357c3:	29 fa                	sub    %edi,%edx
c00357c5:	83 fa 0f             	cmp    $0xf,%edx
c00357c8:	7e de                	jle    c00357a8 <_malloc_r+0x1e8>
c00357ca:	8b 4b 0c             	mov    0xc(%ebx),%ecx
c00357cd:	8d 04 3b             	lea    (%ebx,%edi,1),%eax
c00357d0:	83 cf 01             	or     $0x1,%edi
c00357d3:	8b 73 08             	mov    0x8(%ebx),%esi
c00357d6:	89 7b 04             	mov    %edi,0x4(%ebx)
c00357d9:	89 4e 0c             	mov    %ecx,0xc(%esi)
c00357dc:	89 71 08             	mov    %esi,0x8(%ecx)
c00357df:	89 d1                	mov    %edx,%ecx
c00357e1:	83 c9 01             	or     $0x1,%ecx
c00357e4:	a3 54 c5 03 c0       	mov    %eax,0xc003c554
c00357e9:	a3 50 c5 03 c0       	mov    %eax,0xc003c550
c00357ee:	c7 40 0c 48 c5 03 c0 	movl   $0xc003c548,0xc(%eax)
c00357f5:	c7 40 08 48 c5 03 c0 	movl   $0xc003c548,0x8(%eax)
c00357fc:	89 48 04             	mov    %ecx,0x4(%eax)
c00357ff:	89 14 10             	mov    %edx,(%eax,%edx,1)
c0035802:	8b 45 08             	mov    0x8(%ebp),%eax
c0035805:	89 04 24             	mov    %eax,(%esp)
c0035808:	e8 a3 05 00 00       	call   c0035db0 <__malloc_unlock>
c003580d:	8d 43 08             	lea    0x8(%ebx),%eax
c0035810:	e9 22 fe ff ff       	jmp    c0035637 <_malloc_r+0x77>
c0035815:	8d 76 00             	lea    0x0(%esi),%esi
c0035818:	b8 7e 00 00 00       	mov    $0x7e,%eax
c003581d:	be 3f 00 00 00       	mov    $0x3f,%esi
c0035822:	e9 5a fe ff ff       	jmp    c0035681 <_malloc_r+0xc1>
c0035827:	90                   	nop
c0035828:	8b 45 08             	mov    0x8(%ebp),%eax
c003582b:	83 4c 33 04 01       	orl    $0x1,0x4(%ebx,%esi,1)
c0035830:	89 04 24             	mov    %eax,(%esp)
c0035833:	e8 78 05 00 00       	call   c0035db0 <__malloc_unlock>
c0035838:	83 c4 2c             	add    $0x2c,%esp
c003583b:	8d 43 08             	lea    0x8(%ebx),%eax
c003583e:	5b                   	pop    %ebx
c003583f:	5e                   	pop    %esi
c0035840:	5f                   	pop    %edi
c0035841:	5d                   	pop    %ebp
c0035842:	c3                   	ret    
c0035843:	90                   	nop
c0035844:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035848:	8b 1d 48 c5 03 c0    	mov    0xc003c548,%ebx
c003584e:	8b 73 04             	mov    0x4(%ebx),%esi
c0035851:	83 e6 fc             	and    $0xfffffffc,%esi
c0035854:	39 f7                	cmp    %esi,%edi
c0035856:	77 0d                	ja     c0035865 <_malloc_r+0x2a5>
c0035858:	89 f0                	mov    %esi,%eax
c003585a:	29 f8                	sub    %edi,%eax
c003585c:	83 f8 0f             	cmp    $0xf,%eax
c003585f:	0f 8f 6b 01 00 00    	jg     c00359d0 <_malloc_r+0x410>
c0035865:	8b 0d 50 f0 06 c0    	mov    0xc006f050,%ecx
c003586b:	8d 04 33             	lea    (%ebx,%esi,1),%eax
c003586e:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0035871:	01 f9                	add    %edi,%ecx
c0035873:	8d 81 0f 10 00 00    	lea    0x100f(%ecx),%eax
c0035879:	83 c1 10             	add    $0x10,%ecx
c003587c:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0035881:	83 3d 20 c5 03 c0 ff 	cmpl   $0xffffffff,0xc003c520
c0035888:	0f 44 c1             	cmove  %ecx,%eax
c003588b:	89 45 e0             	mov    %eax,-0x20(%ebp)
c003588e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035892:	8b 45 08             	mov    0x8(%ebp),%eax
c0035895:	89 04 24             	mov    %eax,(%esp)
c0035898:	e8 03 13 00 00       	call   c0036ba0 <_sbrk_r>
c003589d:	83 f8 ff             	cmp    $0xffffffff,%eax
c00358a0:	89 c1                	mov    %eax,%ecx
c00358a2:	0f 84 17 03 00 00    	je     c0035bbf <_malloc_r+0x5ff>
c00358a8:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
c00358ab:	0f 87 02 03 00 00    	ja     c0035bb3 <_malloc_r+0x5f3>
c00358b1:	8b 55 e0             	mov    -0x20(%ebp),%edx
c00358b4:	03 15 20 f0 06 c0    	add    0xc006f020,%edx
c00358ba:	39 4d e4             	cmp    %ecx,-0x1c(%ebp)
c00358bd:	89 15 20 f0 06 c0    	mov    %edx,0xc006f020
c00358c3:	0f 84 a9 03 00 00    	je     c0035c72 <_malloc_r+0x6b2>
c00358c9:	83 3d 20 c5 03 c0 ff 	cmpl   $0xffffffff,0xc003c520
c00358d0:	0f 84 ca 03 00 00    	je     c0035ca0 <_malloc_r+0x6e0>
c00358d6:	89 c8                	mov    %ecx,%eax
c00358d8:	2b 45 e4             	sub    -0x1c(%ebp),%eax
c00358db:	01 d0                	add    %edx,%eax
c00358dd:	a3 20 f0 06 c0       	mov    %eax,0xc006f020
c00358e2:	89 c8                	mov    %ecx,%eax
c00358e4:	ba 00 10 00 00       	mov    $0x1000,%edx
c00358e9:	83 e0 07             	and    $0x7,%eax
c00358ec:	74 0c                	je     c00358fa <_malloc_r+0x33a>
c00358ee:	29 c1                	sub    %eax,%ecx
c00358f0:	ba 08 10 00 00       	mov    $0x1008,%edx
c00358f5:	8d 49 08             	lea    0x8(%ecx),%ecx
c00358f8:	29 c2                	sub    %eax,%edx
c00358fa:	8b 45 e0             	mov    -0x20(%ebp),%eax
c00358fd:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0035900:	01 c8                	add    %ecx,%eax
c0035902:	25 ff 0f 00 00       	and    $0xfff,%eax
c0035907:	29 c2                	sub    %eax,%edx
c0035909:	8b 45 08             	mov    0x8(%ebp),%eax
c003590c:	89 54 24 04          	mov    %edx,0x4(%esp)
c0035910:	89 55 e0             	mov    %edx,-0x20(%ebp)
c0035913:	89 04 24             	mov    %eax,(%esp)
c0035916:	e8 85 12 00 00       	call   c0036ba0 <_sbrk_r>
c003591b:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c003591e:	83 f8 ff             	cmp    $0xffffffff,%eax
c0035921:	0f 84 6d 03 00 00    	je     c0035c94 <_malloc_r+0x6d4>
c0035927:	8b 55 e0             	mov    -0x20(%ebp),%edx
c003592a:	29 c8                	sub    %ecx,%eax
c003592c:	01 d0                	add    %edx,%eax
c003592e:	83 c8 01             	or     $0x1,%eax
c0035931:	03 15 20 f0 06 c0    	add    0xc006f020,%edx
c0035937:	81 fb 40 c5 03 c0    	cmp    $0xc003c540,%ebx
c003593d:	89 0d 48 c5 03 c0    	mov    %ecx,0xc003c548
c0035943:	89 41 04             	mov    %eax,0x4(%ecx)
c0035946:	89 15 20 f0 06 c0    	mov    %edx,0xc006f020
c003594c:	0f 84 f2 02 00 00    	je     c0035c44 <_malloc_r+0x684>
c0035952:	83 fe 0f             	cmp    $0xf,%esi
c0035955:	0f 86 8d 02 00 00    	jbe    c0035be8 <_malloc_r+0x628>
c003595b:	8b 43 04             	mov    0x4(%ebx),%eax
c003595e:	83 ee 0c             	sub    $0xc,%esi
c0035961:	83 e6 f8             	and    $0xfffffff8,%esi
c0035964:	83 e0 01             	and    $0x1,%eax
c0035967:	09 f0                	or     %esi,%eax
c0035969:	83 fe 0f             	cmp    $0xf,%esi
c003596c:	89 43 04             	mov    %eax,0x4(%ebx)
c003596f:	a1 48 c5 03 c0       	mov    0xc003c548,%eax
c0035974:	c7 44 33 04 05 00 00 	movl   $0x5,0x4(%ebx,%esi,1)
c003597b:	00 
c003597c:	c7 44 33 08 05 00 00 	movl   $0x5,0x8(%ebx,%esi,1)
c0035983:	00 
c0035984:	0f 87 a2 02 00 00    	ja     c0035c2c <_malloc_r+0x66c>
c003598a:	3b 15 4c f0 06 c0    	cmp    0xc006f04c,%edx
c0035990:	76 06                	jbe    c0035998 <_malloc_r+0x3d8>
c0035992:	89 15 4c f0 06 c0    	mov    %edx,0xc006f04c
c0035998:	3b 15 48 f0 06 c0    	cmp    0xc006f048,%edx
c003599e:	76 06                	jbe    c00359a6 <_malloc_r+0x3e6>
c00359a0:	89 15 48 f0 06 c0    	mov    %edx,0xc006f048
c00359a6:	8b 50 04             	mov    0x4(%eax),%edx
c00359a9:	89 c3                	mov    %eax,%ebx
c00359ab:	83 e2 fc             	and    $0xfffffffc,%edx
c00359ae:	89 d0                	mov    %edx,%eax
c00359b0:	29 f8                	sub    %edi,%eax
c00359b2:	39 d7                	cmp    %edx,%edi
c00359b4:	77 05                	ja     c00359bb <_malloc_r+0x3fb>
c00359b6:	83 f8 0f             	cmp    $0xf,%eax
c00359b9:	7f 15                	jg     c00359d0 <_malloc_r+0x410>
c00359bb:	8b 45 08             	mov    0x8(%ebp),%eax
c00359be:	89 04 24             	mov    %eax,(%esp)
c00359c1:	e8 ea 03 00 00       	call   c0035db0 <__malloc_unlock>
c00359c6:	31 c0                	xor    %eax,%eax
c00359c8:	e9 6a fc ff ff       	jmp    c0035637 <_malloc_r+0x77>
c00359cd:	8d 76 00             	lea    0x0(%esi),%esi
c00359d0:	89 fa                	mov    %edi,%edx
c00359d2:	83 c8 01             	or     $0x1,%eax
c00359d5:	83 ca 01             	or     $0x1,%edx
c00359d8:	89 53 04             	mov    %edx,0x4(%ebx)
c00359db:	8d 14 3b             	lea    (%ebx,%edi,1),%edx
c00359de:	89 15 48 c5 03 c0    	mov    %edx,0xc003c548
c00359e4:	89 42 04             	mov    %eax,0x4(%edx)
c00359e7:	8b 45 08             	mov    0x8(%ebp),%eax
c00359ea:	89 04 24             	mov    %eax,(%esp)
c00359ed:	e8 be 03 00 00       	call   c0035db0 <__malloc_unlock>
c00359f2:	83 c4 2c             	add    $0x2c,%esp
c00359f5:	8d 43 08             	lea    0x8(%ebx),%eax
c00359f8:	5b                   	pop    %ebx
c00359f9:	5e                   	pop    %esi
c00359fa:	5f                   	pop    %edi
c00359fb:	5d                   	pop    %ebp
c00359fc:	c3                   	ret    
c00359fd:	8d 76 00             	lea    0x0(%esi),%esi
c0035a00:	83 fe 14             	cmp    $0x14,%esi
c0035a03:	0f 86 8f 01 00 00    	jbe    c0035b98 <_malloc_r+0x5d8>
c0035a09:	83 fe 54             	cmp    $0x54,%esi
c0035a0c:	0f 87 be 01 00 00    	ja     c0035bd0 <_malloc_r+0x610>
c0035a12:	89 fe                	mov    %edi,%esi
c0035a14:	c1 ee 0c             	shr    $0xc,%esi
c0035a17:	83 c6 6e             	add    $0x6e,%esi
c0035a1a:	8d 04 36             	lea    (%esi,%esi,1),%eax
c0035a1d:	e9 5f fc ff ff       	jmp    c0035681 <_malloc_r+0xc1>
c0035a22:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035a28:	89 f1                	mov    %esi,%ecx
c0035a2a:	c1 e9 09             	shr    $0x9,%ecx
c0035a2d:	83 f9 04             	cmp    $0x4,%ecx
c0035a30:	0f 86 6d 01 00 00    	jbe    c0035ba3 <_malloc_r+0x5e3>
c0035a36:	83 f9 14             	cmp    $0x14,%ecx
c0035a39:	0f 87 0f 02 00 00    	ja     c0035c4e <_malloc_r+0x68e>
c0035a3f:	83 c1 5b             	add    $0x5b,%ecx
c0035a42:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c0035a45:	8d 04 85 40 c5 03 c0 	lea    -0x3ffc3ac0(,%eax,4),%eax
c0035a4c:	8b 50 08             	mov    0x8(%eax),%edx
c0035a4f:	39 c2                	cmp    %eax,%edx
c0035a51:	0f 84 a1 01 00 00    	je     c0035bf8 <_malloc_r+0x638>
c0035a57:	90                   	nop
c0035a58:	8b 4a 04             	mov    0x4(%edx),%ecx
c0035a5b:	83 e1 fc             	and    $0xfffffffc,%ecx
c0035a5e:	39 ce                	cmp    %ecx,%esi
c0035a60:	73 07                	jae    c0035a69 <_malloc_r+0x4a9>
c0035a62:	8b 52 08             	mov    0x8(%edx),%edx
c0035a65:	39 d0                	cmp    %edx,%eax
c0035a67:	75 ef                	jne    c0035a58 <_malloc_r+0x498>
c0035a69:	8b 4a 0c             	mov    0xc(%edx),%ecx
c0035a6c:	a1 44 c5 03 c0       	mov    0xc003c544,%eax
c0035a71:	89 4b 0c             	mov    %ecx,0xc(%ebx)
c0035a74:	89 53 08             	mov    %edx,0x8(%ebx)
c0035a77:	89 59 08             	mov    %ebx,0x8(%ecx)
c0035a7a:	89 5a 0c             	mov    %ebx,0xc(%edx)
c0035a7d:	e9 bb fc ff ff       	jmp    c003573d <_malloc_r+0x17d>
c0035a82:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035a88:	89 c1                	mov    %eax,%ecx
c0035a8a:	8d 14 3b             	lea    (%ebx,%edi,1),%edx
c0035a8d:	83 c9 01             	or     $0x1,%ecx
c0035a90:	83 cf 01             	or     $0x1,%edi
c0035a93:	89 7b 04             	mov    %edi,0x4(%ebx)
c0035a96:	89 15 54 c5 03 c0    	mov    %edx,0xc003c554
c0035a9c:	89 15 50 c5 03 c0    	mov    %edx,0xc003c550
c0035aa2:	c7 42 0c 48 c5 03 c0 	movl   $0xc003c548,0xc(%edx)
c0035aa9:	c7 42 08 48 c5 03 c0 	movl   $0xc003c548,0x8(%edx)
c0035ab0:	89 4a 04             	mov    %ecx,0x4(%edx)
c0035ab3:	89 04 02             	mov    %eax,(%edx,%eax,1)
c0035ab6:	8b 45 08             	mov    0x8(%ebp),%eax
c0035ab9:	89 04 24             	mov    %eax,(%esp)
c0035abc:	e8 ef 02 00 00       	call   c0035db0 <__malloc_unlock>
c0035ac1:	8d 43 08             	lea    0x8(%ebx),%eax
c0035ac4:	e9 6e fb ff ff       	jmp    c0035637 <_malloc_r+0x77>
c0035ac9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0035ad0:	89 75 dc             	mov    %esi,-0x24(%ebp)
c0035ad3:	e9 af fc ff ff       	jmp    c0035787 <_malloc_r+0x1c7>
c0035ad8:	83 45 e0 01          	addl   $0x1,-0x20(%ebp)
c0035adc:	83 c1 08             	add    $0x8,%ecx
c0035adf:	f6 45 e0 03          	testb  $0x3,-0x20(%ebp)
c0035ae3:	0f 85 ad fc ff ff    	jne    c0035796 <_malloc_r+0x1d6>
c0035ae9:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0035aec:	eb 12                	jmp    c0035b00 <_malloc_r+0x540>
c0035aee:	66 90                	xchg   %ax,%ax
c0035af0:	8d 56 f8             	lea    -0x8(%esi),%edx
c0035af3:	8b 36                	mov    (%esi),%esi
c0035af5:	83 e8 01             	sub    $0x1,%eax
c0035af8:	39 d6                	cmp    %edx,%esi
c0035afa:	0f 85 ea 01 00 00    	jne    c0035cea <_malloc_r+0x72a>
c0035b00:	a8 03                	test   $0x3,%al
c0035b02:	75 ec                	jne    c0035af0 <_malloc_r+0x530>
c0035b04:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0035b07:	f7 d0                	not    %eax
c0035b09:	23 05 44 c5 03 c0    	and    0xc003c544,%eax
c0035b0f:	a3 44 c5 03 c0       	mov    %eax,0xc003c544
c0035b14:	d1 65 dc             	shll   -0x24(%ebp)
c0035b17:	8b 55 dc             	mov    -0x24(%ebp),%edx
c0035b1a:	39 c2                	cmp    %eax,%edx
c0035b1c:	0f 87 26 fd ff ff    	ja     c0035848 <_malloc_r+0x288>
c0035b22:	85 d2                	test   %edx,%edx
c0035b24:	0f 84 1e fd ff ff    	je     c0035848 <_malloc_r+0x288>
c0035b2a:	85 c2                	test   %eax,%edx
c0035b2c:	0f 85 c2 01 00 00    	jne    c0035cf4 <_malloc_r+0x734>
c0035b32:	8b 75 e0             	mov    -0x20(%ebp),%esi
c0035b35:	89 f1                	mov    %esi,%ecx
c0035b37:	01 d2                	add    %edx,%edx
c0035b39:	83 c1 04             	add    $0x4,%ecx
c0035b3c:	85 d0                	test   %edx,%eax
c0035b3e:	74 f7                	je     c0035b37 <_malloc_r+0x577>
c0035b40:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0035b43:	89 55 dc             	mov    %edx,-0x24(%ebp)
c0035b46:	e9 3c fc ff ff       	jmp    c0035787 <_malloc_r+0x1c7>
c0035b4b:	90                   	nop
c0035b4c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035b50:	8d 43 08             	lea    0x8(%ebx),%eax
c0035b53:	8b 5b 14             	mov    0x14(%ebx),%ebx
c0035b56:	39 d8                	cmp    %ebx,%eax
c0035b58:	0f 85 b4 fa ff ff    	jne    c0035612 <_malloc_r+0x52>
c0035b5e:	8d 42 02             	lea    0x2(%edx),%eax
c0035b61:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0035b64:	e9 56 fb ff ff       	jmp    c00356bf <_malloc_r+0xff>
c0035b69:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0035b70:	83 4c 03 04 01       	orl    $0x1,0x4(%ebx,%eax,1)
c0035b75:	8b 53 08             	mov    0x8(%ebx),%edx
c0035b78:	8b 43 0c             	mov    0xc(%ebx),%eax
c0035b7b:	89 42 0c             	mov    %eax,0xc(%edx)
c0035b7e:	89 50 08             	mov    %edx,0x8(%eax)
c0035b81:	8b 45 08             	mov    0x8(%ebp),%eax
c0035b84:	89 04 24             	mov    %eax,(%esp)
c0035b87:	e8 24 02 00 00       	call   c0035db0 <__malloc_unlock>
c0035b8c:	8d 43 08             	lea    0x8(%ebx),%eax
c0035b8f:	e9 a3 fa ff ff       	jmp    c0035637 <_malloc_r+0x77>
c0035b94:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035b98:	83 c6 5b             	add    $0x5b,%esi
c0035b9b:	8d 04 36             	lea    (%esi,%esi,1),%eax
c0035b9e:	e9 de fa ff ff       	jmp    c0035681 <_malloc_r+0xc1>
c0035ba3:	89 f1                	mov    %esi,%ecx
c0035ba5:	c1 e9 06             	shr    $0x6,%ecx
c0035ba8:	83 c1 38             	add    $0x38,%ecx
c0035bab:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c0035bae:	e9 92 fe ff ff       	jmp    c0035a45 <_malloc_r+0x485>
c0035bb3:	81 fb 40 c5 03 c0    	cmp    $0xc003c540,%ebx
c0035bb9:	0f 84 f2 fc ff ff    	je     c00358b1 <_malloc_r+0x2f1>
c0035bbf:	8b 1d 48 c5 03 c0    	mov    0xc003c548,%ebx
c0035bc5:	8b 53 04             	mov    0x4(%ebx),%edx
c0035bc8:	83 e2 fc             	and    $0xfffffffc,%edx
c0035bcb:	e9 de fd ff ff       	jmp    c00359ae <_malloc_r+0x3ee>
c0035bd0:	81 fe 54 01 00 00    	cmp    $0x154,%esi
c0035bd6:	77 3c                	ja     c0035c14 <_malloc_r+0x654>
c0035bd8:	89 fe                	mov    %edi,%esi
c0035bda:	c1 ee 0f             	shr    $0xf,%esi
c0035bdd:	83 c6 77             	add    $0x77,%esi
c0035be0:	8d 04 36             	lea    (%esi,%esi,1),%eax
c0035be3:	e9 99 fa ff ff       	jmp    c0035681 <_malloc_r+0xc1>
c0035be8:	c7 41 04 01 00 00 00 	movl   $0x1,0x4(%ecx)
c0035bef:	89 cb                	mov    %ecx,%ebx
c0035bf1:	31 d2                	xor    %edx,%edx
c0035bf3:	e9 b6 fd ff ff       	jmp    c00359ae <_malloc_r+0x3ee>
c0035bf8:	c1 f9 02             	sar    $0x2,%ecx
c0035bfb:	b8 01 00 00 00       	mov    $0x1,%eax
c0035c00:	d3 e0                	shl    %cl,%eax
c0035c02:	89 d1                	mov    %edx,%ecx
c0035c04:	0b 05 44 c5 03 c0    	or     0xc003c544,%eax
c0035c0a:	a3 44 c5 03 c0       	mov    %eax,0xc003c544
c0035c0f:	e9 5d fe ff ff       	jmp    c0035a71 <_malloc_r+0x4b1>
c0035c14:	81 fe 54 05 00 00    	cmp    $0x554,%esi
c0035c1a:	77 47                	ja     c0035c63 <_malloc_r+0x6a3>
c0035c1c:	89 fe                	mov    %edi,%esi
c0035c1e:	c1 ee 12             	shr    $0x12,%esi
c0035c21:	83 c6 7c             	add    $0x7c,%esi
c0035c24:	8d 04 36             	lea    (%esi,%esi,1),%eax
c0035c27:	e9 55 fa ff ff       	jmp    c0035681 <_malloc_r+0xc1>
c0035c2c:	8b 45 08             	mov    0x8(%ebp),%eax
c0035c2f:	83 c3 08             	add    $0x8,%ebx
c0035c32:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c0035c36:	89 04 24             	mov    %eax,(%esp)
c0035c39:	e8 52 22 00 00       	call   c0037e90 <_free_r>
c0035c3e:	8b 15 20 f0 06 c0    	mov    0xc006f020,%edx
c0035c44:	a1 48 c5 03 c0       	mov    0xc003c548,%eax
c0035c49:	e9 3c fd ff ff       	jmp    c003598a <_malloc_r+0x3ca>
c0035c4e:	83 f9 54             	cmp    $0x54,%ecx
c0035c51:	77 58                	ja     c0035cab <_malloc_r+0x6eb>
c0035c53:	89 f1                	mov    %esi,%ecx
c0035c55:	c1 e9 0c             	shr    $0xc,%ecx
c0035c58:	83 c1 6e             	add    $0x6e,%ecx
c0035c5b:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c0035c5e:	e9 e2 fd ff ff       	jmp    c0035a45 <_malloc_r+0x485>
c0035c63:	b8 fc 00 00 00       	mov    $0xfc,%eax
c0035c68:	be 7e 00 00 00       	mov    $0x7e,%esi
c0035c6d:	e9 0f fa ff ff       	jmp    c0035681 <_malloc_r+0xc1>
c0035c72:	f7 45 e4 ff 0f 00 00 	testl  $0xfff,-0x1c(%ebp)
c0035c79:	0f 85 4a fc ff ff    	jne    c00358c9 <_malloc_r+0x309>
c0035c7f:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0035c82:	a1 48 c5 03 c0       	mov    0xc003c548,%eax
c0035c87:	01 f1                	add    %esi,%ecx
c0035c89:	83 c9 01             	or     $0x1,%ecx
c0035c8c:	89 48 04             	mov    %ecx,0x4(%eax)
c0035c8f:	e9 f6 fc ff ff       	jmp    c003598a <_malloc_r+0x3ca>
c0035c94:	b8 01 00 00 00       	mov    $0x1,%eax
c0035c99:	31 d2                	xor    %edx,%edx
c0035c9b:	e9 91 fc ff ff       	jmp    c0035931 <_malloc_r+0x371>
c0035ca0:	89 0d 20 c5 03 c0    	mov    %ecx,0xc003c520
c0035ca6:	e9 37 fc ff ff       	jmp    c00358e2 <_malloc_r+0x322>
c0035cab:	81 f9 54 01 00 00    	cmp    $0x154,%ecx
c0035cb1:	77 10                	ja     c0035cc3 <_malloc_r+0x703>
c0035cb3:	89 f1                	mov    %esi,%ecx
c0035cb5:	c1 e9 0f             	shr    $0xf,%ecx
c0035cb8:	83 c1 77             	add    $0x77,%ecx
c0035cbb:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c0035cbe:	e9 82 fd ff ff       	jmp    c0035a45 <_malloc_r+0x485>
c0035cc3:	81 f9 54 05 00 00    	cmp    $0x554,%ecx
c0035cc9:	77 10                	ja     c0035cdb <_malloc_r+0x71b>
c0035ccb:	89 f1                	mov    %esi,%ecx
c0035ccd:	c1 e9 12             	shr    $0x12,%ecx
c0035cd0:	83 c1 7c             	add    $0x7c,%ecx
c0035cd3:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c0035cd6:	e9 6a fd ff ff       	jmp    c0035a45 <_malloc_r+0x485>
c0035cdb:	b8 fc 00 00 00       	mov    $0xfc,%eax
c0035ce0:	b9 7e 00 00 00       	mov    $0x7e,%ecx
c0035ce5:	e9 5b fd ff ff       	jmp    c0035a45 <_malloc_r+0x485>
c0035cea:	a1 44 c5 03 c0       	mov    0xc003c544,%eax
c0035cef:	e9 20 fe ff ff       	jmp    c0035b14 <_malloc_r+0x554>
c0035cf4:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0035cf7:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0035cfa:	e9 88 fa ff ff       	jmp    c0035787 <_malloc_r+0x1c7>
c0035cff:	90                   	nop

c0035d00 <memchr>:
c0035d00:	55                   	push   %ebp
c0035d01:	89 e5                	mov    %esp,%ebp
c0035d03:	57                   	push   %edi
c0035d04:	0f b6 45 0c          	movzbl 0xc(%ebp),%eax
c0035d08:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0035d0b:	8b 7d 08             	mov    0x8(%ebp),%edi
c0035d0e:	31 d2                	xor    %edx,%edx
c0035d10:	85 c9                	test   %ecx,%ecx
c0035d12:	74 79                	je     c0035d8d <L20>
c0035d14:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0035d1a:	74 28                	je     c0035d44 <L5>
c0035d1c:	3a 07                	cmp    (%edi),%al
c0035d1e:	74 6a                	je     c0035d8a <L15>
c0035d20:	47                   	inc    %edi
c0035d21:	49                   	dec    %ecx
c0035d22:	74 69                	je     c0035d8d <L20>
c0035d24:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0035d2a:	74 18                	je     c0035d44 <L5>
c0035d2c:	3a 07                	cmp    (%edi),%al
c0035d2e:	74 5a                	je     c0035d8a <L15>
c0035d30:	47                   	inc    %edi
c0035d31:	49                   	dec    %ecx
c0035d32:	74 59                	je     c0035d8d <L20>
c0035d34:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0035d3a:	74 08                	je     c0035d44 <L5>
c0035d3c:	3a 07                	cmp    (%edi),%al
c0035d3e:	74 4a                	je     c0035d8a <L15>
c0035d40:	47                   	inc    %edi
c0035d41:	49                   	dec    %ecx
c0035d42:	74 49                	je     c0035d8d <L20>

c0035d44 <L5>:
c0035d44:	88 c4                	mov    %al,%ah
c0035d46:	89 c2                	mov    %eax,%edx
c0035d48:	c1 e2 10             	shl    $0x10,%edx
c0035d4b:	09 d0                	or     %edx,%eax
c0035d4d:	53                   	push   %ebx
c0035d4e:	66 90                	xchg   %ax,%ax

c0035d50 <L8>:
c0035d50:	83 e9 04             	sub    $0x4,%ecx
c0035d53:	72 1c                	jb     c0035d71 <L9>
c0035d55:	8b 17                	mov    (%edi),%edx
c0035d57:	83 c7 04             	add    $0x4,%edi
c0035d5a:	31 c2                	xor    %eax,%edx
c0035d5c:	8d 9a ff fe fe fe    	lea    -0x1010101(%edx),%ebx
c0035d62:	f7 d2                	not    %edx
c0035d64:	21 d3                	and    %edx,%ebx
c0035d66:	f7 c3 80 80 80 80    	test   $0x80808080,%ebx
c0035d6c:	74 e2                	je     c0035d50 <L8>
c0035d6e:	83 ef 04             	sub    $0x4,%edi

c0035d71 <L9>:
c0035d71:	5b                   	pop    %ebx
c0035d72:	31 d2                	xor    %edx,%edx
c0035d74:	83 c1 04             	add    $0x4,%ecx
c0035d77:	74 14                	je     c0035d8d <L20>
c0035d79:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0035d80 <L10>:
c0035d80:	3a 07                	cmp    (%edi),%al
c0035d82:	74 06                	je     c0035d8a <L15>
c0035d84:	47                   	inc    %edi
c0035d85:	49                   	dec    %ecx
c0035d86:	75 f8                	jne    c0035d80 <L10>
c0035d88:	31 ff                	xor    %edi,%edi

c0035d8a <L15>:
c0035d8a:	4a                   	dec    %edx
c0035d8b:	21 fa                	and    %edi,%edx

c0035d8d <L20>:
c0035d8d:	89 d0                	mov    %edx,%eax
c0035d8f:	8d 65 fc             	lea    -0x4(%ebp),%esp
c0035d92:	5f                   	pop    %edi
c0035d93:	c9                   	leave  
c0035d94:	c3                   	ret    
c0035d95:	66 90                	xchg   %ax,%ax
c0035d97:	66 90                	xchg   %ax,%ax
c0035d99:	66 90                	xchg   %ax,%ax
c0035d9b:	66 90                	xchg   %ax,%ax
c0035d9d:	66 90                	xchg   %ax,%ax
c0035d9f:	90                   	nop

c0035da0 <__malloc_lock>:
c0035da0:	55                   	push   %ebp
c0035da1:	89 e5                	mov    %esp,%ebp
c0035da3:	5d                   	pop    %ebp
c0035da4:	c3                   	ret    
c0035da5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035da9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0035db0 <__malloc_unlock>:
c0035db0:	55                   	push   %ebp
c0035db1:	89 e5                	mov    %esp,%ebp
c0035db3:	5d                   	pop    %ebp
c0035db4:	c3                   	ret    
c0035db5:	66 90                	xchg   %ax,%ax
c0035db7:	66 90                	xchg   %ax,%ax
c0035db9:	66 90                	xchg   %ax,%ax
c0035dbb:	66 90                	xchg   %ax,%ax
c0035dbd:	66 90                	xchg   %ax,%ax
c0035dbf:	90                   	nop

c0035dc0 <_Balloc>:
c0035dc0:	55                   	push   %ebp
c0035dc1:	89 e5                	mov    %esp,%ebp
c0035dc3:	57                   	push   %edi
c0035dc4:	56                   	push   %esi
c0035dc5:	53                   	push   %ebx
c0035dc6:	83 ec 1c             	sub    $0x1c,%esp
c0035dc9:	8b 75 08             	mov    0x8(%ebp),%esi
c0035dcc:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c0035dcf:	8b 46 4c             	mov    0x4c(%esi),%eax
c0035dd2:	85 c0                	test   %eax,%eax
c0035dd4:	74 2a                	je     c0035e00 <_Balloc+0x40>
c0035dd6:	8d 14 98             	lea    (%eax,%ebx,4),%edx
c0035dd9:	8b 02                	mov    (%edx),%eax
c0035ddb:	85 c0                	test   %eax,%eax
c0035ddd:	74 49                	je     c0035e28 <_Balloc+0x68>
c0035ddf:	8b 08                	mov    (%eax),%ecx
c0035de1:	89 0a                	mov    %ecx,(%edx)
c0035de3:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%eax)
c0035dea:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c0035df1:	83 c4 1c             	add    $0x1c,%esp
c0035df4:	5b                   	pop    %ebx
c0035df5:	5e                   	pop    %esi
c0035df6:	5f                   	pop    %edi
c0035df7:	5d                   	pop    %ebp
c0035df8:	c3                   	ret    
c0035df9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0035e00:	c7 44 24 08 21 00 00 	movl   $0x21,0x8(%esp)
c0035e07:	00 
c0035e08:	c7 44 24 04 04 00 00 	movl   $0x4,0x4(%esp)
c0035e0f:	00 
c0035e10:	89 34 24             	mov    %esi,(%esp)
c0035e13:	e8 c8 1e 00 00       	call   c0037ce0 <_calloc_r>
c0035e18:	85 c0                	test   %eax,%eax
c0035e1a:	89 46 4c             	mov    %eax,0x4c(%esi)
c0035e1d:	75 b7                	jne    c0035dd6 <_Balloc+0x16>
c0035e1f:	31 c0                	xor    %eax,%eax
c0035e21:	eb ce                	jmp    c0035df1 <_Balloc+0x31>
c0035e23:	90                   	nop
c0035e24:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035e28:	89 d9                	mov    %ebx,%ecx
c0035e2a:	bf 01 00 00 00       	mov    $0x1,%edi
c0035e2f:	d3 e7                	shl    %cl,%edi
c0035e31:	8d 04 bd 14 00 00 00 	lea    0x14(,%edi,4),%eax
c0035e38:	89 44 24 08          	mov    %eax,0x8(%esp)
c0035e3c:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0035e43:	00 
c0035e44:	89 34 24             	mov    %esi,(%esp)
c0035e47:	e8 94 1e 00 00       	call   c0037ce0 <_calloc_r>
c0035e4c:	85 c0                	test   %eax,%eax
c0035e4e:	74 cf                	je     c0035e1f <_Balloc+0x5f>
c0035e50:	89 58 04             	mov    %ebx,0x4(%eax)
c0035e53:	89 78 08             	mov    %edi,0x8(%eax)
c0035e56:	eb 8b                	jmp    c0035de3 <_Balloc+0x23>
c0035e58:	90                   	nop
c0035e59:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0035e60 <_Bfree>:
c0035e60:	55                   	push   %ebp
c0035e61:	89 e5                	mov    %esp,%ebp
c0035e63:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035e66:	85 c0                	test   %eax,%eax
c0035e68:	74 12                	je     c0035e7c <_Bfree+0x1c>
c0035e6a:	8b 55 08             	mov    0x8(%ebp),%edx
c0035e6d:	8b 48 04             	mov    0x4(%eax),%ecx
c0035e70:	8b 52 4c             	mov    0x4c(%edx),%edx
c0035e73:	8d 14 8a             	lea    (%edx,%ecx,4),%edx
c0035e76:	8b 0a                	mov    (%edx),%ecx
c0035e78:	89 08                	mov    %ecx,(%eax)
c0035e7a:	89 02                	mov    %eax,(%edx)
c0035e7c:	5d                   	pop    %ebp
c0035e7d:	c3                   	ret    
c0035e7e:	66 90                	xchg   %ax,%ax

c0035e80 <__multadd>:
c0035e80:	55                   	push   %ebp
c0035e81:	89 e5                	mov    %esp,%ebp
c0035e83:	57                   	push   %edi
c0035e84:	56                   	push   %esi
c0035e85:	53                   	push   %ebx
c0035e86:	83 ec 2c             	sub    $0x2c,%esp
c0035e89:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035e8c:	8b 5d 14             	mov    0x14(%ebp),%ebx
c0035e8f:	8b 40 10             	mov    0x10(%eax),%eax
c0035e92:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0035e95:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035e98:	8d 78 14             	lea    0x14(%eax),%edi
c0035e9b:	31 c0                	xor    %eax,%eax
c0035e9d:	8d 76 00             	lea    0x0(%esi),%esi
c0035ea0:	8b 0c 87             	mov    (%edi,%eax,4),%ecx
c0035ea3:	0f b7 d1             	movzwl %cx,%edx
c0035ea6:	0f af 55 10          	imul   0x10(%ebp),%edx
c0035eaa:	c1 e9 10             	shr    $0x10,%ecx
c0035ead:	0f af 4d 10          	imul   0x10(%ebp),%ecx
c0035eb1:	01 da                	add    %ebx,%edx
c0035eb3:	89 d3                	mov    %edx,%ebx
c0035eb5:	0f b7 d2             	movzwl %dx,%edx
c0035eb8:	c1 eb 10             	shr    $0x10,%ebx
c0035ebb:	01 d9                	add    %ebx,%ecx
c0035ebd:	89 ce                	mov    %ecx,%esi
c0035ebf:	c1 e1 10             	shl    $0x10,%ecx
c0035ec2:	01 d1                	add    %edx,%ecx
c0035ec4:	c1 ee 10             	shr    $0x10,%esi
c0035ec7:	89 0c 87             	mov    %ecx,(%edi,%eax,4)
c0035eca:	83 c0 01             	add    $0x1,%eax
c0035ecd:	89 f3                	mov    %esi,%ebx
c0035ecf:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
c0035ed2:	7f cc                	jg     c0035ea0 <__multadd+0x20>
c0035ed4:	85 f6                	test   %esi,%esi
c0035ed6:	74 1b                	je     c0035ef3 <__multadd+0x73>
c0035ed8:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035edb:	8b 7d e4             	mov    -0x1c(%ebp),%edi
c0035ede:	3b 78 08             	cmp    0x8(%eax),%edi
c0035ee1:	7d 1d                	jge    c0035f00 <__multadd+0x80>
c0035ee3:	8b 7d 0c             	mov    0xc(%ebp),%edi
c0035ee6:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0035ee9:	89 74 87 14          	mov    %esi,0x14(%edi,%eax,4)
c0035eed:	83 c0 01             	add    $0x1,%eax
c0035ef0:	89 47 10             	mov    %eax,0x10(%edi)
c0035ef3:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035ef6:	83 c4 2c             	add    $0x2c,%esp
c0035ef9:	5b                   	pop    %ebx
c0035efa:	5e                   	pop    %esi
c0035efb:	5f                   	pop    %edi
c0035efc:	5d                   	pop    %ebp
c0035efd:	c3                   	ret    
c0035efe:	66 90                	xchg   %ax,%ax
c0035f00:	8b 40 04             	mov    0x4(%eax),%eax
c0035f03:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0035f06:	83 c0 01             	add    $0x1,%eax
c0035f09:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035f0d:	8b 45 08             	mov    0x8(%ebp),%eax
c0035f10:	89 04 24             	mov    %eax,(%esp)
c0035f13:	e8 a8 fe ff ff       	call   c0035dc0 <_Balloc>
c0035f18:	89 c3                	mov    %eax,%ebx
c0035f1a:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035f1d:	8b 40 10             	mov    0x10(%eax),%eax
c0035f20:	8d 04 85 08 00 00 00 	lea    0x8(,%eax,4),%eax
c0035f27:	89 44 24 08          	mov    %eax,0x8(%esp)
c0035f2b:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035f2e:	83 c0 0c             	add    $0xc,%eax
c0035f31:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035f35:	8d 43 0c             	lea    0xc(%ebx),%eax
c0035f38:	89 04 24             	mov    %eax,(%esp)
c0035f3b:	e8 54 c0 ff ff       	call   c0031f94 <memcpy>
c0035f40:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035f43:	8b 7d 0c             	mov    0xc(%ebp),%edi
c0035f46:	89 5d 0c             	mov    %ebx,0xc(%ebp)
c0035f49:	8b 50 04             	mov    0x4(%eax),%edx
c0035f4c:	8b 45 08             	mov    0x8(%ebp),%eax
c0035f4f:	8b 40 4c             	mov    0x4c(%eax),%eax
c0035f52:	8d 04 90             	lea    (%eax,%edx,4),%eax
c0035f55:	8b 10                	mov    (%eax),%edx
c0035f57:	89 17                	mov    %edx,(%edi)
c0035f59:	89 38                	mov    %edi,(%eax)
c0035f5b:	eb 86                	jmp    c0035ee3 <__multadd+0x63>
c0035f5d:	8d 76 00             	lea    0x0(%esi),%esi

c0035f60 <__s2b>:
c0035f60:	55                   	push   %ebp
c0035f61:	ba 39 8e e3 38       	mov    $0x38e38e39,%edx
c0035f66:	89 e5                	mov    %esp,%ebp
c0035f68:	57                   	push   %edi
c0035f69:	56                   	push   %esi
c0035f6a:	53                   	push   %ebx
c0035f6b:	83 ec 2c             	sub    $0x2c,%esp
c0035f6e:	8b 45 14             	mov    0x14(%ebp),%eax
c0035f71:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0035f74:	8b 75 0c             	mov    0xc(%ebp),%esi
c0035f77:	8d 48 08             	lea    0x8(%eax),%ecx
c0035f7a:	89 c8                	mov    %ecx,%eax
c0035f7c:	f7 ea                	imul   %edx
c0035f7e:	c1 f9 1f             	sar    $0x1f,%ecx
c0035f81:	d1 fa                	sar    %edx
c0035f83:	29 ca                	sub    %ecx,%edx
c0035f85:	83 fa 01             	cmp    $0x1,%edx
c0035f88:	0f 8e be 00 00 00    	jle    c003604c <__s2b+0xec>
c0035f8e:	b8 01 00 00 00       	mov    $0x1,%eax
c0035f93:	31 c9                	xor    %ecx,%ecx
c0035f95:	8d 76 00             	lea    0x0(%esi),%esi
c0035f98:	01 c0                	add    %eax,%eax
c0035f9a:	83 c1 01             	add    $0x1,%ecx
c0035f9d:	39 c2                	cmp    %eax,%edx
c0035f9f:	7f f7                	jg     c0035f98 <__s2b+0x38>
c0035fa1:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c0035fa5:	89 1c 24             	mov    %ebx,(%esp)
c0035fa8:	e8 13 fe ff ff       	call   c0035dc0 <_Balloc>
c0035fad:	8b 55 18             	mov    0x18(%ebp),%edx
c0035fb0:	83 7d 10 09          	cmpl   $0x9,0x10(%ebp)
c0035fb4:	89 50 14             	mov    %edx,0x14(%eax)
c0035fb7:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c0035fbe:	0f 8e 7c 00 00 00    	jle    c0036040 <__s2b+0xe0>
c0035fc4:	8d 4e 09             	lea    0x9(%esi),%ecx
c0035fc7:	03 75 10             	add    0x10(%ebp),%esi
c0035fca:	89 cf                	mov    %ecx,%edi
c0035fcc:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0035fcf:	90                   	nop
c0035fd0:	83 c7 01             	add    $0x1,%edi
c0035fd3:	0f be 57 ff          	movsbl -0x1(%edi),%edx
c0035fd7:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0035fde:	00 
c0035fdf:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035fe3:	89 1c 24             	mov    %ebx,(%esp)
c0035fe6:	83 ea 30             	sub    $0x30,%edx
c0035fe9:	89 54 24 0c          	mov    %edx,0xc(%esp)
c0035fed:	e8 8e fe ff ff       	call   c0035e80 <__multadd>
c0035ff2:	39 f7                	cmp    %esi,%edi
c0035ff4:	75 da                	jne    c0035fd0 <__s2b+0x70>
c0035ff6:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0035ff9:	8b 7d 10             	mov    0x10(%ebp),%edi
c0035ffc:	8d 74 39 f8          	lea    -0x8(%ecx,%edi,1),%esi
c0036000:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0036003:	39 4d 14             	cmp    %ecx,0x14(%ebp)
c0036006:	7e 2e                	jle    c0036036 <__s2b+0xd6>
c0036008:	8b 7d 14             	mov    0x14(%ebp),%edi
c003600b:	29 cf                	sub    %ecx,%edi
c003600d:	01 f7                	add    %esi,%edi
c003600f:	90                   	nop
c0036010:	83 c6 01             	add    $0x1,%esi
c0036013:	0f be 56 ff          	movsbl -0x1(%esi),%edx
c0036017:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c003601e:	00 
c003601f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036023:	89 1c 24             	mov    %ebx,(%esp)
c0036026:	83 ea 30             	sub    $0x30,%edx
c0036029:	89 54 24 0c          	mov    %edx,0xc(%esp)
c003602d:	e8 4e fe ff ff       	call   c0035e80 <__multadd>
c0036032:	39 fe                	cmp    %edi,%esi
c0036034:	75 da                	jne    c0036010 <__s2b+0xb0>
c0036036:	83 c4 2c             	add    $0x2c,%esp
c0036039:	5b                   	pop    %ebx
c003603a:	5e                   	pop    %esi
c003603b:	5f                   	pop    %edi
c003603c:	5d                   	pop    %ebp
c003603d:	c3                   	ret    
c003603e:	66 90                	xchg   %ax,%ax
c0036040:	83 c6 0a             	add    $0xa,%esi
c0036043:	c7 45 10 09 00 00 00 	movl   $0x9,0x10(%ebp)
c003604a:	eb b4                	jmp    c0036000 <__s2b+0xa0>
c003604c:	31 c9                	xor    %ecx,%ecx
c003604e:	e9 4e ff ff ff       	jmp    c0035fa1 <__s2b+0x41>
c0036053:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036059:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0036060 <__hi0bits>:
c0036060:	55                   	push   %ebp
c0036061:	31 c9                	xor    %ecx,%ecx
c0036063:	89 e5                	mov    %esp,%ebp
c0036065:	8b 55 08             	mov    0x8(%ebp),%edx
c0036068:	f7 c2 00 00 ff ff    	test   $0xffff0000,%edx
c003606e:	75 05                	jne    c0036075 <__hi0bits+0x15>
c0036070:	c1 e2 10             	shl    $0x10,%edx
c0036073:	b1 10                	mov    $0x10,%cl
c0036075:	f7 c2 00 00 00 ff    	test   $0xff000000,%edx
c003607b:	75 06                	jne    c0036083 <__hi0bits+0x23>
c003607d:	83 c1 08             	add    $0x8,%ecx
c0036080:	c1 e2 08             	shl    $0x8,%edx
c0036083:	f7 c2 00 00 00 f0    	test   $0xf0000000,%edx
c0036089:	75 06                	jne    c0036091 <__hi0bits+0x31>
c003608b:	83 c1 04             	add    $0x4,%ecx
c003608e:	c1 e2 04             	shl    $0x4,%edx
c0036091:	f7 c2 00 00 00 c0    	test   $0xc0000000,%edx
c0036097:	75 06                	jne    c003609f <__hi0bits+0x3f>
c0036099:	83 c1 02             	add    $0x2,%ecx
c003609c:	c1 e2 02             	shl    $0x2,%edx
c003609f:	85 d2                	test   %edx,%edx
c00360a1:	89 c8                	mov    %ecx,%eax
c00360a3:	78 0d                	js     c00360b2 <__hi0bits+0x52>
c00360a5:	81 e2 00 00 00 40    	and    $0x40000000,%edx
c00360ab:	b8 20 00 00 00       	mov    $0x20,%eax
c00360b0:	75 06                	jne    c00360b8 <__hi0bits+0x58>
c00360b2:	5d                   	pop    %ebp
c00360b3:	c3                   	ret    
c00360b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00360b8:	8d 41 01             	lea    0x1(%ecx),%eax
c00360bb:	5d                   	pop    %ebp
c00360bc:	c3                   	ret    
c00360bd:	8d 76 00             	lea    0x0(%esi),%esi

c00360c0 <__lo0bits>:
c00360c0:	55                   	push   %ebp
c00360c1:	89 e5                	mov    %esp,%ebp
c00360c3:	53                   	push   %ebx
c00360c4:	8b 5d 08             	mov    0x8(%ebp),%ebx
c00360c7:	8b 13                	mov    (%ebx),%edx
c00360c9:	f6 c2 07             	test   $0x7,%dl
c00360cc:	74 1a                	je     c00360e8 <__lo0bits+0x28>
c00360ce:	31 c0                	xor    %eax,%eax
c00360d0:	f6 c2 01             	test   $0x1,%dl
c00360d3:	75 0f                	jne    c00360e4 <__lo0bits+0x24>
c00360d5:	f6 c2 02             	test   $0x2,%dl
c00360d8:	75 56                	jne    c0036130 <__lo0bits+0x70>
c00360da:	c1 ea 02             	shr    $0x2,%edx
c00360dd:	b8 02 00 00 00       	mov    $0x2,%eax
c00360e2:	89 13                	mov    %edx,(%ebx)
c00360e4:	5b                   	pop    %ebx
c00360e5:	5d                   	pop    %ebp
c00360e6:	c3                   	ret    
c00360e7:	90                   	nop
c00360e8:	31 c9                	xor    %ecx,%ecx
c00360ea:	66 85 d2             	test   %dx,%dx
c00360ed:	75 05                	jne    c00360f4 <__lo0bits+0x34>
c00360ef:	c1 ea 10             	shr    $0x10,%edx
c00360f2:	b1 10                	mov    $0x10,%cl
c00360f4:	84 d2                	test   %dl,%dl
c00360f6:	75 06                	jne    c00360fe <__lo0bits+0x3e>
c00360f8:	83 c1 08             	add    $0x8,%ecx
c00360fb:	c1 ea 08             	shr    $0x8,%edx
c00360fe:	f6 c2 0f             	test   $0xf,%dl
c0036101:	75 06                	jne    c0036109 <__lo0bits+0x49>
c0036103:	83 c1 04             	add    $0x4,%ecx
c0036106:	c1 ea 04             	shr    $0x4,%edx
c0036109:	f6 c2 03             	test   $0x3,%dl
c003610c:	75 06                	jne    c0036114 <__lo0bits+0x54>
c003610e:	83 c1 02             	add    $0x2,%ecx
c0036111:	c1 ea 02             	shr    $0x2,%edx
c0036114:	f6 c2 01             	test   $0x1,%dl
c0036117:	75 0c                	jne    c0036125 <__lo0bits+0x65>
c0036119:	d1 ea                	shr    %edx
c003611b:	b8 20 00 00 00       	mov    $0x20,%eax
c0036120:	74 c2                	je     c00360e4 <__lo0bits+0x24>
c0036122:	83 c1 01             	add    $0x1,%ecx
c0036125:	89 13                	mov    %edx,(%ebx)
c0036127:	89 c8                	mov    %ecx,%eax
c0036129:	5b                   	pop    %ebx
c003612a:	5d                   	pop    %ebp
c003612b:	c3                   	ret    
c003612c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036130:	d1 ea                	shr    %edx
c0036132:	b0 01                	mov    $0x1,%al
c0036134:	89 13                	mov    %edx,(%ebx)
c0036136:	5b                   	pop    %ebx
c0036137:	5d                   	pop    %ebp
c0036138:	c3                   	ret    
c0036139:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0036140 <__i2b>:
c0036140:	55                   	push   %ebp
c0036141:	89 e5                	mov    %esp,%ebp
c0036143:	83 ec 18             	sub    $0x18,%esp
c0036146:	8b 45 08             	mov    0x8(%ebp),%eax
c0036149:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0036150:	00 
c0036151:	89 04 24             	mov    %eax,(%esp)
c0036154:	e8 67 fc ff ff       	call   c0035dc0 <_Balloc>
c0036159:	8b 55 0c             	mov    0xc(%ebp),%edx
c003615c:	89 50 14             	mov    %edx,0x14(%eax)
c003615f:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c0036166:	c9                   	leave  
c0036167:	c3                   	ret    
c0036168:	90                   	nop
c0036169:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0036170 <__multiply>:
c0036170:	55                   	push   %ebp
c0036171:	89 e5                	mov    %esp,%ebp
c0036173:	57                   	push   %edi
c0036174:	56                   	push   %esi
c0036175:	53                   	push   %ebx
c0036176:	83 ec 3c             	sub    $0x3c,%esp
c0036179:	8b 75 0c             	mov    0xc(%ebp),%esi
c003617c:	8b 45 10             	mov    0x10(%ebp),%eax
c003617f:	8b 7e 10             	mov    0x10(%esi),%edi
c0036182:	8b 58 10             	mov    0x10(%eax),%ebx
c0036185:	39 df                	cmp    %ebx,%edi
c0036187:	7d 0e                	jge    c0036197 <__multiply+0x27>
c0036189:	89 f8                	mov    %edi,%eax
c003618b:	89 df                	mov    %ebx,%edi
c003618d:	89 c3                	mov    %eax,%ebx
c003618f:	89 f0                	mov    %esi,%eax
c0036191:	8b 75 10             	mov    0x10(%ebp),%esi
c0036194:	89 45 10             	mov    %eax,0x10(%ebp)
c0036197:	8d 04 1f             	lea    (%edi,%ebx,1),%eax
c003619a:	3b 46 08             	cmp    0x8(%esi),%eax
c003619d:	89 45 c8             	mov    %eax,-0x38(%ebp)
c00361a0:	0f 9f c0             	setg   %al
c00361a3:	0f b6 c0             	movzbl %al,%eax
c00361a6:	03 46 04             	add    0x4(%esi),%eax
c00361a9:	89 44 24 04          	mov    %eax,0x4(%esp)
c00361ad:	8b 45 08             	mov    0x8(%ebp),%eax
c00361b0:	89 04 24             	mov    %eax,(%esp)
c00361b3:	e8 08 fc ff ff       	call   c0035dc0 <_Balloc>
c00361b8:	8b 55 c8             	mov    -0x38(%ebp),%edx
c00361bb:	89 45 c0             	mov    %eax,-0x40(%ebp)
c00361be:	8d 40 14             	lea    0x14(%eax),%eax
c00361c1:	8d 14 90             	lea    (%eax,%edx,4),%edx
c00361c4:	89 d1                	mov    %edx,%ecx
c00361c6:	39 c8                	cmp    %ecx,%eax
c00361c8:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c00361cb:	89 55 c4             	mov    %edx,-0x3c(%ebp)
c00361ce:	73 15                	jae    c00361e5 <__multiply+0x75>
c00361d0:	8b 55 c4             	mov    -0x3c(%ebp),%edx
c00361d3:	90                   	nop
c00361d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00361d8:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c00361de:	83 c0 04             	add    $0x4,%eax
c00361e1:	39 c2                	cmp    %eax,%edx
c00361e3:	77 f3                	ja     c00361d8 <__multiply+0x68>
c00361e5:	8d 46 14             	lea    0x14(%esi),%eax
c00361e8:	89 45 d0             	mov    %eax,-0x30(%ebp)
c00361eb:	8d 04 b8             	lea    (%eax,%edi,4),%eax
c00361ee:	89 45 dc             	mov    %eax,-0x24(%ebp)
c00361f1:	8b 45 10             	mov    0x10(%ebp),%eax
c00361f4:	83 c0 14             	add    $0x14,%eax
c00361f7:	8d 3c 98             	lea    (%eax,%ebx,4),%edi
c00361fa:	39 f8                	cmp    %edi,%eax
c00361fc:	89 45 d8             	mov    %eax,-0x28(%ebp)
c00361ff:	89 7d cc             	mov    %edi,-0x34(%ebp)
c0036202:	0f 83 e8 00 00 00    	jae    c00362f0 <__multiply+0x180>
c0036208:	8b 45 d8             	mov    -0x28(%ebp),%eax
c003620b:	8b 00                	mov    (%eax),%eax
c003620d:	0f b7 f8             	movzwl %ax,%edi
c0036210:	85 ff                	test   %edi,%edi
c0036212:	89 7d e4             	mov    %edi,-0x1c(%ebp)
c0036215:	74 5a                	je     c0036271 <__multiply+0x101>
c0036217:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c003621a:	31 db                	xor    %ebx,%ebx
c003621c:	8b 75 d0             	mov    -0x30(%ebp),%esi
c003621f:	eb 09                	jmp    c003622a <__multiply+0xba>
c0036221:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036228:	89 fa                	mov    %edi,%edx
c003622a:	8b 0e                	mov    (%esi),%ecx
c003622c:	83 c6 04             	add    $0x4,%esi
c003622f:	0f b7 3a             	movzwl (%edx),%edi
c0036232:	0f b7 c1             	movzwl %cx,%eax
c0036235:	0f af 45 e4          	imul   -0x1c(%ebp),%eax
c0036239:	c1 e9 10             	shr    $0x10,%ecx
c003623c:	0f af 4d e4          	imul   -0x1c(%ebp),%ecx
c0036240:	01 f8                	add    %edi,%eax
c0036242:	01 d8                	add    %ebx,%eax
c0036244:	8b 1a                	mov    (%edx),%ebx
c0036246:	8d 7a 04             	lea    0x4(%edx),%edi
c0036249:	c1 eb 10             	shr    $0x10,%ebx
c003624c:	01 d9                	add    %ebx,%ecx
c003624e:	89 c3                	mov    %eax,%ebx
c0036250:	c1 eb 10             	shr    $0x10,%ebx
c0036253:	0f b7 c0             	movzwl %ax,%eax
c0036256:	01 d9                	add    %ebx,%ecx
c0036258:	89 cb                	mov    %ecx,%ebx
c003625a:	c1 e1 10             	shl    $0x10,%ecx
c003625d:	09 c1                	or     %eax,%ecx
c003625f:	c1 eb 10             	shr    $0x10,%ebx
c0036262:	39 75 dc             	cmp    %esi,-0x24(%ebp)
c0036265:	89 0a                	mov    %ecx,(%edx)
c0036267:	77 bf                	ja     c0036228 <__multiply+0xb8>
c0036269:	8b 45 d8             	mov    -0x28(%ebp),%eax
c003626c:	89 5a 04             	mov    %ebx,0x4(%edx)
c003626f:	8b 00                	mov    (%eax),%eax
c0036271:	c1 e8 10             	shr    $0x10,%eax
c0036274:	85 c0                	test   %eax,%eax
c0036276:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0036279:	74 61                	je     c00362dc <__multiply+0x16c>
c003627b:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c003627e:	31 ff                	xor    %edi,%edi
c0036280:	89 fe                	mov    %edi,%esi
c0036282:	8b 10                	mov    (%eax),%edx
c0036284:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0036287:	8b 45 d0             	mov    -0x30(%ebp),%eax
c003628a:	89 d3                	mov    %edx,%ebx
c003628c:	eb 05                	jmp    c0036293 <__multiply+0x123>
c003628e:	66 90                	xchg   %ax,%ax
c0036290:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0036293:	0f b7 08             	movzwl (%eax),%ecx
c0036296:	c1 eb 10             	shr    $0x10,%ebx
c0036299:	0f b7 d2             	movzwl %dx,%edx
c003629c:	0f af 4d e4          	imul   -0x1c(%ebp),%ecx
c00362a0:	83 c0 04             	add    $0x4,%eax
c00362a3:	8d 3c 19             	lea    (%ecx,%ebx,1),%edi
c00362a6:	01 f7                	add    %esi,%edi
c00362a8:	8b 75 e0             	mov    -0x20(%ebp),%esi
c00362ab:	89 fb                	mov    %edi,%ebx
c00362ad:	c1 e3 10             	shl    $0x10,%ebx
c00362b0:	09 d3                	or     %edx,%ebx
c00362b2:	89 1e                	mov    %ebx,(%esi)
c00362b4:	8b 5e 04             	mov    0x4(%esi),%ebx
c00362b7:	8d 4e 04             	lea    0x4(%esi),%ecx
c00362ba:	0f b7 50 fe          	movzwl -0x2(%eax),%edx
c00362be:	c1 ef 10             	shr    $0x10,%edi
c00362c1:	0f af 55 e4          	imul   -0x1c(%ebp),%edx
c00362c5:	0f b7 f3             	movzwl %bx,%esi
c00362c8:	01 f2                	add    %esi,%edx
c00362ca:	01 fa                	add    %edi,%edx
c00362cc:	89 d6                	mov    %edx,%esi
c00362ce:	c1 ee 10             	shr    $0x10,%esi
c00362d1:	39 45 dc             	cmp    %eax,-0x24(%ebp)
c00362d4:	77 ba                	ja     c0036290 <__multiply+0x120>
c00362d6:	8b 45 e0             	mov    -0x20(%ebp),%eax
c00362d9:	89 50 04             	mov    %edx,0x4(%eax)
c00362dc:	83 45 d8 04          	addl   $0x4,-0x28(%ebp)
c00362e0:	8b 45 d8             	mov    -0x28(%ebp),%eax
c00362e3:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
c00362e7:	39 45 cc             	cmp    %eax,-0x34(%ebp)
c00362ea:	0f 87 18 ff ff ff    	ja     c0036208 <__multiply+0x98>
c00362f0:	8b 75 c8             	mov    -0x38(%ebp),%esi
c00362f3:	85 f6                	test   %esi,%esi
c00362f5:	7e 29                	jle    c0036320 <__multiply+0x1b0>
c00362f7:	8b 7d c4             	mov    -0x3c(%ebp),%edi
c00362fa:	8b 5f fc             	mov    -0x4(%edi),%ebx
c00362fd:	85 db                	test   %ebx,%ebx
c00362ff:	75 1f                	jne    c0036320 <__multiply+0x1b0>
c0036301:	8b 55 c8             	mov    -0x38(%ebp),%edx
c0036304:	89 d0                	mov    %edx,%eax
c0036306:	c1 e0 02             	shl    $0x2,%eax
c0036309:	29 c7                	sub    %eax,%edi
c003630b:	89 f8                	mov    %edi,%eax
c003630d:	eb 09                	jmp    c0036318 <__multiply+0x1a8>
c003630f:	90                   	nop
c0036310:	8b 4c 90 fc          	mov    -0x4(%eax,%edx,4),%ecx
c0036314:	85 c9                	test   %ecx,%ecx
c0036316:	75 05                	jne    c003631d <__multiply+0x1ad>
c0036318:	83 ea 01             	sub    $0x1,%edx
c003631b:	75 f3                	jne    c0036310 <__multiply+0x1a0>
c003631d:	89 55 c8             	mov    %edx,-0x38(%ebp)
c0036320:	8b 45 c0             	mov    -0x40(%ebp),%eax
c0036323:	8b 7d c8             	mov    -0x38(%ebp),%edi
c0036326:	89 78 10             	mov    %edi,0x10(%eax)
c0036329:	83 c4 3c             	add    $0x3c,%esp
c003632c:	5b                   	pop    %ebx
c003632d:	5e                   	pop    %esi
c003632e:	5f                   	pop    %edi
c003632f:	5d                   	pop    %ebp
c0036330:	c3                   	ret    
c0036331:	eb 0d                	jmp    c0036340 <__pow5mult>
c0036333:	90                   	nop
c0036334:	90                   	nop
c0036335:	90                   	nop
c0036336:	90                   	nop
c0036337:	90                   	nop
c0036338:	90                   	nop
c0036339:	90                   	nop
c003633a:	90                   	nop
c003633b:	90                   	nop
c003633c:	90                   	nop
c003633d:	90                   	nop
c003633e:	90                   	nop
c003633f:	90                   	nop

c0036340 <__pow5mult>:
c0036340:	55                   	push   %ebp
c0036341:	89 e5                	mov    %esp,%ebp
c0036343:	57                   	push   %edi
c0036344:	56                   	push   %esi
c0036345:	53                   	push   %ebx
c0036346:	83 ec 2c             	sub    $0x2c,%esp
c0036349:	8b 5d 10             	mov    0x10(%ebp),%ebx
c003634c:	8b 4d 08             	mov    0x8(%ebp),%ecx
c003634f:	8b 7d 0c             	mov    0xc(%ebp),%edi
c0036352:	89 d8                	mov    %ebx,%eax
c0036354:	83 e0 03             	and    $0x3,%eax
c0036357:	0f 85 a3 00 00 00    	jne    c0036400 <__pow5mult+0xc0>
c003635d:	c1 fb 02             	sar    $0x2,%ebx
c0036360:	85 db                	test   %ebx,%ebx
c0036362:	74 5c                	je     c00363c0 <__pow5mult+0x80>
c0036364:	8b 71 48             	mov    0x48(%ecx),%esi
c0036367:	85 f6                	test   %esi,%esi
c0036369:	0f 84 bd 00 00 00    	je     c003642c <__pow5mult+0xec>
c003636f:	f6 c3 01             	test   $0x1,%bl
c0036372:	75 15                	jne    c0036389 <__pow5mult+0x49>
c0036374:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036378:	d1 fb                	sar    %ebx
c003637a:	74 44                	je     c00363c0 <__pow5mult+0x80>
c003637c:	8b 06                	mov    (%esi),%eax
c003637e:	85 c0                	test   %eax,%eax
c0036380:	74 4e                	je     c00363d0 <__pow5mult+0x90>
c0036382:	89 c6                	mov    %eax,%esi
c0036384:	f6 c3 01             	test   $0x1,%bl
c0036387:	74 ef                	je     c0036378 <__pow5mult+0x38>
c0036389:	89 0c 24             	mov    %ecx,(%esp)
c003638c:	89 74 24 08          	mov    %esi,0x8(%esp)
c0036390:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0036394:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0036397:	e8 d4 fd ff ff       	call   c0036170 <__multiply>
c003639c:	85 ff                	test   %edi,%edi
c003639e:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c00363a1:	89 45 e0             	mov    %eax,-0x20(%ebp)
c00363a4:	74 52                	je     c00363f8 <__pow5mult+0xb8>
c00363a6:	8b 57 04             	mov    0x4(%edi),%edx
c00363a9:	d1 fb                	sar    %ebx
c00363ab:	8b 41 4c             	mov    0x4c(%ecx),%eax
c00363ae:	8d 04 90             	lea    (%eax,%edx,4),%eax
c00363b1:	8b 10                	mov    (%eax),%edx
c00363b3:	89 17                	mov    %edx,(%edi)
c00363b5:	89 38                	mov    %edi,(%eax)
c00363b7:	8b 7d e0             	mov    -0x20(%ebp),%edi
c00363ba:	75 c0                	jne    c003637c <__pow5mult+0x3c>
c00363bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00363c0:	83 c4 2c             	add    $0x2c,%esp
c00363c3:	89 f8                	mov    %edi,%eax
c00363c5:	5b                   	pop    %ebx
c00363c6:	5e                   	pop    %esi
c00363c7:	5f                   	pop    %edi
c00363c8:	5d                   	pop    %ebp
c00363c9:	c3                   	ret    
c00363ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00363d0:	89 74 24 08          	mov    %esi,0x8(%esp)
c00363d4:	89 74 24 04          	mov    %esi,0x4(%esp)
c00363d8:	89 0c 24             	mov    %ecx,(%esp)
c00363db:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c00363de:	e8 8d fd ff ff       	call   c0036170 <__multiply>
c00363e3:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c00363e6:	89 06                	mov    %eax,(%esi)
c00363e8:	89 c6                	mov    %eax,%esi
c00363ea:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c00363f0:	eb 92                	jmp    c0036384 <__pow5mult+0x44>
c00363f2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00363f8:	8b 7d e0             	mov    -0x20(%ebp),%edi
c00363fb:	e9 78 ff ff ff       	jmp    c0036378 <__pow5mult+0x38>
c0036400:	8b 04 85 7c 90 03 c0 	mov    -0x3ffc6f84(,%eax,4),%eax
c0036407:	89 7c 24 04          	mov    %edi,0x4(%esp)
c003640b:	89 0c 24             	mov    %ecx,(%esp)
c003640e:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0036415:	00 
c0036416:	89 44 24 08          	mov    %eax,0x8(%esp)
c003641a:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c003641d:	e8 5e fa ff ff       	call   c0035e80 <__multadd>
c0036422:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0036425:	89 c7                	mov    %eax,%edi
c0036427:	e9 31 ff ff ff       	jmp    c003635d <__pow5mult+0x1d>
c003642c:	89 0c 24             	mov    %ecx,(%esp)
c003642f:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0036436:	00 
c0036437:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c003643a:	e8 81 f9 ff ff       	call   c0035dc0 <_Balloc>
c003643f:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0036442:	c7 40 14 71 02 00 00 	movl   $0x271,0x14(%eax)
c0036449:	89 c6                	mov    %eax,%esi
c003644b:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c0036452:	89 41 48             	mov    %eax,0x48(%ecx)
c0036455:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c003645b:	e9 0f ff ff ff       	jmp    c003636f <__pow5mult+0x2f>

c0036460 <__lshift>:
c0036460:	55                   	push   %ebp
c0036461:	89 e5                	mov    %esp,%ebp
c0036463:	57                   	push   %edi
c0036464:	56                   	push   %esi
c0036465:	53                   	push   %ebx
c0036466:	83 ec 2c             	sub    $0x2c,%esp
c0036469:	8b 45 0c             	mov    0xc(%ebp),%eax
c003646c:	8b 75 10             	mov    0x10(%ebp),%esi
c003646f:	89 c7                	mov    %eax,%edi
c0036471:	8b 50 04             	mov    0x4(%eax),%edx
c0036474:	8b 40 10             	mov    0x10(%eax),%eax
c0036477:	89 f3                	mov    %esi,%ebx
c0036479:	c1 fb 05             	sar    $0x5,%ebx
c003647c:	01 d8                	add    %ebx,%eax
c003647e:	89 45 d0             	mov    %eax,-0x30(%ebp)
c0036481:	83 c0 01             	add    $0x1,%eax
c0036484:	89 c1                	mov    %eax,%ecx
c0036486:	89 45 d8             	mov    %eax,-0x28(%ebp)
c0036489:	8b 47 08             	mov    0x8(%edi),%eax
c003648c:	39 c1                	cmp    %eax,%ecx
c003648e:	7e 09                	jle    c0036499 <__lshift+0x39>
c0036490:	01 c0                	add    %eax,%eax
c0036492:	83 c2 01             	add    $0x1,%edx
c0036495:	39 c1                	cmp    %eax,%ecx
c0036497:	7f f7                	jg     c0036490 <__lshift+0x30>
c0036499:	8b 45 08             	mov    0x8(%ebp),%eax
c003649c:	89 54 24 04          	mov    %edx,0x4(%esp)
c00364a0:	89 04 24             	mov    %eax,(%esp)
c00364a3:	e8 18 f9 ff ff       	call   c0035dc0 <_Balloc>
c00364a8:	85 db                	test   %ebx,%ebx
c00364aa:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c00364ad:	8d 50 14             	lea    0x14(%eax),%edx
c00364b0:	7e 17                	jle    c00364c9 <__lshift+0x69>
c00364b2:	31 c0                	xor    %eax,%eax
c00364b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00364b8:	c7 04 82 00 00 00 00 	movl   $0x0,(%edx,%eax,4)
c00364bf:	83 c0 01             	add    $0x1,%eax
c00364c2:	39 d8                	cmp    %ebx,%eax
c00364c4:	75 f2                	jne    c00364b8 <__lshift+0x58>
c00364c6:	8d 14 82             	lea    (%edx,%eax,4),%edx
c00364c9:	8b 7d 0c             	mov    0xc(%ebp),%edi
c00364cc:	8b 45 0c             	mov    0xc(%ebp),%eax
c00364cf:	8b 4f 10             	mov    0x10(%edi),%ecx
c00364d2:	83 c0 14             	add    $0x14,%eax
c00364d5:	83 e6 1f             	and    $0x1f,%esi
c00364d8:	89 75 e0             	mov    %esi,-0x20(%ebp)
c00364db:	8d 3c 88             	lea    (%eax,%ecx,4),%edi
c00364de:	89 7d e4             	mov    %edi,-0x1c(%ebp)
c00364e1:	74 7d                	je     c0036560 <__lshift+0x100>
c00364e3:	c7 45 dc 20 00 00 00 	movl   $0x20,-0x24(%ebp)
c00364ea:	29 75 dc             	sub    %esi,-0x24(%ebp)
c00364ed:	31 f6                	xor    %esi,%esi
c00364ef:	eb 09                	jmp    c00364fa <__lshift+0x9a>
c00364f1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00364f8:	89 fa                	mov    %edi,%edx
c00364fa:	8b 18                	mov    (%eax),%ebx
c00364fc:	83 c0 04             	add    $0x4,%eax
c00364ff:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
c0036503:	8d 7a 04             	lea    0x4(%edx),%edi
c0036506:	d3 e3                	shl    %cl,%ebx
c0036508:	0f b6 4d dc          	movzbl -0x24(%ebp),%ecx
c003650c:	09 f3                	or     %esi,%ebx
c003650e:	89 1a                	mov    %ebx,(%edx)
c0036510:	8b 70 fc             	mov    -0x4(%eax),%esi
c0036513:	d3 ee                	shr    %cl,%esi
c0036515:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
c0036518:	77 de                	ja     c00364f8 <__lshift+0x98>
c003651a:	8b 45 d0             	mov    -0x30(%ebp),%eax
c003651d:	89 72 04             	mov    %esi,0x4(%edx)
c0036520:	83 c0 02             	add    $0x2,%eax
c0036523:	85 f6                	test   %esi,%esi
c0036525:	0f 44 45 d8          	cmove  -0x28(%ebp),%eax
c0036529:	89 45 d8             	mov    %eax,-0x28(%ebp)
c003652c:	8b 45 d8             	mov    -0x28(%ebp),%eax
c003652f:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c0036532:	8b 75 0c             	mov    0xc(%ebp),%esi
c0036535:	83 e8 01             	sub    $0x1,%eax
c0036538:	89 47 10             	mov    %eax,0x10(%edi)
c003653b:	8b 45 0c             	mov    0xc(%ebp),%eax
c003653e:	8b 50 04             	mov    0x4(%eax),%edx
c0036541:	8b 45 08             	mov    0x8(%ebp),%eax
c0036544:	8b 40 4c             	mov    0x4c(%eax),%eax
c0036547:	8d 04 90             	lea    (%eax,%edx,4),%eax
c003654a:	8b 10                	mov    (%eax),%edx
c003654c:	89 16                	mov    %edx,(%esi)
c003654e:	89 30                	mov    %esi,(%eax)
c0036550:	83 c4 2c             	add    $0x2c,%esp
c0036553:	89 f8                	mov    %edi,%eax
c0036555:	5b                   	pop    %ebx
c0036556:	5e                   	pop    %esi
c0036557:	5f                   	pop    %edi
c0036558:	5d                   	pop    %ebp
c0036559:	c3                   	ret    
c003655a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036560:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
c0036563:	90                   	nop
c0036564:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036568:	83 c0 04             	add    $0x4,%eax
c003656b:	8b 48 fc             	mov    -0x4(%eax),%ecx
c003656e:	83 c2 04             	add    $0x4,%edx
c0036571:	39 c3                	cmp    %eax,%ebx
c0036573:	89 4a fc             	mov    %ecx,-0x4(%edx)
c0036576:	77 f0                	ja     c0036568 <__lshift+0x108>
c0036578:	eb b2                	jmp    c003652c <__lshift+0xcc>
c003657a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0036580 <__mcmp>:
c0036580:	55                   	push   %ebp
c0036581:	89 e5                	mov    %esp,%ebp
c0036583:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0036586:	8b 55 0c             	mov    0xc(%ebp),%edx
c0036589:	53                   	push   %ebx
c003658a:	8b 41 10             	mov    0x10(%ecx),%eax
c003658d:	8b 5a 10             	mov    0x10(%edx),%ebx
c0036590:	29 d8                	sub    %ebx,%eax
c0036592:	85 c0                	test   %eax,%eax
c0036594:	75 27                	jne    c00365bd <__mcmp+0x3d>
c0036596:	c1 e3 02             	shl    $0x2,%ebx
c0036599:	83 c1 14             	add    $0x14,%ecx
c003659c:	8d 04 19             	lea    (%ecx,%ebx,1),%eax
c003659f:	8d 54 1a 14          	lea    0x14(%edx,%ebx,1),%edx
c00365a3:	eb 07                	jmp    c00365ac <__mcmp+0x2c>
c00365a5:	8d 76 00             	lea    0x0(%esi),%esi
c00365a8:	39 c1                	cmp    %eax,%ecx
c00365aa:	73 14                	jae    c00365c0 <__mcmp+0x40>
c00365ac:	83 ea 04             	sub    $0x4,%edx
c00365af:	83 e8 04             	sub    $0x4,%eax
c00365b2:	8b 1a                	mov    (%edx),%ebx
c00365b4:	39 18                	cmp    %ebx,(%eax)
c00365b6:	74 f0                	je     c00365a8 <__mcmp+0x28>
c00365b8:	19 c0                	sbb    %eax,%eax
c00365ba:	83 c8 01             	or     $0x1,%eax
c00365bd:	5b                   	pop    %ebx
c00365be:	5d                   	pop    %ebp
c00365bf:	c3                   	ret    
c00365c0:	31 c0                	xor    %eax,%eax
c00365c2:	5b                   	pop    %ebx
c00365c3:	5d                   	pop    %ebp
c00365c4:	c3                   	ret    
c00365c5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00365c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c00365d0 <__mdiff>:
c00365d0:	55                   	push   %ebp
c00365d1:	89 e5                	mov    %esp,%ebp
c00365d3:	57                   	push   %edi
c00365d4:	56                   	push   %esi
c00365d5:	53                   	push   %ebx
c00365d6:	83 ec 2c             	sub    $0x2c,%esp
c00365d9:	8b 75 0c             	mov    0xc(%ebp),%esi
c00365dc:	8b 5d 10             	mov    0x10(%ebp),%ebx
c00365df:	89 34 24             	mov    %esi,(%esp)
c00365e2:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c00365e6:	e8 95 ff ff ff       	call   c0036580 <__mcmp>
c00365eb:	85 c0                	test   %eax,%eax
c00365ed:	0f 84 25 01 00 00    	je     c0036718 <__mdiff+0x148>
c00365f3:	0f 88 0f 01 00 00    	js     c0036708 <__mdiff+0x138>
c00365f9:	31 ff                	xor    %edi,%edi
c00365fb:	8b 46 04             	mov    0x4(%esi),%eax
c00365fe:	83 c6 14             	add    $0x14,%esi
c0036601:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036605:	8b 45 08             	mov    0x8(%ebp),%eax
c0036608:	89 04 24             	mov    %eax,(%esp)
c003660b:	e8 b0 f7 ff ff       	call   c0035dc0 <_Balloc>
c0036610:	8d 4b 14             	lea    0x14(%ebx),%ecx
c0036613:	89 c2                	mov    %eax,%edx
c0036615:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0036618:	89 78 0c             	mov    %edi,0xc(%eax)
c003661b:	8b 46 fc             	mov    -0x4(%esi),%eax
c003661e:	89 75 e4             	mov    %esi,-0x1c(%ebp)
c0036621:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0036624:	8d 04 86             	lea    (%esi,%eax,4),%eax
c0036627:	89 45 d8             	mov    %eax,-0x28(%ebp)
c003662a:	8b 43 10             	mov    0x10(%ebx),%eax
c003662d:	31 db                	xor    %ebx,%ebx
c003662f:	8d 04 81             	lea    (%ecx,%eax,4),%eax
c0036632:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0036635:	89 d0                	mov    %edx,%eax
c0036637:	83 c0 14             	add    $0x14,%eax
c003663a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036640:	8b 75 e4             	mov    -0x1c(%ebp),%esi
c0036643:	83 c0 04             	add    $0x4,%eax
c0036646:	83 c1 04             	add    $0x4,%ecx
c0036649:	83 45 e4 04          	addl   $0x4,-0x1c(%ebp)
c003664d:	8b 3e                	mov    (%esi),%edi
c003664f:	8b 71 fc             	mov    -0x4(%ecx),%esi
c0036652:	0f b7 d7             	movzwl %di,%edx
c0036655:	01 da                	add    %ebx,%edx
c0036657:	0f b7 de             	movzwl %si,%ebx
c003665a:	29 da                	sub    %ebx,%edx
c003665c:	c1 ef 10             	shr    $0x10,%edi
c003665f:	89 d3                	mov    %edx,%ebx
c0036661:	c1 ee 10             	shr    $0x10,%esi
c0036664:	0f b7 d2             	movzwl %dx,%edx
c0036667:	c1 fb 10             	sar    $0x10,%ebx
c003666a:	29 f7                	sub    %esi,%edi
c003666c:	01 df                	add    %ebx,%edi
c003666e:	89 fb                	mov    %edi,%ebx
c0036670:	c1 e7 10             	shl    $0x10,%edi
c0036673:	09 d7                	or     %edx,%edi
c0036675:	c1 fb 10             	sar    $0x10,%ebx
c0036678:	39 4d e0             	cmp    %ecx,-0x20(%ebp)
c003667b:	89 78 fc             	mov    %edi,-0x4(%eax)
c003667e:	77 c0                	ja     c0036640 <__mdiff+0x70>
c0036680:	8b 75 e4             	mov    -0x1c(%ebp),%esi
c0036683:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c0036686:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0036689:	89 75 e0             	mov    %esi,-0x20(%ebp)
c003668c:	39 f1                	cmp    %esi,%ecx
c003668e:	76 3f                	jbe    c00366cf <__mdiff+0xff>
c0036690:	8b 3e                	mov    (%esi),%edi
c0036692:	83 c6 04             	add    $0x4,%esi
c0036695:	83 c0 04             	add    $0x4,%eax
c0036698:	0f b7 d7             	movzwl %di,%edx
c003669b:	01 da                	add    %ebx,%edx
c003669d:	89 d3                	mov    %edx,%ebx
c003669f:	0f b7 d2             	movzwl %dx,%edx
c00366a2:	c1 fb 10             	sar    $0x10,%ebx
c00366a5:	c1 ef 10             	shr    $0x10,%edi
c00366a8:	01 df                	add    %ebx,%edi
c00366aa:	89 fb                	mov    %edi,%ebx
c00366ac:	c1 e7 10             	shl    $0x10,%edi
c00366af:	09 d7                	or     %edx,%edi
c00366b1:	c1 fb 10             	sar    $0x10,%ebx
c00366b4:	39 f1                	cmp    %esi,%ecx
c00366b6:	89 78 fc             	mov    %edi,-0x4(%eax)
c00366b9:	77 d5                	ja     c0036690 <__mdiff+0xc0>
c00366bb:	8b 45 e0             	mov    -0x20(%ebp),%eax
c00366be:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c00366c1:	f7 d0                	not    %eax
c00366c3:	01 c8                	add    %ecx,%eax
c00366c5:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c00366c8:	c1 e8 02             	shr    $0x2,%eax
c00366cb:	8d 44 81 04          	lea    0x4(%ecx,%eax,4),%eax
c00366cf:	85 ff                	test   %edi,%edi
c00366d1:	75 23                	jne    c00366f6 <__mdiff+0x126>
c00366d3:	8b 4d dc             	mov    -0x24(%ebp),%ecx
c00366d6:	8d 14 8d 00 00 00 00 	lea    0x0(,%ecx,4),%edx
c00366dd:	29 d0                	sub    %edx,%eax
c00366df:	89 ca                	mov    %ecx,%edx
c00366e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00366e8:	83 ea 01             	sub    $0x1,%edx
c00366eb:	8b 4c 90 fc          	mov    -0x4(%eax,%edx,4),%ecx
c00366ef:	85 c9                	test   %ecx,%ecx
c00366f1:	74 f5                	je     c00366e8 <__mdiff+0x118>
c00366f3:	89 55 dc             	mov    %edx,-0x24(%ebp)
c00366f6:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c00366f9:	8b 4d dc             	mov    -0x24(%ebp),%ecx
c00366fc:	89 48 10             	mov    %ecx,0x10(%eax)
c00366ff:	83 c4 2c             	add    $0x2c,%esp
c0036702:	5b                   	pop    %ebx
c0036703:	5e                   	pop    %esi
c0036704:	5f                   	pop    %edi
c0036705:	5d                   	pop    %ebp
c0036706:	c3                   	ret    
c0036707:	90                   	nop
c0036708:	89 f0                	mov    %esi,%eax
c003670a:	bf 01 00 00 00       	mov    $0x1,%edi
c003670f:	89 de                	mov    %ebx,%esi
c0036711:	89 c3                	mov    %eax,%ebx
c0036713:	e9 e3 fe ff ff       	jmp    c00365fb <__mdiff+0x2b>
c0036718:	8b 45 08             	mov    0x8(%ebp),%eax
c003671b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0036722:	00 
c0036723:	89 04 24             	mov    %eax,(%esp)
c0036726:	e8 95 f6 ff ff       	call   c0035dc0 <_Balloc>
c003672b:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c0036732:	c7 40 14 00 00 00 00 	movl   $0x0,0x14(%eax)
c0036739:	83 c4 2c             	add    $0x2c,%esp
c003673c:	5b                   	pop    %ebx
c003673d:	5e                   	pop    %esi
c003673e:	5f                   	pop    %edi
c003673f:	5d                   	pop    %ebp
c0036740:	c3                   	ret    
c0036741:	eb 0d                	jmp    c0036750 <__ulp>
c0036743:	90                   	nop
c0036744:	90                   	nop
c0036745:	90                   	nop
c0036746:	90                   	nop
c0036747:	90                   	nop
c0036748:	90                   	nop
c0036749:	90                   	nop
c003674a:	90                   	nop
c003674b:	90                   	nop
c003674c:	90                   	nop
c003674d:	90                   	nop
c003674e:	90                   	nop
c003674f:	90                   	nop

c0036750 <__ulp>:
c0036750:	55                   	push   %ebp
c0036751:	89 e5                	mov    %esp,%ebp
c0036753:	83 ec 08             	sub    $0x8,%esp
c0036756:	dd 45 08             	fldl   0x8(%ebp)
c0036759:	dd 5d f8             	fstpl  -0x8(%ebp)
c003675c:	8b 4d fc             	mov    -0x4(%ebp),%ecx
c003675f:	81 e1 00 00 f0 7f    	and    $0x7ff00000,%ecx
c0036765:	81 e9 00 00 40 03    	sub    $0x3400000,%ecx
c003676b:	85 c9                	test   %ecx,%ecx
c003676d:	7e 11                	jle    c0036780 <__ulp+0x30>
c003676f:	89 4d fc             	mov    %ecx,-0x4(%ebp)
c0036772:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0036779:	dd 45 f8             	fldl   -0x8(%ebp)
c003677c:	c9                   	leave  
c003677d:	c3                   	ret    
c003677e:	66 90                	xchg   %ax,%ax
c0036780:	f7 d9                	neg    %ecx
c0036782:	c1 f9 14             	sar    $0x14,%ecx
c0036785:	83 f9 13             	cmp    $0x13,%ecx
c0036788:	7e 26                	jle    c00367b0 <__ulp+0x60>
c003678a:	83 f9 32             	cmp    $0x32,%ecx
c003678d:	b8 01 00 00 00       	mov    $0x1,%eax
c0036792:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c0036799:	7f 0b                	jg     c00367a6 <__ulp+0x56>
c003679b:	ba 33 00 00 00       	mov    $0x33,%edx
c00367a0:	29 ca                	sub    %ecx,%edx
c00367a2:	89 d1                	mov    %edx,%ecx
c00367a4:	d3 e0                	shl    %cl,%eax
c00367a6:	89 45 f8             	mov    %eax,-0x8(%ebp)
c00367a9:	dd 45 f8             	fldl   -0x8(%ebp)
c00367ac:	c9                   	leave  
c00367ad:	c3                   	ret    
c00367ae:	66 90                	xchg   %ax,%ax
c00367b0:	b8 00 00 08 00       	mov    $0x80000,%eax
c00367b5:	d3 f8                	sar    %cl,%eax
c00367b7:	89 45 fc             	mov    %eax,-0x4(%ebp)
c00367ba:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c00367c1:	dd 45 f8             	fldl   -0x8(%ebp)
c00367c4:	c9                   	leave  
c00367c5:	c3                   	ret    
c00367c6:	8d 76 00             	lea    0x0(%esi),%esi
c00367c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c00367d0 <__b2d>:
c00367d0:	55                   	push   %ebp
c00367d1:	89 e5                	mov    %esp,%ebp
c00367d3:	57                   	push   %edi
c00367d4:	56                   	push   %esi
c00367d5:	53                   	push   %ebx
c00367d6:	83 ec 18             	sub    $0x18,%esp
c00367d9:	8b 45 08             	mov    0x8(%ebp),%eax
c00367dc:	8d 78 14             	lea    0x14(%eax),%edi
c00367df:	8b 40 10             	mov    0x10(%eax),%eax
c00367e2:	8d 1c 87             	lea    (%edi,%eax,4),%ebx
c00367e5:	8b 73 fc             	mov    -0x4(%ebx),%esi
c00367e8:	8d 43 fc             	lea    -0x4(%ebx),%eax
c00367eb:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c00367ee:	89 34 24             	mov    %esi,(%esp)
c00367f1:	e8 6a f8 ff ff       	call   c0036060 <__hi0bits>
c00367f6:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c00367f9:	ba 20 00 00 00       	mov    $0x20,%edx
c00367fe:	29 c2                	sub    %eax,%edx
c0036800:	83 f8 0a             	cmp    $0xa,%eax
c0036803:	89 11                	mov    %edx,(%ecx)
c0036805:	7f 41                	jg     c0036848 <__b2d+0x78>
c0036807:	b9 0b 00 00 00       	mov    $0xb,%ecx
c003680c:	89 f2                	mov    %esi,%edx
c003680e:	29 c1                	sub    %eax,%ecx
c0036810:	d3 ea                	shr    %cl,%edx
c0036812:	81 ca 00 00 f0 3f    	or     $0x3ff00000,%edx
c0036818:	89 55 ec             	mov    %edx,-0x14(%ebp)
c003681b:	31 d2                	xor    %edx,%edx
c003681d:	3b 7d e4             	cmp    -0x1c(%ebp),%edi
c0036820:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
c0036827:	73 05                	jae    c003682e <__b2d+0x5e>
c0036829:	8b 53 f8             	mov    -0x8(%ebx),%edx
c003682c:	d3 ea                	shr    %cl,%edx
c003682e:	8d 48 15             	lea    0x15(%eax),%ecx
c0036831:	d3 e6                	shl    %cl,%esi
c0036833:	09 f2                	or     %esi,%edx
c0036835:	89 55 e8             	mov    %edx,-0x18(%ebp)
c0036838:	dd 45 e8             	fldl   -0x18(%ebp)
c003683b:	83 c4 18             	add    $0x18,%esp
c003683e:	5b                   	pop    %ebx
c003683f:	5e                   	pop    %esi
c0036840:	5f                   	pop    %edi
c0036841:	5d                   	pop    %ebp
c0036842:	c3                   	ret    
c0036843:	90                   	nop
c0036844:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036848:	31 d2                	xor    %edx,%edx
c003684a:	3b 7d e4             	cmp    -0x1c(%ebp),%edi
c003684d:	73 09                	jae    c0036858 <__b2d+0x88>
c003684f:	8b 53 f8             	mov    -0x8(%ebx),%edx
c0036852:	8d 4b f8             	lea    -0x8(%ebx),%ecx
c0036855:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0036858:	89 c3                	mov    %eax,%ebx
c003685a:	83 eb 0b             	sub    $0xb,%ebx
c003685d:	89 5d e0             	mov    %ebx,-0x20(%ebp)
c0036860:	74 4e                	je     c00368b0 <__b2d+0xe0>
c0036862:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
c0036866:	bb 2b 00 00 00       	mov    $0x2b,%ebx
c003686b:	29 c3                	sub    %eax,%ebx
c003686d:	89 d0                	mov    %edx,%eax
c003686f:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
c0036876:	d3 e6                	shl    %cl,%esi
c0036878:	89 d9                	mov    %ebx,%ecx
c003687a:	d3 e8                	shr    %cl,%eax
c003687c:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c003687f:	81 ce 00 00 f0 3f    	or     $0x3ff00000,%esi
c0036885:	09 c6                	or     %eax,%esi
c0036887:	31 c0                	xor    %eax,%eax
c0036889:	89 75 ec             	mov    %esi,-0x14(%ebp)
c003688c:	39 f9                	cmp    %edi,%ecx
c003688e:	76 07                	jbe    c0036897 <__b2d+0xc7>
c0036890:	8b 41 fc             	mov    -0x4(%ecx),%eax
c0036893:	89 d9                	mov    %ebx,%ecx
c0036895:	d3 e8                	shr    %cl,%eax
c0036897:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
c003689b:	d3 e2                	shl    %cl,%edx
c003689d:	09 d0                	or     %edx,%eax
c003689f:	89 45 e8             	mov    %eax,-0x18(%ebp)
c00368a2:	dd 45 e8             	fldl   -0x18(%ebp)
c00368a5:	83 c4 18             	add    $0x18,%esp
c00368a8:	5b                   	pop    %ebx
c00368a9:	5e                   	pop    %esi
c00368aa:	5f                   	pop    %edi
c00368ab:	5d                   	pop    %ebp
c00368ac:	c3                   	ret    
c00368ad:	8d 76 00             	lea    0x0(%esi),%esi
c00368b0:	81 ce 00 00 f0 3f    	or     $0x3ff00000,%esi
c00368b6:	89 75 ec             	mov    %esi,-0x14(%ebp)
c00368b9:	89 55 e8             	mov    %edx,-0x18(%ebp)
c00368bc:	dd 45 e8             	fldl   -0x18(%ebp)
c00368bf:	83 c4 18             	add    $0x18,%esp
c00368c2:	5b                   	pop    %ebx
c00368c3:	5e                   	pop    %esi
c00368c4:	5f                   	pop    %edi
c00368c5:	5d                   	pop    %ebp
c00368c6:	c3                   	ret    
c00368c7:	89 f6                	mov    %esi,%esi
c00368c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c00368d0 <__d2b>:
c00368d0:	55                   	push   %ebp
c00368d1:	89 e5                	mov    %esp,%ebp
c00368d3:	57                   	push   %edi
c00368d4:	56                   	push   %esi
c00368d5:	53                   	push   %ebx
c00368d6:	83 ec 2c             	sub    $0x2c,%esp
c00368d9:	8b 45 08             	mov    0x8(%ebp),%eax
c00368dc:	dd 45 0c             	fldl   0xc(%ebp)
c00368df:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c00368e6:	00 
c00368e7:	dd 5d d0             	fstpl  -0x30(%ebp)
c00368ea:	89 04 24             	mov    %eax,(%esp)
c00368ed:	e8 ce f4 ff ff       	call   c0035dc0 <_Balloc>
c00368f2:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
c00368f5:	89 c6                	mov    %eax,%esi
c00368f7:	89 d8                	mov    %ebx,%eax
c00368f9:	81 e3 ff ff ff 7f    	and    $0x7fffffff,%ebx
c00368ff:	25 ff ff 0f 00       	and    $0xfffff,%eax
c0036904:	c1 eb 14             	shr    $0x14,%ebx
c0036907:	85 db                	test   %ebx,%ebx
c0036909:	74 05                	je     c0036910 <__d2b+0x40>
c003690b:	0d 00 00 10 00       	or     $0x100000,%eax
c0036910:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0036913:	8b 45 d0             	mov    -0x30(%ebp),%eax
c0036916:	85 c0                	test   %eax,%eax
c0036918:	74 56                	je     c0036970 <__d2b+0xa0>
c003691a:	89 45 e0             	mov    %eax,-0x20(%ebp)
c003691d:	8d 45 e0             	lea    -0x20(%ebp),%eax
c0036920:	89 04 24             	mov    %eax,(%esp)
c0036923:	e8 98 f7 ff ff       	call   c00360c0 <__lo0bits>
c0036928:	85 c0                	test   %eax,%eax
c003692a:	0f 85 90 00 00 00    	jne    c00369c0 <__d2b+0xf0>
c0036930:	8b 55 e0             	mov    -0x20(%ebp),%edx
c0036933:	89 56 14             	mov    %edx,0x14(%esi)
c0036936:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c0036939:	83 fa 01             	cmp    $0x1,%edx
c003693c:	19 ff                	sbb    %edi,%edi
c003693e:	83 c7 02             	add    $0x2,%edi
c0036941:	85 db                	test   %ebx,%ebx
c0036943:	89 56 18             	mov    %edx,0x18(%esi)
c0036946:	89 7e 10             	mov    %edi,0x10(%esi)
c0036949:	74 49                	je     c0036994 <__d2b+0xc4>
c003694b:	8b 4d 14             	mov    0x14(%ebp),%ecx
c003694e:	8d 94 18 cd fb ff ff 	lea    -0x433(%eax,%ebx,1),%edx
c0036955:	89 11                	mov    %edx,(%ecx)
c0036957:	ba 35 00 00 00       	mov    $0x35,%edx
c003695c:	29 c2                	sub    %eax,%edx
c003695e:	8b 45 18             	mov    0x18(%ebp),%eax
c0036961:	89 10                	mov    %edx,(%eax)
c0036963:	83 c4 2c             	add    $0x2c,%esp
c0036966:	89 f0                	mov    %esi,%eax
c0036968:	5b                   	pop    %ebx
c0036969:	5e                   	pop    %esi
c003696a:	5f                   	pop    %edi
c003696b:	5d                   	pop    %ebp
c003696c:	c3                   	ret    
c003696d:	8d 76 00             	lea    0x0(%esi),%esi
c0036970:	8d 45 e4             	lea    -0x1c(%ebp),%eax
c0036973:	bf 01 00 00 00       	mov    $0x1,%edi
c0036978:	89 04 24             	mov    %eax,(%esp)
c003697b:	e8 40 f7 ff ff       	call   c00360c0 <__lo0bits>
c0036980:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c0036983:	c7 46 10 01 00 00 00 	movl   $0x1,0x10(%esi)
c003698a:	89 56 14             	mov    %edx,0x14(%esi)
c003698d:	83 c0 20             	add    $0x20,%eax
c0036990:	85 db                	test   %ebx,%ebx
c0036992:	75 b7                	jne    c003694b <__d2b+0x7b>
c0036994:	8b 4d 14             	mov    0x14(%ebp),%ecx
c0036997:	2d 32 04 00 00       	sub    $0x432,%eax
c003699c:	89 01                	mov    %eax,(%ecx)
c003699e:	8b 44 be 10          	mov    0x10(%esi,%edi,4),%eax
c00369a2:	c1 e7 05             	shl    $0x5,%edi
c00369a5:	89 04 24             	mov    %eax,(%esp)
c00369a8:	e8 b3 f6 ff ff       	call   c0036060 <__hi0bits>
c00369ad:	29 c7                	sub    %eax,%edi
c00369af:	8b 45 18             	mov    0x18(%ebp),%eax
c00369b2:	89 38                	mov    %edi,(%eax)
c00369b4:	83 c4 2c             	add    $0x2c,%esp
c00369b7:	89 f0                	mov    %esi,%eax
c00369b9:	5b                   	pop    %ebx
c00369ba:	5e                   	pop    %esi
c00369bb:	5f                   	pop    %edi
c00369bc:	5d                   	pop    %ebp
c00369bd:	c3                   	ret    
c00369be:	66 90                	xchg   %ax,%ax
c00369c0:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c00369c3:	b9 20 00 00 00       	mov    $0x20,%ecx
c00369c8:	29 c1                	sub    %eax,%ecx
c00369ca:	89 d7                	mov    %edx,%edi
c00369cc:	d3 e7                	shl    %cl,%edi
c00369ce:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c00369d1:	09 f9                	or     %edi,%ecx
c00369d3:	89 4e 14             	mov    %ecx,0x14(%esi)
c00369d6:	89 c1                	mov    %eax,%ecx
c00369d8:	d3 ea                	shr    %cl,%edx
c00369da:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c00369dd:	e9 57 ff ff ff       	jmp    c0036939 <__d2b+0x69>
c00369e2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00369e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c00369f0 <__ratio>:
c00369f0:	55                   	push   %ebp
c00369f1:	89 e5                	mov    %esp,%ebp
c00369f3:	56                   	push   %esi
c00369f4:	53                   	push   %ebx
c00369f5:	83 ec 30             	sub    $0x30,%esp
c00369f8:	8b 75 08             	mov    0x8(%ebp),%esi
c00369fb:	8d 45 f0             	lea    -0x10(%ebp),%eax
c00369fe:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c0036a01:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036a05:	89 34 24             	mov    %esi,(%esp)
c0036a08:	e8 c3 fd ff ff       	call   c00367d0 <__b2d>
c0036a0d:	8d 45 f4             	lea    -0xc(%ebp),%eax
c0036a10:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036a14:	89 1c 24             	mov    %ebx,(%esp)
c0036a17:	dd 55 e0             	fstl   -0x20(%ebp)
c0036a1a:	dd 5d d8             	fstpl  -0x28(%ebp)
c0036a1d:	e8 ae fd ff ff       	call   c00367d0 <__b2d>
c0036a22:	8b 46 10             	mov    0x10(%esi),%eax
c0036a25:	2b 43 10             	sub    0x10(%ebx),%eax
c0036a28:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0036a2b:	2b 55 f4             	sub    -0xc(%ebp),%edx
c0036a2e:	c1 e0 05             	shl    $0x5,%eax
c0036a31:	01 d0                	add    %edx,%eax
c0036a33:	dd 55 d0             	fstl   -0x30(%ebp)
c0036a36:	85 c0                	test   %eax,%eax
c0036a38:	dd 45 d8             	fldl   -0x28(%ebp)
c0036a3b:	7e 1b                	jle    c0036a58 <__ratio+0x68>
c0036a3d:	dd d8                	fstp   %st(0)
c0036a3f:	c1 e0 14             	shl    $0x14,%eax
c0036a42:	01 45 e4             	add    %eax,-0x1c(%ebp)
c0036a45:	dd 45 e0             	fldl   -0x20(%ebp)
c0036a48:	83 c4 30             	add    $0x30,%esp
c0036a4b:	5b                   	pop    %ebx
c0036a4c:	de f1                	fdivp  %st,%st(1)
c0036a4e:	5e                   	pop    %esi
c0036a4f:	5d                   	pop    %ebp
c0036a50:	c3                   	ret    
c0036a51:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036a58:	dd d9                	fstp   %st(1)
c0036a5a:	c1 e0 14             	shl    $0x14,%eax
c0036a5d:	29 45 d4             	sub    %eax,-0x2c(%ebp)
c0036a60:	dd 45 d0             	fldl   -0x30(%ebp)
c0036a63:	83 c4 30             	add    $0x30,%esp
c0036a66:	5b                   	pop    %ebx
c0036a67:	de f9                	fdivrp %st,%st(1)
c0036a69:	5e                   	pop    %esi
c0036a6a:	5d                   	pop    %ebp
c0036a6b:	c3                   	ret    
c0036a6c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

c0036a70 <_mprec_log10>:
c0036a70:	55                   	push   %ebp
c0036a71:	89 e5                	mov    %esp,%ebp
c0036a73:	8b 45 08             	mov    0x8(%ebp),%eax
c0036a76:	83 f8 17             	cmp    $0x17,%eax
c0036a79:	7e 1d                	jle    c0036a98 <_mprec_log10+0x28>
c0036a7b:	d9 e8                	fld1   
c0036a7d:	d9 05 50 90 03 c0    	flds   0xc0039050
c0036a83:	90                   	nop
c0036a84:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036a88:	83 e8 01             	sub    $0x1,%eax
c0036a8b:	dc c9                	fmul   %st,%st(1)
c0036a8d:	75 f9                	jne    c0036a88 <_mprec_log10+0x18>
c0036a8f:	dd d8                	fstp   %st(0)
c0036a91:	5d                   	pop    %ebp
c0036a92:	c3                   	ret    
c0036a93:	90                   	nop
c0036a94:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036a98:	dd 04 c5 20 91 03 c0 	fldl   -0x3ffc6ee0(,%eax,8)
c0036a9f:	5d                   	pop    %ebp
c0036aa0:	c3                   	ret    
c0036aa1:	eb 0d                	jmp    c0036ab0 <__copybits>
c0036aa3:	90                   	nop
c0036aa4:	90                   	nop
c0036aa5:	90                   	nop
c0036aa6:	90                   	nop
c0036aa7:	90                   	nop
c0036aa8:	90                   	nop
c0036aa9:	90                   	nop
c0036aaa:	90                   	nop
c0036aab:	90                   	nop
c0036aac:	90                   	nop
c0036aad:	90                   	nop
c0036aae:	90                   	nop
c0036aaf:	90                   	nop

c0036ab0 <__copybits>:
c0036ab0:	55                   	push   %ebp
c0036ab1:	89 e5                	mov    %esp,%ebp
c0036ab3:	57                   	push   %edi
c0036ab4:	8b 7d 10             	mov    0x10(%ebp),%edi
c0036ab7:	56                   	push   %esi
c0036ab8:	8b 75 0c             	mov    0xc(%ebp),%esi
c0036abb:	8b 45 08             	mov    0x8(%ebp),%eax
c0036abe:	53                   	push   %ebx
c0036abf:	8b 4f 10             	mov    0x10(%edi),%ecx
c0036ac2:	8d 56 ff             	lea    -0x1(%esi),%edx
c0036ac5:	c1 fa 05             	sar    $0x5,%edx
c0036ac8:	8d 74 90 04          	lea    0x4(%eax,%edx,4),%esi
c0036acc:	8d 57 14             	lea    0x14(%edi),%edx
c0036acf:	8d 1c 8a             	lea    (%edx,%ecx,4),%ebx
c0036ad2:	39 da                	cmp    %ebx,%edx
c0036ad4:	73 34                	jae    c0036b0a <__copybits+0x5a>
c0036ad6:	89 c1                	mov    %eax,%ecx
c0036ad8:	83 c2 04             	add    $0x4,%edx
c0036adb:	8b 42 fc             	mov    -0x4(%edx),%eax
c0036ade:	83 c1 04             	add    $0x4,%ecx
c0036ae1:	39 d3                	cmp    %edx,%ebx
c0036ae3:	89 41 fc             	mov    %eax,-0x4(%ecx)
c0036ae6:	77 f0                	ja     c0036ad8 <__copybits+0x28>
c0036ae8:	8b 45 08             	mov    0x8(%ebp),%eax
c0036aeb:	29 fb                	sub    %edi,%ebx
c0036aed:	8d 53 eb             	lea    -0x15(%ebx),%edx
c0036af0:	c1 ea 02             	shr    $0x2,%edx
c0036af3:	8d 44 90 04          	lea    0x4(%eax,%edx,4),%eax
c0036af7:	39 c6                	cmp    %eax,%esi
c0036af9:	76 13                	jbe    c0036b0e <__copybits+0x5e>
c0036afb:	90                   	nop
c0036afc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036b00:	83 c0 04             	add    $0x4,%eax
c0036b03:	c7 40 fc 00 00 00 00 	movl   $0x0,-0x4(%eax)
c0036b0a:	39 c6                	cmp    %eax,%esi
c0036b0c:	77 f2                	ja     c0036b00 <__copybits+0x50>
c0036b0e:	5b                   	pop    %ebx
c0036b0f:	5e                   	pop    %esi
c0036b10:	5f                   	pop    %edi
c0036b11:	5d                   	pop    %ebp
c0036b12:	c3                   	ret    
c0036b13:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036b19:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0036b20 <__any_on>:
c0036b20:	55                   	push   %ebp
c0036b21:	89 e5                	mov    %esp,%ebp
c0036b23:	8b 45 08             	mov    0x8(%ebp),%eax
c0036b26:	57                   	push   %edi
c0036b27:	56                   	push   %esi
c0036b28:	53                   	push   %ebx
c0036b29:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c0036b2c:	8d 50 14             	lea    0x14(%eax),%edx
c0036b2f:	8b 40 10             	mov    0x10(%eax),%eax
c0036b32:	c1 fb 05             	sar    $0x5,%ebx
c0036b35:	39 d8                	cmp    %ebx,%eax
c0036b37:	7d 2f                	jge    c0036b68 <__any_on+0x48>
c0036b39:	8d 1c 82             	lea    (%edx,%eax,4),%ebx
c0036b3c:	39 da                	cmp    %ebx,%edx
c0036b3e:	73 1d                	jae    c0036b5d <__any_on+0x3d>
c0036b40:	8d 43 fc             	lea    -0x4(%ebx),%eax
c0036b43:	8b 5b fc             	mov    -0x4(%ebx),%ebx
c0036b46:	85 db                	test   %ebx,%ebx
c0036b48:	74 0f                	je     c0036b59 <__any_on+0x39>
c0036b4a:	eb 44                	jmp    c0036b90 <__any_on+0x70>
c0036b4c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036b50:	83 e8 04             	sub    $0x4,%eax
c0036b53:	8b 08                	mov    (%eax),%ecx
c0036b55:	85 c9                	test   %ecx,%ecx
c0036b57:	75 37                	jne    c0036b90 <__any_on+0x70>
c0036b59:	39 c2                	cmp    %eax,%edx
c0036b5b:	72 f3                	jb     c0036b50 <__any_on+0x30>
c0036b5d:	31 c0                	xor    %eax,%eax
c0036b5f:	5b                   	pop    %ebx
c0036b60:	5e                   	pop    %esi
c0036b61:	5f                   	pop    %edi
c0036b62:	5d                   	pop    %ebp
c0036b63:	c3                   	ret    
c0036b64:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036b68:	7e 1e                	jle    c0036b88 <__any_on+0x68>
c0036b6a:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c0036b6d:	8d 1c 9a             	lea    (%edx,%ebx,4),%ebx
c0036b70:	83 e1 1f             	and    $0x1f,%ecx
c0036b73:	74 c7                	je     c0036b3c <__any_on+0x1c>
c0036b75:	8b 3b                	mov    (%ebx),%edi
c0036b77:	b8 01 00 00 00       	mov    $0x1,%eax
c0036b7c:	89 fe                	mov    %edi,%esi
c0036b7e:	d3 ee                	shr    %cl,%esi
c0036b80:	d3 e6                	shl    %cl,%esi
c0036b82:	39 fe                	cmp    %edi,%esi
c0036b84:	75 d9                	jne    c0036b5f <__any_on+0x3f>
c0036b86:	eb b4                	jmp    c0036b3c <__any_on+0x1c>
c0036b88:	8d 1c 9a             	lea    (%edx,%ebx,4),%ebx
c0036b8b:	eb af                	jmp    c0036b3c <__any_on+0x1c>
c0036b8d:	8d 76 00             	lea    0x0(%esi),%esi
c0036b90:	5b                   	pop    %ebx
c0036b91:	b8 01 00 00 00       	mov    $0x1,%eax
c0036b96:	5e                   	pop    %esi
c0036b97:	5f                   	pop    %edi
c0036b98:	5d                   	pop    %ebp
c0036b99:	c3                   	ret    
c0036b9a:	66 90                	xchg   %ax,%ax
c0036b9c:	66 90                	xchg   %ax,%ax
c0036b9e:	66 90                	xchg   %ax,%ax

c0036ba0 <_sbrk_r>:
c0036ba0:	55                   	push   %ebp
c0036ba1:	89 e5                	mov    %esp,%ebp
c0036ba3:	83 ec 18             	sub    $0x18,%esp
c0036ba6:	8b 45 0c             	mov    0xc(%ebp),%eax
c0036ba9:	c7 05 0c 30 09 c0 00 	movl   $0x0,0xc009300c
c0036bb0:	00 00 00 
c0036bb3:	89 04 24             	mov    %eax,(%esp)
c0036bb6:	e8 ef b0 ff ff       	call   c0031caa <sbrk>
c0036bbb:	83 f8 ff             	cmp    $0xffffffff,%eax
c0036bbe:	74 08                	je     c0036bc8 <_sbrk_r+0x28>
c0036bc0:	c9                   	leave  
c0036bc1:	c3                   	ret    
c0036bc2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036bc8:	8b 15 0c 30 09 c0    	mov    0xc009300c,%edx
c0036bce:	85 d2                	test   %edx,%edx
c0036bd0:	74 ee                	je     c0036bc0 <_sbrk_r+0x20>
c0036bd2:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0036bd5:	89 11                	mov    %edx,(%ecx)
c0036bd7:	c9                   	leave  
c0036bd8:	c3                   	ret    
c0036bd9:	66 90                	xchg   %ax,%ax
c0036bdb:	66 90                	xchg   %ax,%ax
c0036bdd:	66 90                	xchg   %ax,%ax
c0036bdf:	90                   	nop

c0036be0 <__fpclassifyd>:
c0036be0:	55                   	push   %ebp
c0036be1:	b8 02 00 00 00       	mov    $0x2,%eax
c0036be6:	89 e5                	mov    %esp,%ebp
c0036be8:	53                   	push   %ebx
c0036be9:	83 ec 0c             	sub    $0xc,%esp
c0036bec:	dd 45 08             	fldl   0x8(%ebp)
c0036bef:	dd 5d f0             	fstpl  -0x10(%ebp)
c0036bf2:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0036bf5:	8b 4d f4             	mov    -0xc(%ebp),%ecx
c0036bf8:	89 d3                	mov    %edx,%ebx
c0036bfa:	09 cb                	or     %ecx,%ebx
c0036bfc:	75 0a                	jne    c0036c08 <__fpclassifyd+0x28>
c0036bfe:	83 c4 0c             	add    $0xc,%esp
c0036c01:	5b                   	pop    %ebx
c0036c02:	5d                   	pop    %ebp
c0036c03:	c3                   	ret    
c0036c04:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036c08:	85 d2                	test   %edx,%edx
c0036c0a:	0f 94 c2             	sete   %dl
c0036c0d:	75 08                	jne    c0036c17 <__fpclassifyd+0x37>
c0036c0f:	81 f9 00 00 00 80    	cmp    $0x80000000,%ecx
c0036c15:	74 e7                	je     c0036bfe <__fpclassifyd+0x1e>
c0036c17:	81 e1 ff ff ff 7f    	and    $0x7fffffff,%ecx
c0036c1d:	b8 04 00 00 00       	mov    $0x4,%eax
c0036c22:	8d 99 00 00 f0 ff    	lea    -0x100000(%ecx),%ebx
c0036c28:	81 fb ff ff df 7f    	cmp    $0x7fdfffff,%ebx
c0036c2e:	76 ce                	jbe    c0036bfe <__fpclassifyd+0x1e>
c0036c30:	81 f9 ff ff 0f 00    	cmp    $0xfffff,%ecx
c0036c36:	b0 03                	mov    $0x3,%al
c0036c38:	76 c4                	jbe    c0036bfe <__fpclassifyd+0x1e>
c0036c3a:	31 c0                	xor    %eax,%eax
c0036c3c:	81 f9 00 00 f0 7f    	cmp    $0x7ff00000,%ecx
c0036c42:	0f 94 c0             	sete   %al
c0036c45:	21 d0                	and    %edx,%eax
c0036c47:	eb b5                	jmp    c0036bfe <__fpclassifyd+0x1e>
c0036c49:	66 90                	xchg   %ax,%ax
c0036c4b:	66 90                	xchg   %ax,%ax
c0036c4d:	66 90                	xchg   %ax,%ax
c0036c4f:	90                   	nop

c0036c50 <strlen>:
c0036c50:	55                   	push   %ebp
c0036c51:	89 e5                	mov    %esp,%ebp
c0036c53:	57                   	push   %edi
c0036c54:	8b 55 08             	mov    0x8(%ebp),%edx
c0036c57:	89 d7                	mov    %edx,%edi
c0036c59:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0036c5f:	74 25                	je     c0036c86 <L5>
c0036c61:	8a 0f                	mov    (%edi),%cl
c0036c63:	47                   	inc    %edi
c0036c64:	84 c9                	test   %cl,%cl
c0036c66:	74 56                	je     c0036cbe <L15>
c0036c68:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0036c6e:	74 16                	je     c0036c86 <L5>
c0036c70:	8a 0f                	mov    (%edi),%cl
c0036c72:	47                   	inc    %edi
c0036c73:	84 c9                	test   %cl,%cl
c0036c75:	74 47                	je     c0036cbe <L15>
c0036c77:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0036c7d:	74 07                	je     c0036c86 <L5>
c0036c7f:	8a 0f                	mov    (%edi),%cl
c0036c81:	47                   	inc    %edi
c0036c82:	84 c9                	test   %cl,%cl
c0036c84:	74 38                	je     c0036cbe <L15>

c0036c86 <L5>:
c0036c86:	83 ef 04             	sub    $0x4,%edi
c0036c89:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0036c90 <L10>:
c0036c90:	83 c7 04             	add    $0x4,%edi
c0036c93:	8b 0f                	mov    (%edi),%ecx
c0036c95:	8d 81 ff fe fe fe    	lea    -0x1010101(%ecx),%eax
c0036c9b:	f7 d1                	not    %ecx
c0036c9d:	21 c8                	and    %ecx,%eax
c0036c9f:	a9 80 80 80 80       	test   $0x80808080,%eax
c0036ca4:	74 ea                	je     c0036c90 <L10>
c0036ca6:	f7 d1                	not    %ecx
c0036ca8:	47                   	inc    %edi
c0036ca9:	84 c9                	test   %cl,%cl
c0036cab:	74 11                	je     c0036cbe <L15>
c0036cad:	47                   	inc    %edi
c0036cae:	c1 e9 08             	shr    $0x8,%ecx
c0036cb1:	84 c9                	test   %cl,%cl
c0036cb3:	74 09                	je     c0036cbe <L15>
c0036cb5:	47                   	inc    %edi
c0036cb6:	c1 e9 08             	shr    $0x8,%ecx
c0036cb9:	84 c9                	test   %cl,%cl
c0036cbb:	74 01                	je     c0036cbe <L15>
c0036cbd:	47                   	inc    %edi

c0036cbe <L15>:
c0036cbe:	29 d7                	sub    %edx,%edi
c0036cc0:	8d 47 ff             	lea    -0x1(%edi),%eax
c0036cc3:	8d 65 fc             	lea    -0x4(%ebp),%esp
c0036cc6:	5f                   	pop    %edi
c0036cc7:	c9                   	leave  
c0036cc8:	c3                   	ret    
c0036cc9:	66 90                	xchg   %ax,%ax
c0036ccb:	66 90                	xchg   %ax,%ax
c0036ccd:	66 90                	xchg   %ax,%ax
c0036ccf:	90                   	nop

c0036cd0 <__ssprint_r>:
c0036cd0:	55                   	push   %ebp
c0036cd1:	89 e5                	mov    %esp,%ebp
c0036cd3:	57                   	push   %edi
c0036cd4:	56                   	push   %esi
c0036cd5:	53                   	push   %ebx
c0036cd6:	83 ec 2c             	sub    $0x2c,%esp
c0036cd9:	8b 45 10             	mov    0x10(%ebp),%eax
c0036cdc:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c0036cdf:	8b 00                	mov    (%eax),%eax
c0036ce1:	89 c7                	mov    %eax,%edi
c0036ce3:	8b 45 10             	mov    0x10(%ebp),%eax
c0036ce6:	8b 40 08             	mov    0x8(%eax),%eax
c0036ce9:	85 c0                	test   %eax,%eax
c0036ceb:	0f 84 af 01 00 00    	je     c0036ea0 <__ssprint_r+0x1d0>
c0036cf1:	31 c9                	xor    %ecx,%ecx
c0036cf3:	31 d2                	xor    %edx,%edx
c0036cf5:	8b 03                	mov    (%ebx),%eax
c0036cf7:	89 ce                	mov    %ecx,%esi
c0036cf9:	85 f6                	test   %esi,%esi
c0036cfb:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c0036cfe:	0f 84 ec 00 00 00    	je     c0036df0 <__ssprint_r+0x120>
c0036d04:	8b 53 08             	mov    0x8(%ebx),%edx
c0036d07:	39 d6                	cmp    %edx,%esi
c0036d09:	0f 82 fc 00 00 00    	jb     c0036e0b <__ssprint_r+0x13b>
c0036d0f:	0f b7 4b 0c          	movzwl 0xc(%ebx),%ecx
c0036d13:	66 f7 c1 80 04       	test   $0x480,%cx
c0036d18:	0f 84 fa 00 00 00    	je     c0036e18 <__ssprint_r+0x148>
c0036d1e:	8b 53 10             	mov    0x10(%ebx),%edx
c0036d21:	29 d0                	sub    %edx,%eax
c0036d23:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0036d26:	8b 43 14             	mov    0x14(%ebx),%eax
c0036d29:	89 55 d8             	mov    %edx,-0x28(%ebp)
c0036d2c:	8d 04 40             	lea    (%eax,%eax,2),%eax
c0036d2f:	89 c2                	mov    %eax,%edx
c0036d31:	c1 ea 1f             	shr    $0x1f,%edx
c0036d34:	01 d0                	add    %edx,%eax
c0036d36:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0036d39:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0036d3c:	d1 7d e0             	sarl   -0x20(%ebp)
c0036d3f:	8d 44 06 01          	lea    0x1(%esi,%eax,1),%eax
c0036d43:	39 45 e0             	cmp    %eax,-0x20(%ebp)
c0036d46:	0f 83 34 01 00 00    	jae    c0036e80 <__ssprint_r+0x1b0>
c0036d4c:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0036d4f:	80 e5 04             	and    $0x4,%ch
c0036d52:	0f 84 c8 00 00 00    	je     c0036e20 <__ssprint_r+0x150>
c0036d58:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036d5c:	8b 45 08             	mov    0x8(%ebp),%eax
c0036d5f:	89 04 24             	mov    %eax,(%esp)
c0036d62:	e8 59 e8 ff ff       	call   c00355c0 <_malloc_r>
c0036d67:	85 c0                	test   %eax,%eax
c0036d69:	89 c2                	mov    %eax,%edx
c0036d6b:	0f 84 e1 00 00 00    	je     c0036e52 <__ssprint_r+0x182>
c0036d71:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0036d74:	89 55 d8             	mov    %edx,-0x28(%ebp)
c0036d77:	89 44 24 08          	mov    %eax,0x8(%esp)
c0036d7b:	8b 43 10             	mov    0x10(%ebx),%eax
c0036d7e:	89 14 24             	mov    %edx,(%esp)
c0036d81:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036d85:	e8 0a b2 ff ff       	call   c0031f94 <memcpy>
c0036d8a:	0f b7 43 0c          	movzwl 0xc(%ebx),%eax
c0036d8e:	8b 55 d8             	mov    -0x28(%ebp),%edx
c0036d91:	66 25 7f fb          	and    $0xfb7f,%ax
c0036d95:	0c 80                	or     $0x80,%al
c0036d97:	66 89 43 0c          	mov    %ax,0xc(%ebx)
c0036d9b:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0036d9e:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0036da1:	89 53 10             	mov    %edx,0x10(%ebx)
c0036da4:	89 4b 14             	mov    %ecx,0x14(%ebx)
c0036da7:	2b 4d dc             	sub    -0x24(%ebp),%ecx
c0036daa:	01 d0                	add    %edx,%eax
c0036dac:	89 03                	mov    %eax,(%ebx)
c0036dae:	89 f2                	mov    %esi,%edx
c0036db0:	89 4b 08             	mov    %ecx,0x8(%ebx)
c0036db3:	89 f1                	mov    %esi,%ecx
c0036db5:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c0036db9:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0036dbc:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0036dbf:	89 04 24             	mov    %eax,(%esp)
c0036dc2:	89 55 dc             	mov    %edx,-0x24(%ebp)
c0036dc5:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c0036dc9:	e8 22 13 00 00       	call   c00380f0 <memmove>
c0036dce:	8b 03                	mov    (%ebx),%eax
c0036dd0:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0036dd3:	8b 55 dc             	mov    -0x24(%ebp),%edx
c0036dd6:	29 53 08             	sub    %edx,0x8(%ebx)
c0036dd9:	01 c8                	add    %ecx,%eax
c0036ddb:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0036dde:	89 03                	mov    %eax,(%ebx)
c0036de0:	8b 51 08             	mov    0x8(%ecx),%edx
c0036de3:	29 f2                	sub    %esi,%edx
c0036de5:	85 d2                	test   %edx,%edx
c0036de7:	89 51 08             	mov    %edx,0x8(%ecx)
c0036dea:	0f 84 98 00 00 00    	je     c0036e88 <__ssprint_r+0x1b8>
c0036df0:	8b 77 04             	mov    0x4(%edi),%esi
c0036df3:	83 c7 08             	add    $0x8,%edi
c0036df6:	8b 4f f8             	mov    -0x8(%edi),%ecx
c0036df9:	85 f6                	test   %esi,%esi
c0036dfb:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0036dfe:	74 f0                	je     c0036df0 <__ssprint_r+0x120>
c0036e00:	8b 53 08             	mov    0x8(%ebx),%edx
c0036e03:	39 d6                	cmp    %edx,%esi
c0036e05:	0f 83 04 ff ff ff    	jae    c0036d0f <__ssprint_r+0x3f>
c0036e0b:	89 f2                	mov    %esi,%edx
c0036e0d:	89 f1                	mov    %esi,%ecx
c0036e0f:	eb a4                	jmp    c0036db5 <__ssprint_r+0xe5>
c0036e11:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036e18:	89 d1                	mov    %edx,%ecx
c0036e1a:	eb 99                	jmp    c0036db5 <__ssprint_r+0xe5>
c0036e1c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036e20:	89 44 24 08          	mov    %eax,0x8(%esp)
c0036e24:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0036e27:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036e2b:	8b 45 08             	mov    0x8(%ebp),%eax
c0036e2e:	89 04 24             	mov    %eax,(%esp)
c0036e31:	e8 4a 13 00 00       	call   c0038180 <_realloc_r>
c0036e36:	85 c0                	test   %eax,%eax
c0036e38:	89 c2                	mov    %eax,%edx
c0036e3a:	0f 85 5b ff ff ff    	jne    c0036d9b <__ssprint_r+0xcb>
c0036e40:	8b 43 10             	mov    0x10(%ebx),%eax
c0036e43:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036e47:	8b 45 08             	mov    0x8(%ebp),%eax
c0036e4a:	89 04 24             	mov    %eax,(%esp)
c0036e4d:	e8 3e 10 00 00       	call   c0037e90 <_free_r>
c0036e52:	8b 45 08             	mov    0x8(%ebp),%eax
c0036e55:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0036e5b:	8b 45 10             	mov    0x10(%ebp),%eax
c0036e5e:	66 83 4b 0c 40       	orw    $0x40,0xc(%ebx)
c0036e63:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
c0036e6a:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c0036e71:	83 c4 2c             	add    $0x2c,%esp
c0036e74:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0036e79:	5b                   	pop    %ebx
c0036e7a:	5e                   	pop    %esi
c0036e7b:	5f                   	pop    %edi
c0036e7c:	5d                   	pop    %ebp
c0036e7d:	c3                   	ret    
c0036e7e:	66 90                	xchg   %ax,%ax
c0036e80:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0036e83:	e9 c7 fe ff ff       	jmp    c0036d4f <__ssprint_r+0x7f>
c0036e88:	c7 41 04 00 00 00 00 	movl   $0x0,0x4(%ecx)
c0036e8f:	83 c4 2c             	add    $0x2c,%esp
c0036e92:	31 c0                	xor    %eax,%eax
c0036e94:	5b                   	pop    %ebx
c0036e95:	5e                   	pop    %esi
c0036e96:	5f                   	pop    %edi
c0036e97:	5d                   	pop    %ebp
c0036e98:	c3                   	ret    
c0036e99:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036ea0:	8b 45 10             	mov    0x10(%ebp),%eax
c0036ea3:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c0036eaa:	83 c4 2c             	add    $0x2c,%esp
c0036ead:	31 c0                	xor    %eax,%eax
c0036eaf:	5b                   	pop    %ebx
c0036eb0:	5e                   	pop    %esi
c0036eb1:	5f                   	pop    %edi
c0036eb2:	5d                   	pop    %ebp
c0036eb3:	c3                   	ret    
c0036eb4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036eba:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

c0036ec0 <_svfiprintf_r>:
c0036ec0:	55                   	push   %ebp
c0036ec1:	89 e5                	mov    %esp,%ebp
c0036ec3:	57                   	push   %edi
c0036ec4:	56                   	push   %esi
c0036ec5:	53                   	push   %ebx
c0036ec6:	81 ec cc 00 00 00    	sub    $0xcc,%esp
c0036ecc:	8b 45 0c             	mov    0xc(%ebp),%eax
c0036ecf:	f6 40 0c 80          	testb  $0x80,0xc(%eax)
c0036ed3:	74 0b                	je     c0036ee0 <_svfiprintf_r+0x20>
c0036ed5:	8b 50 10             	mov    0x10(%eax),%edx
c0036ed8:	85 d2                	test   %edx,%edx
c0036eda:	0f 84 1c 0d 00 00    	je     c0037bfc <_svfiprintf_r+0xd3c>
c0036ee0:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0036ee3:	8d 5d a7             	lea    -0x59(%ebp),%ebx
c0036ee6:	89 c6                	mov    %eax,%esi
c0036ee8:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%ebp)
c0036eee:	29 d8                	sub    %ebx,%eax
c0036ef0:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%ebp)
c0036ef7:	00 00 00 
c0036efa:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c0036f01:	00 00 00 
c0036f04:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0036f0b:	00 00 00 
c0036f0e:	c7 85 50 ff ff ff 00 	movl   $0x0,-0xb0(%ebp)
c0036f15:	00 00 00 
c0036f18:	89 85 3c ff ff ff    	mov    %eax,-0xc4(%ebp)
c0036f1e:	8b 45 10             	mov    0x10(%ebp),%eax
c0036f21:	8b 5d 10             	mov    0x10(%ebp),%ebx
c0036f24:	0f b6 00             	movzbl (%eax),%eax
c0036f27:	84 c0                	test   %al,%al
c0036f29:	74 58                	je     c0036f83 <_svfiprintf_r+0xc3>
c0036f2b:	3c 25                	cmp    $0x25,%al
c0036f2d:	75 13                	jne    c0036f42 <_svfiprintf_r+0x82>
c0036f2f:	eb 52                	jmp    c0036f83 <_svfiprintf_r+0xc3>
c0036f31:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036f38:	84 c0                	test   %al,%al
c0036f3a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036f40:	74 0a                	je     c0036f4c <_svfiprintf_r+0x8c>
c0036f42:	83 c3 01             	add    $0x1,%ebx
c0036f45:	0f b6 03             	movzbl (%ebx),%eax
c0036f48:	3c 25                	cmp    $0x25,%al
c0036f4a:	75 ec                	jne    c0036f38 <_svfiprintf_r+0x78>
c0036f4c:	89 df                	mov    %ebx,%edi
c0036f4e:	2b 7d 10             	sub    0x10(%ebp),%edi
c0036f51:	74 30                	je     c0036f83 <_svfiprintf_r+0xc3>
c0036f53:	8b 45 10             	mov    0x10(%ebp),%eax
c0036f56:	83 c6 08             	add    $0x8,%esi
c0036f59:	89 7e fc             	mov    %edi,-0x4(%esi)
c0036f5c:	01 bd 7c ff ff ff    	add    %edi,-0x84(%ebp)
c0036f62:	89 46 f8             	mov    %eax,-0x8(%esi)
c0036f65:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0036f6b:	83 c0 01             	add    $0x1,%eax
c0036f6e:	83 f8 07             	cmp    $0x7,%eax
c0036f71:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0036f77:	0f 8f eb 0a 00 00    	jg     c0037a68 <_svfiprintf_r+0xba8>
c0036f7d:	01 bd 50 ff ff ff    	add    %edi,-0xb0(%ebp)
c0036f83:	80 3b 00             	cmpb   $0x0,(%ebx)
c0036f86:	0f 84 11 09 00 00    	je     c003789d <_svfiprintf_r+0x9dd>
c0036f8c:	8d 43 01             	lea    0x1(%ebx),%eax
c0036f8f:	31 ff                	xor    %edi,%edi
c0036f91:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c0036f98:	c7 85 5c ff ff ff ff 	movl   $0xffffffff,-0xa4(%ebp)
c0036f9f:	ff ff ff 
c0036fa2:	c7 85 54 ff ff ff 00 	movl   $0x0,-0xac(%ebp)
c0036fa9:	00 00 00 
c0036fac:	c7 85 64 ff ff ff 00 	movl   $0x0,-0x9c(%ebp)
c0036fb3:	00 00 00 
c0036fb6:	8d 50 01             	lea    0x1(%eax),%edx
c0036fb9:	0f be 00             	movsbl (%eax),%eax
c0036fbc:	8d 48 e0             	lea    -0x20(%eax),%ecx
c0036fbf:	83 f9 58             	cmp    $0x58,%ecx
c0036fc2:	0f 87 63 03 00 00    	ja     c003732b <_svfiprintf_r+0x46b>
c0036fc8:	ff 24 8d e8 91 03 c0 	jmp    *-0x3ffc6e18(,%ecx,4)
c0036fcf:	90                   	nop
c0036fd0:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c0036fd7:	89 d0                	mov    %edx,%eax
c0036fd9:	eb db                	jmp    c0036fb6 <_svfiprintf_r+0xf6>
c0036fdb:	8b 45 14             	mov    0x14(%ebp),%eax
c0036fde:	8b 5d 14             	mov    0x14(%ebp),%ebx
c0036fe1:	8b 00                	mov    (%eax),%eax
c0036fe3:	83 c3 04             	add    $0x4,%ebx
c0036fe6:	89 5d 14             	mov    %ebx,0x14(%ebp)
c0036fe9:	85 c0                	test   %eax,%eax
c0036feb:	89 85 54 ff ff ff    	mov    %eax,-0xac(%ebp)
c0036ff1:	79 e4                	jns    c0036fd7 <_svfiprintf_r+0x117>
c0036ff3:	f7 9d 54 ff ff ff    	negl   -0xac(%ebp)
c0036ff9:	83 8d 64 ff ff ff 04 	orl    $0x4,-0x9c(%ebp)
c0037000:	89 d0                	mov    %edx,%eax
c0037002:	eb b2                	jmp    c0036fb6 <_svfiprintf_r+0xf6>
c0037004:	bf 2b 00 00 00       	mov    $0x2b,%edi
c0037009:	89 d0                	mov    %edx,%eax
c003700b:	eb a9                	jmp    c0036fb6 <_svfiprintf_r+0xf6>
c003700d:	8b 45 14             	mov    0x14(%ebp),%eax
c0037010:	83 8d 64 ff ff ff 02 	orl    $0x2,-0x9c(%ebp)
c0037017:	89 55 10             	mov    %edx,0x10(%ebp)
c003701a:	ba 02 00 00 00       	mov    $0x2,%edx
c003701f:	8b 08                	mov    (%eax),%ecx
c0037021:	83 c0 04             	add    $0x4,%eax
c0037024:	c6 85 72 ff ff ff 30 	movb   $0x30,-0x8e(%ebp)
c003702b:	c6 85 73 ff ff ff 78 	movb   $0x78,-0x8d(%ebp)
c0037032:	89 45 14             	mov    %eax,0x14(%ebp)
c0037035:	c7 85 44 ff ff ff 97 	movl   $0xc0038e97,-0xbc(%ebp)
c003703c:	8e 03 c0 
c003703f:	90                   	nop
c0037040:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c0037047:	31 ff                	xor    %edi,%edi
c0037049:	8b 9d 64 ff ff ff    	mov    -0x9c(%ebp),%ebx
c003704f:	89 d8                	mov    %ebx,%eax
c0037051:	24 7f                	and    $0x7f,%al
c0037053:	83 bd 5c ff ff ff 00 	cmpl   $0x0,-0xa4(%ebp)
c003705a:	0f 48 c3             	cmovs  %ebx,%eax
c003705d:	89 85 64 ff ff ff    	mov    %eax,-0x9c(%ebp)
c0037063:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0037069:	85 c0                	test   %eax,%eax
c003706b:	75 08                	jne    c0037075 <_svfiprintf_r+0x1b5>
c003706d:	85 c9                	test   %ecx,%ecx
c003706f:	0f 84 03 08 00 00    	je     c0037878 <_svfiprintf_r+0x9b8>
c0037075:	80 fa 01             	cmp    $0x1,%dl
c0037078:	0f 84 8a 0a 00 00    	je     c0037b08 <_svfiprintf_r+0xc48>
c003707e:	80 fa 02             	cmp    $0x2,%dl
c0037081:	8d 5d a8             	lea    -0x58(%ebp),%ebx
c0037084:	0f 85 86 01 00 00    	jne    c0037210 <_svfiprintf_r+0x350>
c003708a:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c0037090:	89 c8                	mov    %ecx,%eax
c0037092:	83 eb 01             	sub    $0x1,%ebx
c0037095:	83 e0 0f             	and    $0xf,%eax
c0037098:	0f b6 04 02          	movzbl (%edx,%eax,1),%eax
c003709c:	c1 e9 04             	shr    $0x4,%ecx
c003709f:	85 c9                	test   %ecx,%ecx
c00370a1:	88 03                	mov    %al,(%ebx)
c00370a3:	75 eb                	jne    c0037090 <_svfiprintf_r+0x1d0>
c00370a5:	8d 45 a8             	lea    -0x58(%ebp),%eax
c00370a8:	29 d8                	sub    %ebx,%eax
c00370aa:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c00370b0:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c00370b6:	8b 8d 58 ff ff ff    	mov    -0xa8(%ebp),%ecx
c00370bc:	39 c1                	cmp    %eax,%ecx
c00370be:	0f 4d c1             	cmovge %ecx,%eax
c00370c1:	89 85 60 ff ff ff    	mov    %eax,-0xa0(%ebp)
c00370c7:	89 f8                	mov    %edi,%eax
c00370c9:	3c 01                	cmp    $0x1,%al
c00370cb:	83 9d 60 ff ff ff ff 	sbbl   $0xffffffff,-0xa0(%ebp)
c00370d2:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
c00370d8:	8b 8d 64 ff ff ff    	mov    -0x9c(%ebp),%ecx
c00370de:	89 d0                	mov    %edx,%eax
c00370e0:	89 cf                	mov    %ecx,%edi
c00370e2:	83 c0 02             	add    $0x2,%eax
c00370e5:	83 e7 02             	and    $0x2,%edi
c00370e8:	89 bd 4c ff ff ff    	mov    %edi,-0xb4(%ebp)
c00370ee:	89 cf                	mov    %ecx,%edi
c00370f0:	0f 44 c2             	cmove  %edx,%eax
c00370f3:	81 e7 84 00 00 00    	and    $0x84,%edi
c00370f9:	89 85 60 ff ff ff    	mov    %eax,-0xa0(%ebp)
c00370ff:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c0037105:	0f 85 cd 04 00 00    	jne    c00375d8 <_svfiprintf_r+0x718>
c003710b:	8b bd 54 ff ff ff    	mov    -0xac(%ebp),%edi
c0037111:	2b bd 60 ff ff ff    	sub    -0xa0(%ebp),%edi
c0037117:	85 ff                	test   %edi,%edi
c0037119:	0f 8e b9 04 00 00    	jle    c00375d8 <_svfiprintf_r+0x718>
c003711f:	83 ff 10             	cmp    $0x10,%edi
c0037122:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037128:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003712e:	7e 7c                	jle    c00371ac <_svfiprintf_r+0x2ec>
c0037130:	89 9d 40 ff ff ff    	mov    %ebx,-0xc0(%ebp)
c0037136:	89 f1                	mov    %esi,%ecx
c0037138:	8b 5d 08             	mov    0x8(%ebp),%ebx
c003713b:	8b 75 0c             	mov    0xc(%ebp),%esi
c003713e:	eb 08                	jmp    c0037148 <_svfiprintf_r+0x288>
c0037140:	83 ef 10             	sub    $0x10,%edi
c0037143:	83 ff 10             	cmp    $0x10,%edi
c0037146:	7e 5c                	jle    c00371a4 <_svfiprintf_r+0x2e4>
c0037148:	83 c0 01             	add    $0x1,%eax
c003714b:	83 c2 10             	add    $0x10,%edx
c003714e:	c7 01 5c 93 03 c0    	movl   $0xc003935c,(%ecx)
c0037154:	83 c1 08             	add    $0x8,%ecx
c0037157:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c003715e:	83 f8 07             	cmp    $0x7,%eax
c0037161:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037167:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003716d:	7e d1                	jle    c0037140 <_svfiprintf_r+0x280>
c003716f:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037175:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037179:	89 74 24 04          	mov    %esi,0x4(%esp)
c003717d:	89 1c 24             	mov    %ebx,(%esp)
c0037180:	e8 4b fb ff ff       	call   c0036cd0 <__ssprint_r>
c0037185:	85 c0                	test   %eax,%eax
c0037187:	0f 85 3b 07 00 00    	jne    c00378c8 <_svfiprintf_r+0xa08>
c003718d:	83 ef 10             	sub    $0x10,%edi
c0037190:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037196:	83 ff 10             	cmp    $0x10,%edi
c0037199:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003719f:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c00371a2:	7f a4                	jg     c0037148 <_svfiprintf_r+0x288>
c00371a4:	8b 9d 40 ff ff ff    	mov    -0xc0(%ebp),%ebx
c00371aa:	89 ce                	mov    %ecx,%esi
c00371ac:	83 c0 01             	add    $0x1,%eax
c00371af:	01 fa                	add    %edi,%edx
c00371b1:	c7 06 5c 93 03 c0    	movl   $0xc003935c,(%esi)
c00371b7:	83 c6 08             	add    $0x8,%esi
c00371ba:	89 7e fc             	mov    %edi,-0x4(%esi)
c00371bd:	83 f8 07             	cmp    $0x7,%eax
c00371c0:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00371c6:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00371cc:	0f 8e 12 04 00 00    	jle    c00375e4 <_svfiprintf_r+0x724>
c00371d2:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00371d8:	89 44 24 08          	mov    %eax,0x8(%esp)
c00371dc:	8b 45 0c             	mov    0xc(%ebp),%eax
c00371df:	89 44 24 04          	mov    %eax,0x4(%esp)
c00371e3:	8b 45 08             	mov    0x8(%ebp),%eax
c00371e6:	89 04 24             	mov    %eax,(%esp)
c00371e9:	e8 e2 fa ff ff       	call   c0036cd0 <__ssprint_r>
c00371ee:	85 c0                	test   %eax,%eax
c00371f0:	0f 85 d2 06 00 00    	jne    c00378c8 <_svfiprintf_r+0xa08>
c00371f6:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00371fc:	8d 75 a8             	lea    -0x58(%ebp),%esi
c00371ff:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037205:	e9 da 03 00 00       	jmp    c00375e4 <_svfiprintf_r+0x724>
c003720a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037210:	89 c8                	mov    %ecx,%eax
c0037212:	83 eb 01             	sub    $0x1,%ebx
c0037215:	83 e0 07             	and    $0x7,%eax
c0037218:	c1 e9 03             	shr    $0x3,%ecx
c003721b:	83 c0 30             	add    $0x30,%eax
c003721e:	85 c9                	test   %ecx,%ecx
c0037220:	88 03                	mov    %al,(%ebx)
c0037222:	75 ec                	jne    c0037210 <_svfiprintf_r+0x350>
c0037224:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
c003722b:	89 da                	mov    %ebx,%edx
c003722d:	0f 84 72 fe ff ff    	je     c00370a5 <_svfiprintf_r+0x1e5>
c0037233:	3c 30                	cmp    $0x30,%al
c0037235:	0f 84 6a fe ff ff    	je     c00370a5 <_svfiprintf_r+0x1e5>
c003723b:	83 eb 01             	sub    $0x1,%ebx
c003723e:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0037241:	29 d8                	sub    %ebx,%eax
c0037243:	c6 42 ff 30          	movb   $0x30,-0x1(%edx)
c0037247:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c003724d:	e9 5e fe ff ff       	jmp    c00370b0 <_svfiprintf_r+0x1f0>
c0037252:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c0037259:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c0037260:	89 55 10             	mov    %edx,0x10(%ebp)
c0037263:	8b 45 14             	mov    0x14(%ebp),%eax
c0037266:	0f 85 48 01 00 00    	jne    c00373b4 <_svfiprintf_r+0x4f4>
c003726c:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c0037273:	0f 84 3b 01 00 00    	je     c00373b4 <_svfiprintf_r+0x4f4>
c0037279:	0f b7 08             	movzwl (%eax),%ecx
c003727c:	83 c0 04             	add    $0x4,%eax
c003727f:	31 d2                	xor    %edx,%edx
c0037281:	89 45 14             	mov    %eax,0x14(%ebp)
c0037284:	e9 b7 fd ff ff       	jmp    c0037040 <_svfiprintf_r+0x180>
c0037289:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c0037290:	89 f8                	mov    %edi,%eax
c0037292:	89 55 10             	mov    %edx,0x10(%ebp)
c0037295:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
c003729b:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c00372a2:	8b 45 14             	mov    0x14(%ebp),%eax
c00372a5:	75 0d                	jne    c00372b4 <_svfiprintf_r+0x3f4>
c00372a7:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c00372ae:	0f 85 f2 08 00 00    	jne    c0037ba6 <_svfiprintf_r+0xce6>
c00372b4:	8b 08                	mov    (%eax),%ecx
c00372b6:	83 c0 04             	add    $0x4,%eax
c00372b9:	89 45 14             	mov    %eax,0x14(%ebp)
c00372bc:	85 c9                	test   %ecx,%ecx
c00372be:	0f 88 f3 08 00 00    	js     c0037bb7 <_svfiprintf_r+0xcf7>
c00372c4:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c00372cb:	ba 01 00 00 00       	mov    $0x1,%edx
c00372d0:	e9 74 fd ff ff       	jmp    c0037049 <_svfiprintf_r+0x189>
c00372d5:	0f be 02             	movsbl (%edx),%eax
c00372d8:	8d 5a 01             	lea    0x1(%edx),%ebx
c00372db:	83 f8 2a             	cmp    $0x2a,%eax
c00372de:	0f 84 af 09 00 00    	je     c0037c93 <_svfiprintf_r+0xdd3>
c00372e4:	8d 48 d0             	lea    -0x30(%eax),%ecx
c00372e7:	31 d2                	xor    %edx,%edx
c00372e9:	83 f9 09             	cmp    $0x9,%ecx
c00372ec:	0f 87 90 09 00 00    	ja     c0037c82 <_svfiprintf_r+0xdc2>
c00372f2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00372f8:	8d 04 92             	lea    (%edx,%edx,4),%eax
c00372fb:	83 c3 01             	add    $0x1,%ebx
c00372fe:	8d 14 41             	lea    (%ecx,%eax,2),%edx
c0037301:	0f be 43 ff          	movsbl -0x1(%ebx),%eax
c0037305:	8d 48 d0             	lea    -0x30(%eax),%ecx
c0037308:	83 f9 09             	cmp    $0x9,%ecx
c003730b:	76 eb                	jbe    c00372f8 <_svfiprintf_r+0x438>
c003730d:	85 d2                	test   %edx,%edx
c003730f:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
c0037314:	0f 48 d1             	cmovs  %ecx,%edx
c0037317:	8d 48 e0             	lea    -0x20(%eax),%ecx
c003731a:	83 f9 58             	cmp    $0x58,%ecx
c003731d:	89 95 5c ff ff ff    	mov    %edx,-0xa4(%ebp)
c0037323:	89 da                	mov    %ebx,%edx
c0037325:	0f 86 9d fc ff ff    	jbe    c0036fc8 <_svfiprintf_r+0x108>
c003732b:	89 fb                	mov    %edi,%ebx
c003732d:	85 c0                	test   %eax,%eax
c003732f:	89 55 10             	mov    %edx,0x10(%ebp)
c0037332:	88 9d 71 ff ff ff    	mov    %bl,-0x8f(%ebp)
c0037338:	0f 84 5f 05 00 00    	je     c003789d <_svfiprintf_r+0x9dd>
c003733e:	88 45 80             	mov    %al,-0x80(%ebp)
c0037341:	8d 5d 80             	lea    -0x80(%ebp),%ebx
c0037344:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c003734b:	c7 85 60 ff ff ff 01 	movl   $0x1,-0xa0(%ebp)
c0037352:	00 00 00 
c0037355:	c7 85 58 ff ff ff 01 	movl   $0x1,-0xa8(%ebp)
c003735c:	00 00 00 
c003735f:	e9 5a 01 00 00       	jmp    c00374be <_svfiprintf_r+0x5fe>
c0037364:	31 db                	xor    %ebx,%ebx
c0037366:	8d 48 d0             	lea    -0x30(%eax),%ecx
c0037369:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0037370:	8d 04 9b             	lea    (%ebx,%ebx,4),%eax
c0037373:	83 c2 01             	add    $0x1,%edx
c0037376:	8d 1c 41             	lea    (%ecx,%eax,2),%ebx
c0037379:	0f be 42 ff          	movsbl -0x1(%edx),%eax
c003737d:	8d 48 d0             	lea    -0x30(%eax),%ecx
c0037380:	83 f9 09             	cmp    $0x9,%ecx
c0037383:	76 eb                	jbe    c0037370 <_svfiprintf_r+0x4b0>
c0037385:	89 9d 54 ff ff ff    	mov    %ebx,-0xac(%ebp)
c003738b:	e9 2c fc ff ff       	jmp    c0036fbc <_svfiprintf_r+0xfc>
c0037390:	81 8d 64 ff ff ff 80 	orl    $0x80,-0x9c(%ebp)
c0037397:	00 00 00 
c003739a:	89 d0                	mov    %edx,%eax
c003739c:	e9 15 fc ff ff       	jmp    c0036fb6 <_svfiprintf_r+0xf6>
c00373a1:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c00373a8:	89 55 10             	mov    %edx,0x10(%ebp)
c00373ab:	8b 45 14             	mov    0x14(%ebp),%eax
c00373ae:	0f 84 b8 fe ff ff    	je     c003726c <_svfiprintf_r+0x3ac>
c00373b4:	8b 08                	mov    (%eax),%ecx
c00373b6:	83 c0 04             	add    $0x4,%eax
c00373b9:	31 d2                	xor    %edx,%edx
c00373bb:	89 45 14             	mov    %eax,0x14(%ebp)
c00373be:	e9 7d fc ff ff       	jmp    c0037040 <_svfiprintf_r+0x180>
c00373c3:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c00373ca:	89 f8                	mov    %edi,%eax
c00373cc:	89 55 10             	mov    %edx,0x10(%ebp)
c00373cf:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
c00373d5:	0f 85 a2 07 00 00    	jne    c0037b7d <_svfiprintf_r+0xcbd>
c00373db:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c00373e2:	0f 84 95 07 00 00    	je     c0037b7d <_svfiprintf_r+0xcbd>
c00373e8:	8b 45 14             	mov    0x14(%ebp),%eax
c00373eb:	0f b7 9d 50 ff ff ff 	movzwl -0xb0(%ebp),%ebx
c00373f2:	8b 00                	mov    (%eax),%eax
c00373f4:	66 89 18             	mov    %bx,(%eax)
c00373f7:	8b 45 14             	mov    0x14(%ebp),%eax
c00373fa:	83 c0 04             	add    $0x4,%eax
c00373fd:	89 45 14             	mov    %eax,0x14(%ebp)
c0037400:	e9 19 fb ff ff       	jmp    c0036f1e <_svfiprintf_r+0x5e>
c0037405:	89 fb                	mov    %edi,%ebx
c0037407:	89 55 10             	mov    %edx,0x10(%ebp)
c003740a:	88 9d 71 ff ff ff    	mov    %bl,-0x8f(%ebp)
c0037410:	c7 85 44 ff ff ff 97 	movl   $0xc0038e97,-0xbc(%ebp)
c0037417:	8e 03 c0 
c003741a:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c0037421:	8b 5d 14             	mov    0x14(%ebp),%ebx
c0037424:	75 0d                	jne    c0037433 <_svfiprintf_r+0x573>
c0037426:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c003742d:	0f 85 65 07 00 00    	jne    c0037b98 <_svfiprintf_r+0xcd8>
c0037433:	8b 0b                	mov    (%ebx),%ecx
c0037435:	83 c3 04             	add    $0x4,%ebx
c0037438:	89 5d 14             	mov    %ebx,0x14(%ebp)
c003743b:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
c0037442:	ba 02 00 00 00       	mov    $0x2,%edx
c0037447:	0f 84 f3 fb ff ff    	je     c0037040 <_svfiprintf_r+0x180>
c003744d:	85 c9                	test   %ecx,%ecx
c003744f:	0f 84 eb fb ff ff    	je     c0037040 <_svfiprintf_r+0x180>
c0037455:	c6 85 72 ff ff ff 30 	movb   $0x30,-0x8e(%ebp)
c003745c:	88 85 73 ff ff ff    	mov    %al,-0x8d(%ebp)
c0037462:	83 8d 64 ff ff ff 02 	orl    $0x2,-0x9c(%ebp)
c0037469:	e9 d2 fb ff ff       	jmp    c0037040 <_svfiprintf_r+0x180>
c003746e:	83 8d 64 ff ff ff 40 	orl    $0x40,-0x9c(%ebp)
c0037475:	89 d0                	mov    %edx,%eax
c0037477:	e9 3a fb ff ff       	jmp    c0036fb6 <_svfiprintf_r+0xf6>
c003747c:	89 f8                	mov    %edi,%eax
c003747e:	89 55 10             	mov    %edx,0x10(%ebp)
c0037481:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
c0037487:	e9 0f fe ff ff       	jmp    c003729b <_svfiprintf_r+0x3db>
c003748c:	8b 45 14             	mov    0x14(%ebp),%eax
c003748f:	8d 5d 80             	lea    -0x80(%ebp),%ebx
c0037492:	89 55 10             	mov    %edx,0x10(%ebp)
c0037495:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c003749c:	c7 85 60 ff ff ff 01 	movl   $0x1,-0xa0(%ebp)
c00374a3:	00 00 00 
c00374a6:	8b 00                	mov    (%eax),%eax
c00374a8:	c7 85 58 ff ff ff 01 	movl   $0x1,-0xa8(%ebp)
c00374af:	00 00 00 
c00374b2:	88 45 80             	mov    %al,-0x80(%ebp)
c00374b5:	8b 45 14             	mov    0x14(%ebp),%eax
c00374b8:	83 c0 04             	add    $0x4,%eax
c00374bb:	89 45 14             	mov    %eax,0x14(%ebp)
c00374be:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c00374c5:	00 00 00 
c00374c8:	e9 05 fc ff ff       	jmp    c00370d2 <_svfiprintf_r+0x212>
c00374cd:	89 fb                	mov    %edi,%ebx
c00374cf:	89 55 10             	mov    %edx,0x10(%ebp)
c00374d2:	88 9d 71 ff ff ff    	mov    %bl,-0x8f(%ebp)
c00374d8:	c7 85 44 ff ff ff 86 	movl   $0xc0038e86,-0xbc(%ebp)
c00374df:	8e 03 c0 
c00374e2:	e9 33 ff ff ff       	jmp    c003741a <_svfiprintf_r+0x55a>
c00374e7:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c00374ee:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c00374f5:	89 55 10             	mov    %edx,0x10(%ebp)
c00374f8:	8b 45 14             	mov    0x14(%ebp),%eax
c00374fb:	75 39                	jne    c0037536 <_svfiprintf_r+0x676>
c00374fd:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c0037504:	74 30                	je     c0037536 <_svfiprintf_r+0x676>
c0037506:	0f b7 08             	movzwl (%eax),%ecx
c0037509:	83 c0 04             	add    $0x4,%eax
c003750c:	ba 01 00 00 00       	mov    $0x1,%edx
c0037511:	89 45 14             	mov    %eax,0x14(%ebp)
c0037514:	e9 27 fb ff ff       	jmp    c0037040 <_svfiprintf_r+0x180>
c0037519:	83 8d 64 ff ff ff 01 	orl    $0x1,-0x9c(%ebp)
c0037520:	89 d0                	mov    %edx,%eax
c0037522:	e9 8f fa ff ff       	jmp    c0036fb6 <_svfiprintf_r+0xf6>
c0037527:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c003752e:	89 55 10             	mov    %edx,0x10(%ebp)
c0037531:	8b 45 14             	mov    0x14(%ebp),%eax
c0037534:	74 c7                	je     c00374fd <_svfiprintf_r+0x63d>
c0037536:	8b 08                	mov    (%eax),%ecx
c0037538:	83 c0 04             	add    $0x4,%eax
c003753b:	ba 01 00 00 00       	mov    $0x1,%edx
c0037540:	89 45 14             	mov    %eax,0x14(%ebp)
c0037543:	e9 f8 fa ff ff       	jmp    c0037040 <_svfiprintf_r+0x180>
c0037548:	8b 45 14             	mov    0x14(%ebp),%eax
c003754b:	89 55 10             	mov    %edx,0x10(%ebp)
c003754e:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c0037555:	8b 18                	mov    (%eax),%ebx
c0037557:	8d 50 04             	lea    0x4(%eax),%edx
c003755a:	85 db                	test   %ebx,%ebx
c003755c:	0f 84 cc 06 00 00    	je     c0037c2e <_svfiprintf_r+0xd6e>
c0037562:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
c0037568:	89 95 60 ff ff ff    	mov    %edx,-0xa0(%ebp)
c003756e:	85 ff                	test   %edi,%edi
c0037570:	0f 88 59 06 00 00    	js     c0037bcf <_svfiprintf_r+0xd0f>
c0037576:	89 7c 24 08          	mov    %edi,0x8(%esp)
c003757a:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0037581:	00 
c0037582:	89 1c 24             	mov    %ebx,(%esp)
c0037585:	e8 76 e7 ff ff       	call   c0035d00 <memchr>
c003758a:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
c0037590:	85 c0                	test   %eax,%eax
c0037592:	0f 84 c5 06 00 00    	je     c0037c5d <_svfiprintf_r+0xd9d>
c0037598:	29 d8                	sub    %ebx,%eax
c003759a:	39 f8                	cmp    %edi,%eax
c003759c:	0f 4f c7             	cmovg  %edi,%eax
c003759f:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c00375a6:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c00375ac:	89 55 14             	mov    %edx,0x14(%ebp)
c00375af:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c00375b6:	00 00 00 
c00375b9:	e9 f2 fa ff ff       	jmp    c00370b0 <_svfiprintf_r+0x1f0>
c00375be:	89 f8                	mov    %edi,%eax
c00375c0:	84 c0                	test   %al,%al
c00375c2:	b8 20 00 00 00       	mov    $0x20,%eax
c00375c7:	0f 44 f8             	cmove  %eax,%edi
c00375ca:	89 d0                	mov    %edx,%eax
c00375cc:	e9 e5 f9 ff ff       	jmp    c0036fb6 <_svfiprintf_r+0xf6>
c00375d1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00375d8:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00375de:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00375e4:	80 bd 71 ff ff ff 00 	cmpb   $0x0,-0x8f(%ebp)
c00375eb:	74 2e                	je     c003761b <_svfiprintf_r+0x75b>
c00375ed:	83 c0 01             	add    $0x1,%eax
c00375f0:	83 c2 01             	add    $0x1,%edx
c00375f3:	8d 8d 71 ff ff ff    	lea    -0x8f(%ebp),%ecx
c00375f9:	83 c6 08             	add    $0x8,%esi
c00375fc:	89 4e f8             	mov    %ecx,-0x8(%esi)
c00375ff:	c7 46 fc 01 00 00 00 	movl   $0x1,-0x4(%esi)
c0037606:	83 f8 07             	cmp    $0x7,%eax
c0037609:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c003760f:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0037615:	0f 8f b5 04 00 00    	jg     c0037ad0 <_svfiprintf_r+0xc10>
c003761b:	8b 8d 4c ff ff ff    	mov    -0xb4(%ebp),%ecx
c0037621:	85 c9                	test   %ecx,%ecx
c0037623:	74 2e                	je     c0037653 <_svfiprintf_r+0x793>
c0037625:	83 c0 01             	add    $0x1,%eax
c0037628:	83 c2 02             	add    $0x2,%edx
c003762b:	8d 8d 72 ff ff ff    	lea    -0x8e(%ebp),%ecx
c0037631:	83 c6 08             	add    $0x8,%esi
c0037634:	89 4e f8             	mov    %ecx,-0x8(%esi)
c0037637:	c7 46 fc 02 00 00 00 	movl   $0x2,-0x4(%esi)
c003763e:	83 f8 07             	cmp    $0x7,%eax
c0037641:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037647:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003764d:	0f 8f 45 04 00 00    	jg     c0037a98 <_svfiprintf_r+0xbd8>
c0037653:	81 bd 48 ff ff ff 80 	cmpl   $0x80,-0xb8(%ebp)
c003765a:	00 00 00 
c003765d:	0f 84 9d 02 00 00    	je     c0037900 <_svfiprintf_r+0xa40>
c0037663:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
c0037669:	2b bd 58 ff ff ff    	sub    -0xa8(%ebp),%edi
c003766f:	85 ff                	test   %edi,%edi
c0037671:	0f 8e e1 00 00 00    	jle    c0037758 <_svfiprintf_r+0x898>
c0037677:	83 ff 10             	cmp    $0x10,%edi
c003767a:	0f 8e 7c 00 00 00    	jle    c00376fc <_svfiprintf_r+0x83c>
c0037680:	89 9d 5c ff ff ff    	mov    %ebx,-0xa4(%ebp)
c0037686:	89 f1                	mov    %esi,%ecx
c0037688:	8b 5d 08             	mov    0x8(%ebp),%ebx
c003768b:	8b 75 0c             	mov    0xc(%ebp),%esi
c003768e:	eb 08                	jmp    c0037698 <_svfiprintf_r+0x7d8>
c0037690:	83 ef 10             	sub    $0x10,%edi
c0037693:	83 ff 10             	cmp    $0x10,%edi
c0037696:	7e 5c                	jle    c00376f4 <_svfiprintf_r+0x834>
c0037698:	83 c0 01             	add    $0x1,%eax
c003769b:	83 c2 10             	add    $0x10,%edx
c003769e:	c7 01 4c 93 03 c0    	movl   $0xc003934c,(%ecx)
c00376a4:	83 c1 08             	add    $0x8,%ecx
c00376a7:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c00376ae:	83 f8 07             	cmp    $0x7,%eax
c00376b1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00376b7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00376bd:	7e d1                	jle    c0037690 <_svfiprintf_r+0x7d0>
c00376bf:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00376c5:	89 44 24 08          	mov    %eax,0x8(%esp)
c00376c9:	89 74 24 04          	mov    %esi,0x4(%esp)
c00376cd:	89 1c 24             	mov    %ebx,(%esp)
c00376d0:	e8 fb f5 ff ff       	call   c0036cd0 <__ssprint_r>
c00376d5:	85 c0                	test   %eax,%eax
c00376d7:	0f 85 eb 01 00 00    	jne    c00378c8 <_svfiprintf_r+0xa08>
c00376dd:	83 ef 10             	sub    $0x10,%edi
c00376e0:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00376e6:	83 ff 10             	cmp    $0x10,%edi
c00376e9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00376ef:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c00376f2:	7f a4                	jg     c0037698 <_svfiprintf_r+0x7d8>
c00376f4:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c00376fa:	89 ce                	mov    %ecx,%esi
c00376fc:	83 c0 01             	add    $0x1,%eax
c00376ff:	01 fa                	add    %edi,%edx
c0037701:	c7 06 4c 93 03 c0    	movl   $0xc003934c,(%esi)
c0037707:	83 c6 08             	add    $0x8,%esi
c003770a:	89 7e fc             	mov    %edi,-0x4(%esi)
c003770d:	83 f8 07             	cmp    $0x7,%eax
c0037710:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037716:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003771c:	7e 3a                	jle    c0037758 <_svfiprintf_r+0x898>
c003771e:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037724:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037728:	8b 45 0c             	mov    0xc(%ebp),%eax
c003772b:	89 44 24 04          	mov    %eax,0x4(%esp)
c003772f:	8b 45 08             	mov    0x8(%ebp),%eax
c0037732:	89 04 24             	mov    %eax,(%esp)
c0037735:	e8 96 f5 ff ff       	call   c0036cd0 <__ssprint_r>
c003773a:	85 c0                	test   %eax,%eax
c003773c:	0f 85 86 01 00 00    	jne    c00378c8 <_svfiprintf_r+0xa08>
c0037742:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037748:	8d 75 a8             	lea    -0x58(%ebp),%esi
c003774b:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037751:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0037758:	89 1e                	mov    %ebx,(%esi)
c003775a:	8b 9d 58 ff ff ff    	mov    -0xa8(%ebp),%ebx
c0037760:	83 c0 01             	add    $0x1,%eax
c0037763:	83 c6 08             	add    $0x8,%esi
c0037766:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003776c:	89 5e fc             	mov    %ebx,-0x4(%esi)
c003776f:	01 da                	add    %ebx,%edx
c0037771:	83 f8 07             	cmp    $0x7,%eax
c0037774:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c003777a:	0f 8f 80 02 00 00    	jg     c0037a00 <_svfiprintf_r+0xb40>
c0037780:	f6 85 64 ff ff ff 04 	testb  $0x4,-0x9c(%ebp)
c0037787:	0f 84 b9 00 00 00    	je     c0037846 <_svfiprintf_r+0x986>
c003778d:	8b bd 54 ff ff ff    	mov    -0xac(%ebp),%edi
c0037793:	2b bd 60 ff ff ff    	sub    -0xa0(%ebp),%edi
c0037799:	85 ff                	test   %edi,%edi
c003779b:	0f 8e a5 00 00 00    	jle    c0037846 <_svfiprintf_r+0x986>
c00377a1:	83 ff 10             	cmp    $0x10,%edi
c00377a4:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00377aa:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c00377b0:	7e 71                	jle    c0037823 <_svfiprintf_r+0x963>
c00377b2:	89 f1                	mov    %esi,%ecx
c00377b4:	8b 75 08             	mov    0x8(%ebp),%esi
c00377b7:	eb 0f                	jmp    c00377c8 <_svfiprintf_r+0x908>
c00377b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00377c0:	83 ef 10             	sub    $0x10,%edi
c00377c3:	83 ff 10             	cmp    $0x10,%edi
c00377c6:	7e 59                	jle    c0037821 <_svfiprintf_r+0x961>
c00377c8:	83 c0 01             	add    $0x1,%eax
c00377cb:	83 c2 10             	add    $0x10,%edx
c00377ce:	c7 01 5c 93 03 c0    	movl   $0xc003935c,(%ecx)
c00377d4:	83 c1 08             	add    $0x8,%ecx
c00377d7:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c00377de:	83 f8 07             	cmp    $0x7,%eax
c00377e1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00377e7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00377ed:	7e d1                	jle    c00377c0 <_svfiprintf_r+0x900>
c00377ef:	8b 45 0c             	mov    0xc(%ebp),%eax
c00377f2:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c00377f6:	89 34 24             	mov    %esi,(%esp)
c00377f9:	89 44 24 04          	mov    %eax,0x4(%esp)
c00377fd:	e8 ce f4 ff ff       	call   c0036cd0 <__ssprint_r>
c0037802:	85 c0                	test   %eax,%eax
c0037804:	0f 85 be 00 00 00    	jne    c00378c8 <_svfiprintf_r+0xa08>
c003780a:	83 ef 10             	sub    $0x10,%edi
c003780d:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037813:	83 ff 10             	cmp    $0x10,%edi
c0037816:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003781c:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c003781f:	7f a7                	jg     c00377c8 <_svfiprintf_r+0x908>
c0037821:	89 ce                	mov    %ecx,%esi
c0037823:	83 c0 01             	add    $0x1,%eax
c0037826:	01 fa                	add    %edi,%edx
c0037828:	83 f8 07             	cmp    $0x7,%eax
c003782b:	c7 06 5c 93 03 c0    	movl   $0xc003935c,(%esi)
c0037831:	89 7e 04             	mov    %edi,0x4(%esi)
c0037834:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c003783a:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0037840:	0f 8f ee 02 00 00    	jg     c0037b34 <_svfiprintf_r+0xc74>
c0037846:	8b 85 54 ff ff ff    	mov    -0xac(%ebp),%eax
c003784c:	8b b5 60 ff ff ff    	mov    -0xa0(%ebp),%esi
c0037852:	39 c6                	cmp    %eax,%esi
c0037854:	0f 4d c6             	cmovge %esi,%eax
c0037857:	01 85 50 ff ff ff    	add    %eax,-0xb0(%ebp)
c003785d:	85 d2                	test   %edx,%edx
c003785f:	0f 85 d3 01 00 00    	jne    c0037a38 <_svfiprintf_r+0xb78>
c0037865:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c003786c:	00 00 00 
c003786f:	8d 75 a8             	lea    -0x58(%ebp),%esi
c0037872:	e9 a7 f6 ff ff       	jmp    c0036f1e <_svfiprintf_r+0x5e>
c0037877:	90                   	nop
c0037878:	84 d2                	test   %dl,%dl
c003787a:	75 6c                	jne    c00378e8 <_svfiprintf_r+0xa28>
c003787c:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
c0037883:	74 63                	je     c00378e8 <_svfiprintf_r+0xa28>
c0037885:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
c003788b:	8d 5d a7             	lea    -0x59(%ebp),%ebx
c003788e:	c6 45 a7 30          	movb   $0x30,-0x59(%ebp)
c0037892:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0037898:	e9 13 f8 ff ff       	jmp    c00370b0 <_svfiprintf_r+0x1f0>
c003789d:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
c00378a3:	85 c0                	test   %eax,%eax
c00378a5:	74 21                	je     c00378c8 <_svfiprintf_r+0xa08>
c00378a7:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00378ad:	89 44 24 08          	mov    %eax,0x8(%esp)
c00378b1:	8b 45 0c             	mov    0xc(%ebp),%eax
c00378b4:	89 44 24 04          	mov    %eax,0x4(%esp)
c00378b8:	8b 45 08             	mov    0x8(%ebp),%eax
c00378bb:	89 04 24             	mov    %eax,(%esp)
c00378be:	e8 0d f4 ff ff       	call   c0036cd0 <__ssprint_r>
c00378c3:	90                   	nop
c00378c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00378c8:	8b 75 0c             	mov    0xc(%ebp),%esi
c00378cb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c00378d0:	f6 46 0c 40          	testb  $0x40,0xc(%esi)
c00378d4:	0f 44 85 50 ff ff ff 	cmove  -0xb0(%ebp),%eax
c00378db:	81 c4 cc 00 00 00    	add    $0xcc,%esp
c00378e1:	5b                   	pop    %ebx
c00378e2:	5e                   	pop    %esi
c00378e3:	5f                   	pop    %edi
c00378e4:	5d                   	pop    %ebp
c00378e5:	c3                   	ret    
c00378e6:	66 90                	xchg   %ax,%ax
c00378e8:	c7 85 58 ff ff ff 00 	movl   $0x0,-0xa8(%ebp)
c00378ef:	00 00 00 
c00378f2:	8d 5d a8             	lea    -0x58(%ebp),%ebx
c00378f5:	e9 b6 f7 ff ff       	jmp    c00370b0 <_svfiprintf_r+0x1f0>
c00378fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037900:	8b bd 54 ff ff ff    	mov    -0xac(%ebp),%edi
c0037906:	2b bd 60 ff ff ff    	sub    -0xa0(%ebp),%edi
c003790c:	85 ff                	test   %edi,%edi
c003790e:	0f 8e 4f fd ff ff    	jle    c0037663 <_svfiprintf_r+0x7a3>
c0037914:	83 ff 10             	cmp    $0x10,%edi
c0037917:	0f 8e 7f 00 00 00    	jle    c003799c <_svfiprintf_r+0xadc>
c003791d:	89 9d 4c ff ff ff    	mov    %ebx,-0xb4(%ebp)
c0037923:	89 f1                	mov    %esi,%ecx
c0037925:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0037928:	8b 75 0c             	mov    0xc(%ebp),%esi
c003792b:	eb 0b                	jmp    c0037938 <_svfiprintf_r+0xa78>
c003792d:	8d 76 00             	lea    0x0(%esi),%esi
c0037930:	83 ef 10             	sub    $0x10,%edi
c0037933:	83 ff 10             	cmp    $0x10,%edi
c0037936:	7e 5c                	jle    c0037994 <_svfiprintf_r+0xad4>
c0037938:	83 c0 01             	add    $0x1,%eax
c003793b:	83 c2 10             	add    $0x10,%edx
c003793e:	c7 01 4c 93 03 c0    	movl   $0xc003934c,(%ecx)
c0037944:	83 c1 08             	add    $0x8,%ecx
c0037947:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c003794e:	83 f8 07             	cmp    $0x7,%eax
c0037951:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037957:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003795d:	7e d1                	jle    c0037930 <_svfiprintf_r+0xa70>
c003795f:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037965:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037969:	89 74 24 04          	mov    %esi,0x4(%esp)
c003796d:	89 1c 24             	mov    %ebx,(%esp)
c0037970:	e8 5b f3 ff ff       	call   c0036cd0 <__ssprint_r>
c0037975:	85 c0                	test   %eax,%eax
c0037977:	0f 85 4b ff ff ff    	jne    c00378c8 <_svfiprintf_r+0xa08>
c003797d:	83 ef 10             	sub    $0x10,%edi
c0037980:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037986:	83 ff 10             	cmp    $0x10,%edi
c0037989:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003798f:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c0037992:	7f a4                	jg     c0037938 <_svfiprintf_r+0xa78>
c0037994:	8b 9d 4c ff ff ff    	mov    -0xb4(%ebp),%ebx
c003799a:	89 ce                	mov    %ecx,%esi
c003799c:	83 c0 01             	add    $0x1,%eax
c003799f:	01 fa                	add    %edi,%edx
c00379a1:	c7 06 4c 93 03 c0    	movl   $0xc003934c,(%esi)
c00379a7:	83 c6 08             	add    $0x8,%esi
c00379aa:	89 7e fc             	mov    %edi,-0x4(%esi)
c00379ad:	83 f8 07             	cmp    $0x7,%eax
c00379b0:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00379b6:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00379bc:	0f 8e a1 fc ff ff    	jle    c0037663 <_svfiprintf_r+0x7a3>
c00379c2:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00379c8:	89 44 24 08          	mov    %eax,0x8(%esp)
c00379cc:	8b 45 0c             	mov    0xc(%ebp),%eax
c00379cf:	89 44 24 04          	mov    %eax,0x4(%esp)
c00379d3:	8b 45 08             	mov    0x8(%ebp),%eax
c00379d6:	89 04 24             	mov    %eax,(%esp)
c00379d9:	e8 f2 f2 ff ff       	call   c0036cd0 <__ssprint_r>
c00379de:	85 c0                	test   %eax,%eax
c00379e0:	0f 85 e2 fe ff ff    	jne    c00378c8 <_svfiprintf_r+0xa08>
c00379e6:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00379ec:	8d 75 a8             	lea    -0x58(%ebp),%esi
c00379ef:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00379f5:	e9 69 fc ff ff       	jmp    c0037663 <_svfiprintf_r+0x7a3>
c00379fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037a00:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037a06:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037a0a:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037a0d:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037a11:	8b 45 08             	mov    0x8(%ebp),%eax
c0037a14:	89 04 24             	mov    %eax,(%esp)
c0037a17:	e8 b4 f2 ff ff       	call   c0036cd0 <__ssprint_r>
c0037a1c:	85 c0                	test   %eax,%eax
c0037a1e:	0f 85 a4 fe ff ff    	jne    c00378c8 <_svfiprintf_r+0xa08>
c0037a24:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037a2a:	8d 75 a8             	lea    -0x58(%ebp),%esi
c0037a2d:	e9 4e fd ff ff       	jmp    c0037780 <_svfiprintf_r+0x8c0>
c0037a32:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037a38:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037a3e:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037a42:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037a45:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037a49:	8b 45 08             	mov    0x8(%ebp),%eax
c0037a4c:	89 04 24             	mov    %eax,(%esp)
c0037a4f:	e8 7c f2 ff ff       	call   c0036cd0 <__ssprint_r>
c0037a54:	85 c0                	test   %eax,%eax
c0037a56:	0f 84 09 fe ff ff    	je     c0037865 <_svfiprintf_r+0x9a5>
c0037a5c:	e9 67 fe ff ff       	jmp    c00378c8 <_svfiprintf_r+0xa08>
c0037a61:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0037a68:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037a6e:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037a72:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037a75:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037a79:	8b 45 08             	mov    0x8(%ebp),%eax
c0037a7c:	89 04 24             	mov    %eax,(%esp)
c0037a7f:	e8 4c f2 ff ff       	call   c0036cd0 <__ssprint_r>
c0037a84:	85 c0                	test   %eax,%eax
c0037a86:	0f 85 3c fe ff ff    	jne    c00378c8 <_svfiprintf_r+0xa08>
c0037a8c:	8d 75 a8             	lea    -0x58(%ebp),%esi
c0037a8f:	e9 e9 f4 ff ff       	jmp    c0036f7d <_svfiprintf_r+0xbd>
c0037a94:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037a98:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037a9e:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037aa2:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037aa5:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037aa9:	8b 45 08             	mov    0x8(%ebp),%eax
c0037aac:	89 04 24             	mov    %eax,(%esp)
c0037aaf:	e8 1c f2 ff ff       	call   c0036cd0 <__ssprint_r>
c0037ab4:	85 c0                	test   %eax,%eax
c0037ab6:	0f 85 0c fe ff ff    	jne    c00378c8 <_svfiprintf_r+0xa08>
c0037abc:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037ac2:	8d 75 a8             	lea    -0x58(%ebp),%esi
c0037ac5:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037acb:	e9 83 fb ff ff       	jmp    c0037653 <_svfiprintf_r+0x793>
c0037ad0:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037ad6:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037ada:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037add:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037ae1:	8b 45 08             	mov    0x8(%ebp),%eax
c0037ae4:	89 04 24             	mov    %eax,(%esp)
c0037ae7:	e8 e4 f1 ff ff       	call   c0036cd0 <__ssprint_r>
c0037aec:	85 c0                	test   %eax,%eax
c0037aee:	0f 85 d4 fd ff ff    	jne    c00378c8 <_svfiprintf_r+0xa08>
c0037af4:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037afa:	8d 75 a8             	lea    -0x58(%ebp),%esi
c0037afd:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037b03:	e9 13 fb ff ff       	jmp    c003761b <_svfiprintf_r+0x75b>
c0037b08:	83 f9 09             	cmp    $0x9,%ecx
c0037b0b:	76 56                	jbe    c0037b63 <_svfiprintf_r+0xca3>
c0037b0d:	8d 5d a8             	lea    -0x58(%ebp),%ebx
c0037b10:	b8 cd cc cc cc       	mov    $0xcccccccd,%eax
c0037b15:	83 eb 01             	sub    $0x1,%ebx
c0037b18:	f7 e1                	mul    %ecx
c0037b1a:	c1 ea 03             	shr    $0x3,%edx
c0037b1d:	8d 04 92             	lea    (%edx,%edx,4),%eax
c0037b20:	01 c0                	add    %eax,%eax
c0037b22:	29 c1                	sub    %eax,%ecx
c0037b24:	83 c1 30             	add    $0x30,%ecx
c0037b27:	85 d2                	test   %edx,%edx
c0037b29:	88 0b                	mov    %cl,(%ebx)
c0037b2b:	89 d1                	mov    %edx,%ecx
c0037b2d:	75 e1                	jne    c0037b10 <_svfiprintf_r+0xc50>
c0037b2f:	e9 71 f5 ff ff       	jmp    c00370a5 <_svfiprintf_r+0x1e5>
c0037b34:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037b3a:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037b3e:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037b41:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037b45:	8b 45 08             	mov    0x8(%ebp),%eax
c0037b48:	89 04 24             	mov    %eax,(%esp)
c0037b4b:	e8 80 f1 ff ff       	call   c0036cd0 <__ssprint_r>
c0037b50:	85 c0                	test   %eax,%eax
c0037b52:	0f 85 70 fd ff ff    	jne    c00378c8 <_svfiprintf_r+0xa08>
c0037b58:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037b5e:	e9 e3 fc ff ff       	jmp    c0037846 <_svfiprintf_r+0x986>
c0037b63:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
c0037b69:	83 c1 30             	add    $0x30,%ecx
c0037b6c:	88 4d a7             	mov    %cl,-0x59(%ebp)
c0037b6f:	8d 5d a7             	lea    -0x59(%ebp),%ebx
c0037b72:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0037b78:	e9 33 f5 ff ff       	jmp    c00370b0 <_svfiprintf_r+0x1f0>
c0037b7d:	8b 45 14             	mov    0x14(%ebp),%eax
c0037b80:	8b 9d 50 ff ff ff    	mov    -0xb0(%ebp),%ebx
c0037b86:	8b 00                	mov    (%eax),%eax
c0037b88:	89 18                	mov    %ebx,(%eax)
c0037b8a:	8b 45 14             	mov    0x14(%ebp),%eax
c0037b8d:	83 c0 04             	add    $0x4,%eax
c0037b90:	89 45 14             	mov    %eax,0x14(%ebp)
c0037b93:	e9 86 f3 ff ff       	jmp    c0036f1e <_svfiprintf_r+0x5e>
c0037b98:	0f b7 0b             	movzwl (%ebx),%ecx
c0037b9b:	83 c3 04             	add    $0x4,%ebx
c0037b9e:	89 5d 14             	mov    %ebx,0x14(%ebp)
c0037ba1:	e9 95 f8 ff ff       	jmp    c003743b <_svfiprintf_r+0x57b>
c0037ba6:	0f bf 08             	movswl (%eax),%ecx
c0037ba9:	83 c0 04             	add    $0x4,%eax
c0037bac:	89 45 14             	mov    %eax,0x14(%ebp)
c0037baf:	85 c9                	test   %ecx,%ecx
c0037bb1:	0f 89 0d f7 ff ff    	jns    c00372c4 <_svfiprintf_r+0x404>
c0037bb7:	f7 d9                	neg    %ecx
c0037bb9:	bf 2d 00 00 00       	mov    $0x2d,%edi
c0037bbe:	c6 85 71 ff ff ff 2d 	movb   $0x2d,-0x8f(%ebp)
c0037bc5:	ba 01 00 00 00       	mov    $0x1,%edx
c0037bca:	e9 7a f4 ff ff       	jmp    c0037049 <_svfiprintf_r+0x189>
c0037bcf:	89 1c 24             	mov    %ebx,(%esp)
c0037bd2:	e8 79 f0 ff ff       	call   c0036c50 <strlen>
c0037bd7:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
c0037bdd:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c0037be4:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c0037beb:	00 00 00 
c0037bee:	89 55 14             	mov    %edx,0x14(%ebp)
c0037bf1:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0037bf7:	e9 b4 f4 ff ff       	jmp    c00370b0 <_svfiprintf_r+0x1f0>
c0037bfc:	8b 45 08             	mov    0x8(%ebp),%eax
c0037bff:	c7 44 24 04 40 00 00 	movl   $0x40,0x4(%esp)
c0037c06:	00 
c0037c07:	89 04 24             	mov    %eax,(%esp)
c0037c0a:	e8 b1 d9 ff ff       	call   c00355c0 <_malloc_r>
c0037c0f:	8b 75 0c             	mov    0xc(%ebp),%esi
c0037c12:	85 c0                	test   %eax,%eax
c0037c14:	89 06                	mov    %eax,(%esi)
c0037c16:	89 46 10             	mov    %eax,0x10(%esi)
c0037c19:	0f 84 a3 00 00 00    	je     c0037cc2 <_svfiprintf_r+0xe02>
c0037c1f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037c22:	c7 40 14 40 00 00 00 	movl   $0x40,0x14(%eax)
c0037c29:	e9 b2 f2 ff ff       	jmp    c0036ee0 <_svfiprintf_r+0x20>
c0037c2e:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
c0037c34:	b8 06 00 00 00       	mov    $0x6,%eax
c0037c39:	89 55 14             	mov    %edx,0x14(%ebp)
c0037c3c:	83 ff 06             	cmp    $0x6,%edi
c0037c3f:	0f 46 c7             	cmovbe %edi,%eax
c0037c42:	85 c0                	test   %eax,%eax
c0037c44:	0f 49 d8             	cmovns %eax,%ebx
c0037c47:	89 9d 60 ff ff ff    	mov    %ebx,-0xa0(%ebp)
c0037c4d:	bb a8 8e 03 c0       	mov    $0xc0038ea8,%ebx
c0037c52:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0037c58:	e9 61 f8 ff ff       	jmp    c00374be <_svfiprintf_r+0x5fe>
c0037c5d:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0037c63:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c0037c6a:	89 55 14             	mov    %edx,0x14(%ebp)
c0037c6d:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c0037c74:	00 00 00 
c0037c77:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0037c7d:	e9 2e f4 ff ff       	jmp    c00370b0 <_svfiprintf_r+0x1f0>
c0037c82:	89 da                	mov    %ebx,%edx
c0037c84:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c0037c8b:	00 00 00 
c0037c8e:	e9 29 f3 ff ff       	jmp    c0036fbc <_svfiprintf_r+0xfc>
c0037c93:	8b 4d 14             	mov    0x14(%ebp),%ecx
c0037c96:	89 da                	mov    %ebx,%edx
c0037c98:	8b 45 14             	mov    0x14(%ebp),%eax
c0037c9b:	8b 09                	mov    (%ecx),%ecx
c0037c9d:	83 c0 04             	add    $0x4,%eax
c0037ca0:	89 45 14             	mov    %eax,0x14(%ebp)
c0037ca3:	85 c9                	test   %ecx,%ecx
c0037ca5:	89 8d 5c ff ff ff    	mov    %ecx,-0xa4(%ebp)
c0037cab:	0f 89 26 f3 ff ff    	jns    c0036fd7 <_svfiprintf_r+0x117>
c0037cb1:	c7 85 5c ff ff ff ff 	movl   $0xffffffff,-0xa4(%ebp)
c0037cb8:	ff ff ff 
c0037cbb:	89 d0                	mov    %edx,%eax
c0037cbd:	e9 f4 f2 ff ff       	jmp    c0036fb6 <_svfiprintf_r+0xf6>
c0037cc2:	8b 45 08             	mov    0x8(%ebp),%eax
c0037cc5:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0037ccb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0037cd0:	e9 06 fc ff ff       	jmp    c00378db <_svfiprintf_r+0xa1b>
c0037cd5:	66 90                	xchg   %ax,%ax
c0037cd7:	66 90                	xchg   %ax,%ax
c0037cd9:	66 90                	xchg   %ax,%ax
c0037cdb:	66 90                	xchg   %ax,%ax
c0037cdd:	66 90                	xchg   %ax,%ax
c0037cdf:	90                   	nop

c0037ce0 <_calloc_r>:
c0037ce0:	55                   	push   %ebp
c0037ce1:	89 e5                	mov    %esp,%ebp
c0037ce3:	53                   	push   %ebx
c0037ce4:	83 ec 14             	sub    $0x14,%esp
c0037ce7:	8b 45 10             	mov    0x10(%ebp),%eax
c0037cea:	0f af 45 0c          	imul   0xc(%ebp),%eax
c0037cee:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037cf2:	8b 45 08             	mov    0x8(%ebp),%eax
c0037cf5:	89 04 24             	mov    %eax,(%esp)
c0037cf8:	e8 c3 d8 ff ff       	call   c00355c0 <_malloc_r>
c0037cfd:	85 c0                	test   %eax,%eax
c0037cff:	89 c3                	mov    %eax,%ebx
c0037d01:	0f 84 91 00 00 00    	je     c0037d98 <_calloc_r+0xb8>
c0037d07:	8b 40 fc             	mov    -0x4(%eax),%eax
c0037d0a:	83 e0 fc             	and    $0xfffffffc,%eax
c0037d0d:	83 e8 04             	sub    $0x4,%eax
c0037d10:	83 f8 24             	cmp    $0x24,%eax
c0037d13:	77 63                	ja     c0037d78 <_calloc_r+0x98>
c0037d15:	83 f8 13             	cmp    $0x13,%eax
c0037d18:	89 da                	mov    %ebx,%edx
c0037d1a:	77 1c                	ja     c0037d38 <_calloc_r+0x58>
c0037d1c:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
c0037d22:	89 d8                	mov    %ebx,%eax
c0037d24:	c7 42 04 00 00 00 00 	movl   $0x0,0x4(%edx)
c0037d2b:	c7 42 08 00 00 00 00 	movl   $0x0,0x8(%edx)
c0037d32:	83 c4 14             	add    $0x14,%esp
c0037d35:	5b                   	pop    %ebx
c0037d36:	5d                   	pop    %ebp
c0037d37:	c3                   	ret    
c0037d38:	83 f8 1b             	cmp    $0x1b,%eax
c0037d3b:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
c0037d41:	8d 53 08             	lea    0x8(%ebx),%edx
c0037d44:	c7 43 04 00 00 00 00 	movl   $0x0,0x4(%ebx)
c0037d4b:	76 cf                	jbe    c0037d1c <_calloc_r+0x3c>
c0037d4d:	83 f8 24             	cmp    $0x24,%eax
c0037d50:	c7 43 08 00 00 00 00 	movl   $0x0,0x8(%ebx)
c0037d57:	8d 53 10             	lea    0x10(%ebx),%edx
c0037d5a:	c7 43 0c 00 00 00 00 	movl   $0x0,0xc(%ebx)
c0037d61:	75 b9                	jne    c0037d1c <_calloc_r+0x3c>
c0037d63:	c7 43 10 00 00 00 00 	movl   $0x0,0x10(%ebx)
c0037d6a:	8d 53 18             	lea    0x18(%ebx),%edx
c0037d6d:	c7 43 14 00 00 00 00 	movl   $0x0,0x14(%ebx)
c0037d74:	eb a6                	jmp    c0037d1c <_calloc_r+0x3c>
c0037d76:	66 90                	xchg   %ax,%ax
c0037d78:	89 1c 24             	mov    %ebx,(%esp)
c0037d7b:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037d7f:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0037d86:	00 
c0037d87:	e8 50 a2 ff ff       	call   c0031fdc <memset>
c0037d8c:	83 c4 14             	add    $0x14,%esp
c0037d8f:	89 d8                	mov    %ebx,%eax
c0037d91:	5b                   	pop    %ebx
c0037d92:	5d                   	pop    %ebp
c0037d93:	c3                   	ret    
c0037d94:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037d98:	31 c0                	xor    %eax,%eax
c0037d9a:	eb 96                	jmp    c0037d32 <_calloc_r+0x52>
c0037d9c:	66 90                	xchg   %ax,%ax
c0037d9e:	66 90                	xchg   %ax,%ax

c0037da0 <_malloc_trim_r>:
c0037da0:	55                   	push   %ebp
c0037da1:	89 e5                	mov    %esp,%ebp
c0037da3:	57                   	push   %edi
c0037da4:	56                   	push   %esi
c0037da5:	53                   	push   %ebx
c0037da6:	83 ec 1c             	sub    $0x1c,%esp
c0037da9:	8b 75 08             	mov    0x8(%ebp),%esi
c0037dac:	89 34 24             	mov    %esi,(%esp)
c0037daf:	e8 ec df ff ff       	call   c0035da0 <__malloc_lock>
c0037db4:	a1 48 c5 03 c0       	mov    0xc003c548,%eax
c0037db9:	8b 58 04             	mov    0x4(%eax),%ebx
c0037dbc:	83 e3 fc             	and    $0xfffffffc,%ebx
c0037dbf:	89 d8                	mov    %ebx,%eax
c0037dc1:	2b 45 0c             	sub    0xc(%ebp),%eax
c0037dc4:	05 ef 0f 00 00       	add    $0xfef,%eax
c0037dc9:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0037dce:	8d b8 00 f0 ff ff    	lea    -0x1000(%eax),%edi
c0037dd4:	81 ff ff 0f 00 00    	cmp    $0xfff,%edi
c0037dda:	7e 1c                	jle    c0037df8 <_malloc_trim_r+0x58>
c0037ddc:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0037de3:	00 
c0037de4:	89 34 24             	mov    %esi,(%esp)
c0037de7:	e8 b4 ed ff ff       	call   c0036ba0 <_sbrk_r>
c0037dec:	8b 15 48 c5 03 c0    	mov    0xc003c548,%edx
c0037df2:	01 da                	add    %ebx,%edx
c0037df4:	39 d0                	cmp    %edx,%eax
c0037df6:	74 18                	je     c0037e10 <_malloc_trim_r+0x70>
c0037df8:	89 34 24             	mov    %esi,(%esp)
c0037dfb:	e8 b0 df ff ff       	call   c0035db0 <__malloc_unlock>
c0037e00:	83 c4 1c             	add    $0x1c,%esp
c0037e03:	31 c0                	xor    %eax,%eax
c0037e05:	5b                   	pop    %ebx
c0037e06:	5e                   	pop    %esi
c0037e07:	5f                   	pop    %edi
c0037e08:	5d                   	pop    %ebp
c0037e09:	c3                   	ret    
c0037e0a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037e10:	89 f8                	mov    %edi,%eax
c0037e12:	f7 d8                	neg    %eax
c0037e14:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037e18:	89 34 24             	mov    %esi,(%esp)
c0037e1b:	e8 80 ed ff ff       	call   c0036ba0 <_sbrk_r>
c0037e20:	83 f8 ff             	cmp    $0xffffffff,%eax
c0037e23:	74 2b                	je     c0037e50 <_malloc_trim_r+0xb0>
c0037e25:	a1 48 c5 03 c0       	mov    0xc003c548,%eax
c0037e2a:	29 fb                	sub    %edi,%ebx
c0037e2c:	83 cb 01             	or     $0x1,%ebx
c0037e2f:	29 3d 20 f0 06 c0    	sub    %edi,0xc006f020
c0037e35:	89 58 04             	mov    %ebx,0x4(%eax)
c0037e38:	89 34 24             	mov    %esi,(%esp)
c0037e3b:	e8 70 df ff ff       	call   c0035db0 <__malloc_unlock>
c0037e40:	83 c4 1c             	add    $0x1c,%esp
c0037e43:	b8 01 00 00 00       	mov    $0x1,%eax
c0037e48:	5b                   	pop    %ebx
c0037e49:	5e                   	pop    %esi
c0037e4a:	5f                   	pop    %edi
c0037e4b:	5d                   	pop    %ebp
c0037e4c:	c3                   	ret    
c0037e4d:	8d 76 00             	lea    0x0(%esi),%esi
c0037e50:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0037e57:	00 
c0037e58:	89 34 24             	mov    %esi,(%esp)
c0037e5b:	e8 40 ed ff ff       	call   c0036ba0 <_sbrk_r>
c0037e60:	8b 15 48 c5 03 c0    	mov    0xc003c548,%edx
c0037e66:	89 c1                	mov    %eax,%ecx
c0037e68:	29 d1                	sub    %edx,%ecx
c0037e6a:	83 f9 0f             	cmp    $0xf,%ecx
c0037e6d:	7e 89                	jle    c0037df8 <_malloc_trim_r+0x58>
c0037e6f:	2b 05 20 c5 03 c0    	sub    0xc003c520,%eax
c0037e75:	83 c9 01             	or     $0x1,%ecx
c0037e78:	89 4a 04             	mov    %ecx,0x4(%edx)
c0037e7b:	a3 20 f0 06 c0       	mov    %eax,0xc006f020
c0037e80:	e9 73 ff ff ff       	jmp    c0037df8 <_malloc_trim_r+0x58>
c0037e85:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037e89:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0037e90 <_free_r>:
c0037e90:	55                   	push   %ebp
c0037e91:	89 e5                	mov    %esp,%ebp
c0037e93:	57                   	push   %edi
c0037e94:	56                   	push   %esi
c0037e95:	53                   	push   %ebx
c0037e96:	83 ec 1c             	sub    $0x1c,%esp
c0037e99:	8b 75 0c             	mov    0xc(%ebp),%esi
c0037e9c:	8b 45 08             	mov    0x8(%ebp),%eax
c0037e9f:	85 f6                	test   %esi,%esi
c0037ea1:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0037ea4:	0f 84 fe 00 00 00    	je     c0037fa8 <_free_r+0x118>
c0037eaa:	89 04 24             	mov    %eax,(%esp)
c0037ead:	e8 ee de ff ff       	call   c0035da0 <__malloc_lock>
c0037eb2:	8b 7e fc             	mov    -0x4(%esi),%edi
c0037eb5:	8d 56 f8             	lea    -0x8(%esi),%edx
c0037eb8:	89 f8                	mov    %edi,%eax
c0037eba:	83 e0 fe             	and    $0xfffffffe,%eax
c0037ebd:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
c0037ec0:	8b 59 04             	mov    0x4(%ecx),%ebx
c0037ec3:	83 e3 fc             	and    $0xfffffffc,%ebx
c0037ec6:	39 0d 48 c5 03 c0    	cmp    %ecx,0xc003c548
c0037ecc:	0f 84 0e 01 00 00    	je     c0037fe0 <_free_r+0x150>
c0037ed2:	83 e7 01             	and    $0x1,%edi
c0037ed5:	89 59 04             	mov    %ebx,0x4(%ecx)
c0037ed8:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
c0037edf:	75 1f                	jne    c0037f00 <_free_r+0x70>
c0037ee1:	8b 76 f8             	mov    -0x8(%esi),%esi
c0037ee4:	29 f2                	sub    %esi,%edx
c0037ee6:	01 f0                	add    %esi,%eax
c0037ee8:	8b 72 08             	mov    0x8(%edx),%esi
c0037eeb:	81 fe 48 c5 03 c0    	cmp    $0xc003c548,%esi
c0037ef1:	0f 84 39 01 00 00    	je     c0038030 <_free_r+0x1a0>
c0037ef7:	8b 7a 0c             	mov    0xc(%edx),%edi
c0037efa:	89 7e 0c             	mov    %edi,0xc(%esi)
c0037efd:	89 77 08             	mov    %esi,0x8(%edi)
c0037f00:	f6 44 19 04 01       	testb  $0x1,0x4(%ecx,%ebx,1)
c0037f05:	75 21                	jne    c0037f28 <_free_r+0x98>
c0037f07:	8b 75 e0             	mov    -0x20(%ebp),%esi
c0037f0a:	01 d8                	add    %ebx,%eax
c0037f0c:	8b 59 08             	mov    0x8(%ecx),%ebx
c0037f0f:	85 f6                	test   %esi,%esi
c0037f11:	75 0c                	jne    c0037f1f <_free_r+0x8f>
c0037f13:	81 fb 48 c5 03 c0    	cmp    $0xc003c548,%ebx
c0037f19:	0f 84 21 01 00 00    	je     c0038040 <_free_r+0x1b0>
c0037f1f:	8b 49 0c             	mov    0xc(%ecx),%ecx
c0037f22:	89 4b 0c             	mov    %ecx,0xc(%ebx)
c0037f25:	89 59 08             	mov    %ebx,0x8(%ecx)
c0037f28:	89 c1                	mov    %eax,%ecx
c0037f2a:	83 c9 01             	or     $0x1,%ecx
c0037f2d:	89 4a 04             	mov    %ecx,0x4(%edx)
c0037f30:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0037f33:	89 04 02             	mov    %eax,(%edx,%eax,1)
c0037f36:	85 c9                	test   %ecx,%ecx
c0037f38:	75 56                	jne    c0037f90 <_free_r+0x100>
c0037f3a:	3d ff 01 00 00       	cmp    $0x1ff,%eax
c0037f3f:	76 6f                	jbe    c0037fb0 <_free_r+0x120>
c0037f41:	89 c1                	mov    %eax,%ecx
c0037f43:	c1 e9 09             	shr    $0x9,%ecx
c0037f46:	83 f9 04             	cmp    $0x4,%ecx
c0037f49:	0f 87 21 01 00 00    	ja     c0038070 <_free_r+0x1e0>
c0037f4f:	89 c1                	mov    %eax,%ecx
c0037f51:	c1 e9 06             	shr    $0x6,%ecx
c0037f54:	83 c1 38             	add    $0x38,%ecx
c0037f57:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0037f5a:	8d 34 9d 40 c5 03 c0 	lea    -0x3ffc3ac0(,%ebx,4),%esi
c0037f61:	8b 5e 08             	mov    0x8(%esi),%ebx
c0037f64:	39 f3                	cmp    %esi,%ebx
c0037f66:	0f 84 14 01 00 00    	je     c0038080 <_free_r+0x1f0>
c0037f6c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037f70:	8b 4b 04             	mov    0x4(%ebx),%ecx
c0037f73:	83 e1 fc             	and    $0xfffffffc,%ecx
c0037f76:	39 c8                	cmp    %ecx,%eax
c0037f78:	73 07                	jae    c0037f81 <_free_r+0xf1>
c0037f7a:	8b 5b 08             	mov    0x8(%ebx),%ebx
c0037f7d:	39 de                	cmp    %ebx,%esi
c0037f7f:	75 ef                	jne    c0037f70 <_free_r+0xe0>
c0037f81:	8b 43 0c             	mov    0xc(%ebx),%eax
c0037f84:	89 42 0c             	mov    %eax,0xc(%edx)
c0037f87:	89 5a 08             	mov    %ebx,0x8(%edx)
c0037f8a:	89 50 08             	mov    %edx,0x8(%eax)
c0037f8d:	89 53 0c             	mov    %edx,0xc(%ebx)
c0037f90:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0037f93:	89 45 08             	mov    %eax,0x8(%ebp)
c0037f96:	83 c4 1c             	add    $0x1c,%esp
c0037f99:	5b                   	pop    %ebx
c0037f9a:	5e                   	pop    %esi
c0037f9b:	5f                   	pop    %edi
c0037f9c:	5d                   	pop    %ebp
c0037f9d:	e9 0e de ff ff       	jmp    c0035db0 <__malloc_unlock>
c0037fa2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037fa8:	83 c4 1c             	add    $0x1c,%esp
c0037fab:	5b                   	pop    %ebx
c0037fac:	5e                   	pop    %esi
c0037fad:	5f                   	pop    %edi
c0037fae:	5d                   	pop    %ebp
c0037faf:	c3                   	ret    
c0037fb0:	c1 e8 03             	shr    $0x3,%eax
c0037fb3:	bb 01 00 00 00       	mov    $0x1,%ebx
c0037fb8:	89 c1                	mov    %eax,%ecx
c0037fba:	c1 f9 02             	sar    $0x2,%ecx
c0037fbd:	8d 04 c5 40 c5 03 c0 	lea    -0x3ffc3ac0(,%eax,8),%eax
c0037fc4:	d3 e3                	shl    %cl,%ebx
c0037fc6:	8b 48 08             	mov    0x8(%eax),%ecx
c0037fc9:	09 1d 44 c5 03 c0    	or     %ebx,0xc003c544
c0037fcf:	89 42 0c             	mov    %eax,0xc(%edx)
c0037fd2:	89 4a 08             	mov    %ecx,0x8(%edx)
c0037fd5:	89 50 08             	mov    %edx,0x8(%eax)
c0037fd8:	89 51 0c             	mov    %edx,0xc(%ecx)
c0037fdb:	eb b3                	jmp    c0037f90 <_free_r+0x100>
c0037fdd:	8d 76 00             	lea    0x0(%esi),%esi
c0037fe0:	01 d8                	add    %ebx,%eax
c0037fe2:	83 e7 01             	and    $0x1,%edi
c0037fe5:	75 13                	jne    c0037ffa <_free_r+0x16a>
c0037fe7:	8b 4e f8             	mov    -0x8(%esi),%ecx
c0037fea:	29 ca                	sub    %ecx,%edx
c0037fec:	01 c8                	add    %ecx,%eax
c0037fee:	8b 5a 08             	mov    0x8(%edx),%ebx
c0037ff1:	8b 4a 0c             	mov    0xc(%edx),%ecx
c0037ff4:	89 4b 0c             	mov    %ecx,0xc(%ebx)
c0037ff7:	89 59 08             	mov    %ebx,0x8(%ecx)
c0037ffa:	89 c1                	mov    %eax,%ecx
c0037ffc:	83 c9 01             	or     $0x1,%ecx
c0037fff:	3b 05 24 c5 03 c0    	cmp    0xc003c524,%eax
c0038005:	89 4a 04             	mov    %ecx,0x4(%edx)
c0038008:	89 15 48 c5 03 c0    	mov    %edx,0xc003c548
c003800e:	72 80                	jb     c0037f90 <_free_r+0x100>
c0038010:	a1 50 f0 06 c0       	mov    0xc006f050,%eax
c0038015:	89 44 24 04          	mov    %eax,0x4(%esp)
c0038019:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c003801c:	89 04 24             	mov    %eax,(%esp)
c003801f:	e8 7c fd ff ff       	call   c0037da0 <_malloc_trim_r>
c0038024:	e9 67 ff ff ff       	jmp    c0037f90 <_free_r+0x100>
c0038029:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0038030:	c7 45 e0 01 00 00 00 	movl   $0x1,-0x20(%ebp)
c0038037:	e9 c4 fe ff ff       	jmp    c0037f00 <_free_r+0x70>
c003803c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0038040:	89 c1                	mov    %eax,%ecx
c0038042:	83 c9 01             	or     $0x1,%ecx
c0038045:	89 15 54 c5 03 c0    	mov    %edx,0xc003c554
c003804b:	89 15 50 c5 03 c0    	mov    %edx,0xc003c550
c0038051:	c7 42 0c 48 c5 03 c0 	movl   $0xc003c548,0xc(%edx)
c0038058:	c7 42 08 48 c5 03 c0 	movl   $0xc003c548,0x8(%edx)
c003805f:	89 4a 04             	mov    %ecx,0x4(%edx)
c0038062:	89 04 02             	mov    %eax,(%edx,%eax,1)
c0038065:	e9 26 ff ff ff       	jmp    c0037f90 <_free_r+0x100>
c003806a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0038070:	83 f9 14             	cmp    $0x14,%ecx
c0038073:	77 23                	ja     c0038098 <_free_r+0x208>
c0038075:	83 c1 5b             	add    $0x5b,%ecx
c0038078:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c003807b:	e9 da fe ff ff       	jmp    c0037f5a <_free_r+0xca>
c0038080:	c1 f9 02             	sar    $0x2,%ecx
c0038083:	b8 01 00 00 00       	mov    $0x1,%eax
c0038088:	d3 e0                	shl    %cl,%eax
c003808a:	09 05 44 c5 03 c0    	or     %eax,0xc003c544
c0038090:	89 d8                	mov    %ebx,%eax
c0038092:	e9 ed fe ff ff       	jmp    c0037f84 <_free_r+0xf4>
c0038097:	90                   	nop
c0038098:	83 f9 54             	cmp    $0x54,%ecx
c003809b:	77 10                	ja     c00380ad <_free_r+0x21d>
c003809d:	89 c1                	mov    %eax,%ecx
c003809f:	c1 e9 0c             	shr    $0xc,%ecx
c00380a2:	83 c1 6e             	add    $0x6e,%ecx
c00380a5:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c00380a8:	e9 ad fe ff ff       	jmp    c0037f5a <_free_r+0xca>
c00380ad:	81 f9 54 01 00 00    	cmp    $0x154,%ecx
c00380b3:	77 10                	ja     c00380c5 <_free_r+0x235>
c00380b5:	89 c1                	mov    %eax,%ecx
c00380b7:	c1 e9 0f             	shr    $0xf,%ecx
c00380ba:	83 c1 77             	add    $0x77,%ecx
c00380bd:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c00380c0:	e9 95 fe ff ff       	jmp    c0037f5a <_free_r+0xca>
c00380c5:	81 f9 54 05 00 00    	cmp    $0x554,%ecx
c00380cb:	77 10                	ja     c00380dd <_free_r+0x24d>
c00380cd:	89 c1                	mov    %eax,%ecx
c00380cf:	c1 e9 12             	shr    $0x12,%ecx
c00380d2:	83 c1 7c             	add    $0x7c,%ecx
c00380d5:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c00380d8:	e9 7d fe ff ff       	jmp    c0037f5a <_free_r+0xca>
c00380dd:	bb fc 00 00 00       	mov    $0xfc,%ebx
c00380e2:	b9 7e 00 00 00       	mov    $0x7e,%ecx
c00380e7:	e9 6e fe ff ff       	jmp    c0037f5a <_free_r+0xca>
c00380ec:	66 90                	xchg   %ax,%ax
c00380ee:	66 90                	xchg   %ax,%ax

c00380f0 <memmove>:
c00380f0:	55                   	push   %ebp
c00380f1:	89 e5                	mov    %esp,%ebp
c00380f3:	56                   	push   %esi
c00380f4:	57                   	push   %edi
c00380f5:	53                   	push   %ebx
c00380f6:	8b 7d 08             	mov    0x8(%ebp),%edi
c00380f9:	8b 4d 10             	mov    0x10(%ebp),%ecx
c00380fc:	8b 75 0c             	mov    0xc(%ebp),%esi
c00380ff:	fc                   	cld    
c0038100:	39 fe                	cmp    %edi,%esi
c0038102:	73 43                	jae    c0038147 <memmove+0x57>
c0038104:	8d 5c 31 ff          	lea    -0x1(%ecx,%esi,1),%ebx
c0038108:	39 df                	cmp    %ebx,%edi
c003810a:	77 3b                	ja     c0038147 <memmove+0x57>
c003810c:	01 ce                	add    %ecx,%esi
c003810e:	01 cf                	add    %ecx,%edi
c0038110:	fd                   	std    
c0038111:	83 f9 08             	cmp    $0x8,%ecx
c0038114:	76 2b                	jbe    c0038141 <memmove+0x51>
c0038116:	89 fa                	mov    %edi,%edx
c0038118:	89 cb                	mov    %ecx,%ebx
c003811a:	83 e2 03             	and    $0x3,%edx
c003811d:	74 0c                	je     c003812b <memmove+0x3b>
c003811f:	89 d1                	mov    %edx,%ecx
c0038121:	4e                   	dec    %esi
c0038122:	4f                   	dec    %edi
c0038123:	29 cb                	sub    %ecx,%ebx
c0038125:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0038127:	89 d9                	mov    %ebx,%ecx
c0038129:	46                   	inc    %esi
c003812a:	47                   	inc    %edi
c003812b:	c1 e9 02             	shr    $0x2,%ecx
c003812e:	83 ee 04             	sub    $0x4,%esi
c0038131:	83 ef 04             	sub    $0x4,%edi
c0038134:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
c0038136:	83 c6 04             	add    $0x4,%esi
c0038139:	83 c7 04             	add    $0x4,%edi
c003813c:	89 d9                	mov    %ebx,%ecx
c003813e:	83 e1 03             	and    $0x3,%ecx
c0038141:	4e                   	dec    %esi
c0038142:	4f                   	dec    %edi
c0038143:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0038145:	eb 2a                	jmp    c0038171 <memmove+0x81>
c0038147:	83 f9 08             	cmp    $0x8,%ecx
c003814a:	76 23                	jbe    c003816f <memmove+0x7f>
c003814c:	89 fa                	mov    %edi,%edx
c003814e:	89 cb                	mov    %ecx,%ebx
c0038150:	83 e2 03             	and    $0x3,%edx
c0038153:	74 10                	je     c0038165 <memmove+0x75>
c0038155:	b9 04 00 00 00       	mov    $0x4,%ecx
c003815a:	29 d1                	sub    %edx,%ecx
c003815c:	83 e1 03             	and    $0x3,%ecx
c003815f:	29 cb                	sub    %ecx,%ebx
c0038161:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0038163:	89 d9                	mov    %ebx,%ecx
c0038165:	c1 e9 02             	shr    $0x2,%ecx
c0038168:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
c003816a:	89 d9                	mov    %ebx,%ecx
c003816c:	83 e1 03             	and    $0x3,%ecx
c003816f:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0038171:	8b 45 08             	mov    0x8(%ebp),%eax
c0038174:	fc                   	cld    
c0038175:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0038178:	5b                   	pop    %ebx
c0038179:	5f                   	pop    %edi
c003817a:	5e                   	pop    %esi
c003817b:	c9                   	leave  
c003817c:	c3                   	ret    
c003817d:	66 90                	xchg   %ax,%ax
c003817f:	90                   	nop

c0038180 <_realloc_r>:
c0038180:	55                   	push   %ebp
c0038181:	89 e5                	mov    %esp,%ebp
c0038183:	57                   	push   %edi
c0038184:	56                   	push   %esi
c0038185:	53                   	push   %ebx
c0038186:	83 ec 3c             	sub    $0x3c,%esp
c0038189:	8b 45 08             	mov    0x8(%ebp),%eax
c003818c:	8b 7d 0c             	mov    0xc(%ebp),%edi
c003818f:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0038192:	8b 45 10             	mov    0x10(%ebp),%eax
c0038195:	85 ff                	test   %edi,%edi
c0038197:	89 45 e0             	mov    %eax,-0x20(%ebp)
c003819a:	0f 84 50 02 00 00    	je     c00383f0 <_realloc_r+0x270>
c00381a0:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c00381a3:	8d 77 f8             	lea    -0x8(%edi),%esi
c00381a6:	89 04 24             	mov    %eax,(%esp)
c00381a9:	e8 f2 db ff ff       	call   c0035da0 <__malloc_lock>
c00381ae:	8b 47 fc             	mov    -0x4(%edi),%eax
c00381b1:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c00381b4:	89 c3                	mov    %eax,%ebx
c00381b6:	8d 51 0b             	lea    0xb(%ecx),%edx
c00381b9:	83 e3 fc             	and    $0xfffffffc,%ebx
c00381bc:	83 fa 16             	cmp    $0x16,%edx
c00381bf:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c00381c2:	0f 87 00 01 00 00    	ja     c00382c8 <_realloc_r+0x148>
c00381c8:	31 d2                	xor    %edx,%edx
c00381ca:	c7 45 d8 10 00 00 00 	movl   $0x10,-0x28(%ebp)
c00381d1:	c7 45 dc 10 00 00 00 	movl   $0x10,-0x24(%ebp)
c00381d8:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c00381db:	39 4d dc             	cmp    %ecx,-0x24(%ebp)
c00381de:	0f 82 1c 02 00 00    	jb     c0038400 <_realloc_r+0x280>
c00381e4:	84 d2                	test   %dl,%dl
c00381e6:	0f 85 14 02 00 00    	jne    c0038400 <_realloc_r+0x280>
c00381ec:	3b 5d d8             	cmp    -0x28(%ebp),%ebx
c00381ef:	0f 8d eb 00 00 00    	jge    c00382e0 <_realloc_r+0x160>
c00381f5:	8b 0d 48 c5 03 c0    	mov    0xc003c548,%ecx
c00381fb:	8d 14 1e             	lea    (%esi,%ebx,1),%edx
c00381fe:	39 d1                	cmp    %edx,%ecx
c0038200:	89 4d cc             	mov    %ecx,-0x34(%ebp)
c0038203:	0f 84 6f 02 00 00    	je     c0038478 <_realloc_r+0x2f8>
c0038209:	8b 4a 04             	mov    0x4(%edx),%ecx
c003820c:	89 c8                	mov    %ecx,%eax
c003820e:	83 e0 fe             	and    $0xfffffffe,%eax
c0038211:	f6 44 02 04 01       	testb  $0x1,0x4(%edx,%eax,1)
c0038216:	0f 84 f4 00 00 00    	je     c0038310 <_realloc_r+0x190>
c003821c:	c7 45 d0 00 00 00 00 	movl   $0x0,-0x30(%ebp)
c0038223:	31 d2                	xor    %edx,%edx
c0038225:	f6 45 d4 01          	testb  $0x1,-0x2c(%ebp)
c0038229:	0f 85 39 01 00 00    	jne    c0038368 <_realloc_r+0x1e8>
c003822f:	89 f1                	mov    %esi,%ecx
c0038231:	2b 4f f8             	sub    -0x8(%edi),%ecx
c0038234:	8b 41 04             	mov    0x4(%ecx),%eax
c0038237:	83 e0 fc             	and    $0xfffffffc,%eax
c003823a:	85 d2                	test   %edx,%edx
c003823c:	0f 84 f6 02 00 00    	je     c0038538 <_realloc_r+0x3b8>
c0038242:	3b 55 cc             	cmp    -0x34(%ebp),%edx
c0038245:	0f 84 f5 02 00 00    	je     c0038540 <_realloc_r+0x3c0>
c003824b:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c003824e:	8b 55 d0             	mov    -0x30(%ebp),%edx
c0038251:	01 d8                	add    %ebx,%eax
c0038253:	01 c2                	add    %eax,%edx
c0038255:	3b 55 d8             	cmp    -0x28(%ebp),%edx
c0038258:	89 55 d0             	mov    %edx,-0x30(%ebp)
c003825b:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c003825e:	0f 8c ac 01 00 00    	jl     c0038410 <_realloc_r+0x290>
c0038264:	8b 42 0c             	mov    0xc(%edx),%eax
c0038267:	83 eb 04             	sub    $0x4,%ebx
c003826a:	8b 52 08             	mov    0x8(%edx),%edx
c003826d:	83 fb 24             	cmp    $0x24,%ebx
c0038270:	8d 71 08             	lea    0x8(%ecx),%esi
c0038273:	89 42 0c             	mov    %eax,0xc(%edx)
c0038276:	89 50 08             	mov    %edx,0x8(%eax)
c0038279:	8b 41 0c             	mov    0xc(%ecx),%eax
c003827c:	8b 51 08             	mov    0x8(%ecx),%edx
c003827f:	89 42 0c             	mov    %eax,0xc(%edx)
c0038282:	89 50 08             	mov    %edx,0x8(%eax)
c0038285:	0f 87 85 03 00 00    	ja     c0038610 <_realloc_r+0x490>
c003828b:	83 fb 13             	cmp    $0x13,%ebx
c003828e:	89 f0                	mov    %esi,%eax
c0038290:	76 1a                	jbe    c00382ac <_realloc_r+0x12c>
c0038292:	8b 07                	mov    (%edi),%eax
c0038294:	83 fb 1b             	cmp    $0x1b,%ebx
c0038297:	89 41 08             	mov    %eax,0x8(%ecx)
c003829a:	8b 47 04             	mov    0x4(%edi),%eax
c003829d:	89 41 0c             	mov    %eax,0xc(%ecx)
c00382a0:	0f 87 8f 03 00 00    	ja     c0038635 <_realloc_r+0x4b5>
c00382a6:	8d 41 10             	lea    0x10(%ecx),%eax
c00382a9:	83 c7 08             	add    $0x8,%edi
c00382ac:	8b 17                	mov    (%edi),%edx
c00382ae:	8b 5d d0             	mov    -0x30(%ebp),%ebx
c00382b1:	89 10                	mov    %edx,(%eax)
c00382b3:	8b 57 04             	mov    0x4(%edi),%edx
c00382b6:	89 50 04             	mov    %edx,0x4(%eax)
c00382b9:	8b 57 08             	mov    0x8(%edi),%edx
c00382bc:	89 f7                	mov    %esi,%edi
c00382be:	89 ce                	mov    %ecx,%esi
c00382c0:	89 50 08             	mov    %edx,0x8(%eax)
c00382c3:	8b 41 04             	mov    0x4(%ecx),%eax
c00382c6:	eb 1b                	jmp    c00382e3 <_realloc_r+0x163>
c00382c8:	83 e2 f8             	and    $0xfffffff8,%edx
c00382cb:	89 55 dc             	mov    %edx,-0x24(%ebp)
c00382ce:	89 55 d8             	mov    %edx,-0x28(%ebp)
c00382d1:	c1 ea 1f             	shr    $0x1f,%edx
c00382d4:	e9 ff fe ff ff       	jmp    c00381d8 <_realloc_r+0x58>
c00382d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00382e0:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c00382e3:	89 da                	mov    %ebx,%edx
c00382e5:	2b 55 dc             	sub    -0x24(%ebp),%edx
c00382e8:	83 fa 0f             	cmp    $0xf,%edx
c00382eb:	77 4b                	ja     c0038338 <_realloc_r+0x1b8>
c00382ed:	83 e0 01             	and    $0x1,%eax
c00382f0:	09 d8                	or     %ebx,%eax
c00382f2:	89 46 04             	mov    %eax,0x4(%esi)
c00382f5:	83 4c 1e 04 01       	orl    $0x1,0x4(%esi,%ebx,1)
c00382fa:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c00382fd:	89 04 24             	mov    %eax,(%esp)
c0038300:	e8 ab da ff ff       	call   c0035db0 <__malloc_unlock>
c0038305:	89 f8                	mov    %edi,%eax
c0038307:	83 c4 3c             	add    $0x3c,%esp
c003830a:	5b                   	pop    %ebx
c003830b:	5e                   	pop    %esi
c003830c:	5f                   	pop    %edi
c003830d:	5d                   	pop    %ebp
c003830e:	c3                   	ret    
c003830f:	90                   	nop
c0038310:	83 e1 fc             	and    $0xfffffffc,%ecx
c0038313:	89 4d d0             	mov    %ecx,-0x30(%ebp)
c0038316:	01 d9                	add    %ebx,%ecx
c0038318:	3b 4d d8             	cmp    -0x28(%ebp),%ecx
c003831b:	0f 8c 04 ff ff ff    	jl     c0038225 <_realloc_r+0xa5>
c0038321:	8b 5a 0c             	mov    0xc(%edx),%ebx
c0038324:	8b 52 08             	mov    0x8(%edx),%edx
c0038327:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c003832a:	89 5a 0c             	mov    %ebx,0xc(%edx)
c003832d:	89 53 08             	mov    %edx,0x8(%ebx)
c0038330:	89 cb                	mov    %ecx,%ebx
c0038332:	eb af                	jmp    c00382e3 <_realloc_r+0x163>
c0038334:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0038338:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c003833b:	83 e0 01             	and    $0x1,%eax
c003833e:	09 d8                	or     %ebx,%eax
c0038340:	89 46 04             	mov    %eax,0x4(%esi)
c0038343:	89 d0                	mov    %edx,%eax
c0038345:	8d 0c 1e             	lea    (%esi,%ebx,1),%ecx
c0038348:	83 c8 01             	or     $0x1,%eax
c003834b:	89 41 04             	mov    %eax,0x4(%ecx)
c003834e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0038351:	83 4c 11 04 01       	orl    $0x1,0x4(%ecx,%edx,1)
c0038356:	83 c1 08             	add    $0x8,%ecx
c0038359:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c003835d:	89 04 24             	mov    %eax,(%esp)
c0038360:	e8 2b fb ff ff       	call   c0037e90 <_free_r>
c0038365:	eb 93                	jmp    c00382fa <_realloc_r+0x17a>
c0038367:	90                   	nop
c0038368:	8b 45 e0             	mov    -0x20(%ebp),%eax
c003836b:	89 44 24 04          	mov    %eax,0x4(%esp)
c003836f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0038372:	89 04 24             	mov    %eax,(%esp)
c0038375:	e8 46 d2 ff ff       	call   c00355c0 <_malloc_r>
c003837a:	85 c0                	test   %eax,%eax
c003837c:	89 c1                	mov    %eax,%ecx
c003837e:	0f 84 65 03 00 00    	je     c00386e9 <_realloc_r+0x569>
c0038384:	8b 47 fc             	mov    -0x4(%edi),%eax
c0038387:	8d 51 f8             	lea    -0x8(%ecx),%edx
c003838a:	89 55 e0             	mov    %edx,-0x20(%ebp)
c003838d:	89 c2                	mov    %eax,%edx
c003838f:	83 e2 fe             	and    $0xfffffffe,%edx
c0038392:	01 f2                	add    %esi,%edx
c0038394:	39 55 e0             	cmp    %edx,-0x20(%ebp)
c0038397:	0f 84 63 02 00 00    	je     c0038600 <_realloc_r+0x480>
c003839d:	83 eb 04             	sub    $0x4,%ebx
c00383a0:	83 fb 24             	cmp    $0x24,%ebx
c00383a3:	0f 87 6f 01 00 00    	ja     c0038518 <_realloc_r+0x398>
c00383a9:	83 fb 13             	cmp    $0x13,%ebx
c00383ac:	0f 87 ee 00 00 00    	ja     c00384a0 <_realloc_r+0x320>
c00383b2:	89 c8                	mov    %ecx,%eax
c00383b4:	89 fa                	mov    %edi,%edx
c00383b6:	8b 1a                	mov    (%edx),%ebx
c00383b8:	89 18                	mov    %ebx,(%eax)
c00383ba:	8b 5a 04             	mov    0x4(%edx),%ebx
c00383bd:	89 58 04             	mov    %ebx,0x4(%eax)
c00383c0:	8b 52 08             	mov    0x8(%edx),%edx
c00383c3:	89 50 08             	mov    %edx,0x8(%eax)
c00383c6:	8b 75 e4             	mov    -0x1c(%ebp),%esi
c00383c9:	89 7c 24 04          	mov    %edi,0x4(%esp)
c00383cd:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c00383d0:	89 34 24             	mov    %esi,(%esp)
c00383d3:	e8 b8 fa ff ff       	call   c0037e90 <_free_r>
c00383d8:	89 34 24             	mov    %esi,(%esp)
c00383db:	e8 d0 d9 ff ff       	call   c0035db0 <__malloc_unlock>
c00383e0:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c00383e3:	83 c4 3c             	add    $0x3c,%esp
c00383e6:	5b                   	pop    %ebx
c00383e7:	5e                   	pop    %esi
c00383e8:	5f                   	pop    %edi
c00383e9:	89 c8                	mov    %ecx,%eax
c00383eb:	5d                   	pop    %ebp
c00383ec:	c3                   	ret    
c00383ed:	8d 76 00             	lea    0x0(%esi),%esi
c00383f0:	89 45 0c             	mov    %eax,0xc(%ebp)
c00383f3:	83 c4 3c             	add    $0x3c,%esp
c00383f6:	5b                   	pop    %ebx
c00383f7:	5e                   	pop    %esi
c00383f8:	5f                   	pop    %edi
c00383f9:	5d                   	pop    %ebp
c00383fa:	e9 c1 d1 ff ff       	jmp    c00355c0 <_malloc_r>
c00383ff:	90                   	nop
c0038400:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0038403:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0038409:	31 c0                	xor    %eax,%eax
c003840b:	e9 f7 fe ff ff       	jmp    c0038307 <_realloc_r+0x187>
c0038410:	89 c2                	mov    %eax,%edx
c0038412:	3b 55 d8             	cmp    -0x28(%ebp),%edx
c0038415:	0f 8c 4d ff ff ff    	jl     c0038368 <_realloc_r+0x1e8>
c003841b:	8b 71 08             	mov    0x8(%ecx),%esi
c003841e:	83 eb 04             	sub    $0x4,%ebx
c0038421:	8b 41 0c             	mov    0xc(%ecx),%eax
c0038424:	83 fb 24             	cmp    $0x24,%ebx
c0038427:	89 46 0c             	mov    %eax,0xc(%esi)
c003842a:	89 70 08             	mov    %esi,0x8(%eax)
c003842d:	8d 71 08             	lea    0x8(%ecx),%esi
c0038430:	0f 87 88 00 00 00    	ja     c00384be <_realloc_r+0x33e>
c0038436:	83 fb 13             	cmp    $0x13,%ebx
c0038439:	89 f0                	mov    %esi,%eax
c003843b:	76 1a                	jbe    c0038457 <_realloc_r+0x2d7>
c003843d:	8b 07                	mov    (%edi),%eax
c003843f:	83 fb 1b             	cmp    $0x1b,%ebx
c0038442:	89 41 08             	mov    %eax,0x8(%ecx)
c0038445:	8b 47 04             	mov    0x4(%edi),%eax
c0038448:	89 41 0c             	mov    %eax,0xc(%ecx)
c003844b:	0f 87 17 02 00 00    	ja     c0038668 <_realloc_r+0x4e8>
c0038451:	8d 41 10             	lea    0x10(%ecx),%eax
c0038454:	83 c7 08             	add    $0x8,%edi
c0038457:	8b 1f                	mov    (%edi),%ebx
c0038459:	89 18                	mov    %ebx,(%eax)
c003845b:	8b 5f 04             	mov    0x4(%edi),%ebx
c003845e:	89 58 04             	mov    %ebx,0x4(%eax)
c0038461:	8b 5f 08             	mov    0x8(%edi),%ebx
c0038464:	89 f7                	mov    %esi,%edi
c0038466:	89 ce                	mov    %ecx,%esi
c0038468:	89 58 08             	mov    %ebx,0x8(%eax)
c003846b:	89 d3                	mov    %edx,%ebx
c003846d:	8b 41 04             	mov    0x4(%ecx),%eax
c0038470:	e9 6e fe ff ff       	jmp    c00382e3 <_realloc_r+0x163>
c0038475:	8d 76 00             	lea    0x0(%esi),%esi
c0038478:	8b 45 cc             	mov    -0x34(%ebp),%eax
c003847b:	8b 55 dc             	mov    -0x24(%ebp),%edx
c003847e:	8b 48 04             	mov    0x4(%eax),%ecx
c0038481:	83 c2 10             	add    $0x10,%edx
c0038484:	89 4d d0             	mov    %ecx,-0x30(%ebp)
c0038487:	83 65 d0 fc          	andl   $0xfffffffc,-0x30(%ebp)
c003848b:	8b 4d d0             	mov    -0x30(%ebp),%ecx
c003848e:	01 d9                	add    %ebx,%ecx
c0038490:	39 d1                	cmp    %edx,%ecx
c0038492:	7d 54                	jge    c00384e8 <_realloc_r+0x368>
c0038494:	89 c2                	mov    %eax,%edx
c0038496:	e9 8a fd ff ff       	jmp    c0038225 <_realloc_r+0xa5>
c003849b:	90                   	nop
c003849c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00384a0:	8b 07                	mov    (%edi),%eax
c00384a2:	83 fb 1b             	cmp    $0x1b,%ebx
c00384a5:	89 01                	mov    %eax,(%ecx)
c00384a7:	8b 47 04             	mov    0x4(%edi),%eax
c00384aa:	89 41 04             	mov    %eax,0x4(%ecx)
c00384ad:	0f 87 2d 01 00 00    	ja     c00385e0 <_realloc_r+0x460>
c00384b3:	8d 41 08             	lea    0x8(%ecx),%eax
c00384b6:	8d 57 08             	lea    0x8(%edi),%edx
c00384b9:	e9 f8 fe ff ff       	jmp    c00383b6 <_realloc_r+0x236>
c00384be:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c00384c2:	89 7c 24 04          	mov    %edi,0x4(%esp)
c00384c6:	89 f7                	mov    %esi,%edi
c00384c8:	89 34 24             	mov    %esi,(%esp)
c00384cb:	89 55 d8             	mov    %edx,-0x28(%ebp)
c00384ce:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c00384d1:	e8 1a fc ff ff       	call   c00380f0 <memmove>
c00384d6:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c00384d9:	8b 55 d8             	mov    -0x28(%ebp),%edx
c00384dc:	8b 41 04             	mov    0x4(%ecx),%eax
c00384df:	89 ce                	mov    %ecx,%esi
c00384e1:	89 d3                	mov    %edx,%ebx
c00384e3:	e9 fb fd ff ff       	jmp    c00382e3 <_realloc_r+0x163>
c00384e8:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c00384eb:	29 d9                	sub    %ebx,%ecx
c00384ed:	01 de                	add    %ebx,%esi
c00384ef:	83 c9 01             	or     $0x1,%ecx
c00384f2:	89 35 48 c5 03 c0    	mov    %esi,0xc003c548
c00384f8:	89 4e 04             	mov    %ecx,0x4(%esi)
c00384fb:	8b 47 fc             	mov    -0x4(%edi),%eax
c00384fe:	83 e0 01             	and    $0x1,%eax
c0038501:	09 d8                	or     %ebx,%eax
c0038503:	89 47 fc             	mov    %eax,-0x4(%edi)
c0038506:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0038509:	89 04 24             	mov    %eax,(%esp)
c003850c:	e8 9f d8 ff ff       	call   c0035db0 <__malloc_unlock>
c0038511:	89 f8                	mov    %edi,%eax
c0038513:	e9 ef fd ff ff       	jmp    c0038307 <_realloc_r+0x187>
c0038518:	89 0c 24             	mov    %ecx,(%esp)
c003851b:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c003851f:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0038523:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0038526:	e8 c5 fb ff ff       	call   c00380f0 <memmove>
c003852b:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c003852e:	e9 93 fe ff ff       	jmp    c00383c6 <_realloc_r+0x246>
c0038533:	90                   	nop
c0038534:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0038538:	8d 14 18             	lea    (%eax,%ebx,1),%edx
c003853b:	e9 d2 fe ff ff       	jmp    c0038412 <_realloc_r+0x292>
c0038540:	8d 14 18             	lea    (%eax,%ebx,1),%edx
c0038543:	8b 45 d0             	mov    -0x30(%ebp),%eax
c0038546:	01 d0                	add    %edx,%eax
c0038548:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c003854b:	8b 45 dc             	mov    -0x24(%ebp),%eax
c003854e:	83 c0 10             	add    $0x10,%eax
c0038551:	39 45 d4             	cmp    %eax,-0x2c(%ebp)
c0038554:	0f 8c b8 fe ff ff    	jl     c0038412 <_realloc_r+0x292>
c003855a:	8b 41 0c             	mov    0xc(%ecx),%eax
c003855d:	83 eb 04             	sub    $0x4,%ebx
c0038560:	8b 51 08             	mov    0x8(%ecx),%edx
c0038563:	83 fb 24             	cmp    $0x24,%ebx
c0038566:	8d 71 08             	lea    0x8(%ecx),%esi
c0038569:	89 42 0c             	mov    %eax,0xc(%edx)
c003856c:	89 50 08             	mov    %edx,0x8(%eax)
c003856f:	0f 87 3d 01 00 00    	ja     c00386b2 <_realloc_r+0x532>
c0038575:	83 fb 13             	cmp    $0x13,%ebx
c0038578:	89 f0                	mov    %esi,%eax
c003857a:	76 1a                	jbe    c0038596 <_realloc_r+0x416>
c003857c:	8b 07                	mov    (%edi),%eax
c003857e:	83 fb 1b             	cmp    $0x1b,%ebx
c0038581:	89 41 08             	mov    %eax,0x8(%ecx)
c0038584:	8b 47 04             	mov    0x4(%edi),%eax
c0038587:	89 41 0c             	mov    %eax,0xc(%ecx)
c003858a:	0f 87 3d 01 00 00    	ja     c00386cd <_realloc_r+0x54d>
c0038590:	8d 41 10             	lea    0x10(%ecx),%eax
c0038593:	83 c7 08             	add    $0x8,%edi
c0038596:	8b 17                	mov    (%edi),%edx
c0038598:	89 10                	mov    %edx,(%eax)
c003859a:	8b 57 04             	mov    0x4(%edi),%edx
c003859d:	89 50 04             	mov    %edx,0x4(%eax)
c00385a0:	8b 57 08             	mov    0x8(%edi),%edx
c00385a3:	89 50 08             	mov    %edx,0x8(%eax)
c00385a6:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c00385a9:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c00385ac:	89 d8                	mov    %ebx,%eax
c00385ae:	29 df                	sub    %ebx,%edi
c00385b0:	01 c8                	add    %ecx,%eax
c00385b2:	83 cf 01             	or     $0x1,%edi
c00385b5:	a3 48 c5 03 c0       	mov    %eax,0xc003c548
c00385ba:	89 78 04             	mov    %edi,0x4(%eax)
c00385bd:	8b 41 04             	mov    0x4(%ecx),%eax
c00385c0:	83 e0 01             	and    $0x1,%eax
c00385c3:	09 d8                	or     %ebx,%eax
c00385c5:	89 41 04             	mov    %eax,0x4(%ecx)
c00385c8:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c00385cb:	89 04 24             	mov    %eax,(%esp)
c00385ce:	e8 dd d7 ff ff       	call   c0035db0 <__malloc_unlock>
c00385d3:	89 f0                	mov    %esi,%eax
c00385d5:	e9 2d fd ff ff       	jmp    c0038307 <_realloc_r+0x187>
c00385da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00385e0:	8b 47 08             	mov    0x8(%edi),%eax
c00385e3:	83 fb 24             	cmp    $0x24,%ebx
c00385e6:	89 41 08             	mov    %eax,0x8(%ecx)
c00385e9:	8b 47 0c             	mov    0xc(%edi),%eax
c00385ec:	89 41 0c             	mov    %eax,0xc(%ecx)
c00385ef:	74 60                	je     c0038651 <_realloc_r+0x4d1>
c00385f1:	8d 41 10             	lea    0x10(%ecx),%eax
c00385f4:	8d 57 10             	lea    0x10(%edi),%edx
c00385f7:	e9 ba fd ff ff       	jmp    c00383b6 <_realloc_r+0x236>
c00385fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0038600:	8b 51 fc             	mov    -0x4(%ecx),%edx
c0038603:	83 e2 fc             	and    $0xfffffffc,%edx
c0038606:	01 d3                	add    %edx,%ebx
c0038608:	e9 d6 fc ff ff       	jmp    c00382e3 <_realloc_r+0x163>
c003860d:	8d 76 00             	lea    0x0(%esi),%esi
c0038610:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0038614:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0038618:	89 f7                	mov    %esi,%edi
c003861a:	89 34 24             	mov    %esi,(%esp)
c003861d:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0038620:	e8 cb fa ff ff       	call   c00380f0 <memmove>
c0038625:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0038628:	8b 5d d0             	mov    -0x30(%ebp),%ebx
c003862b:	8b 41 04             	mov    0x4(%ecx),%eax
c003862e:	89 ce                	mov    %ecx,%esi
c0038630:	e9 ae fc ff ff       	jmp    c00382e3 <_realloc_r+0x163>
c0038635:	8b 47 08             	mov    0x8(%edi),%eax
c0038638:	83 fb 24             	cmp    $0x24,%ebx
c003863b:	89 41 10             	mov    %eax,0x10(%ecx)
c003863e:	8b 47 0c             	mov    0xc(%edi),%eax
c0038641:	89 41 14             	mov    %eax,0x14(%ecx)
c0038644:	74 3e                	je     c0038684 <_realloc_r+0x504>
c0038646:	8d 41 18             	lea    0x18(%ecx),%eax
c0038649:	83 c7 10             	add    $0x10,%edi
c003864c:	e9 5b fc ff ff       	jmp    c00382ac <_realloc_r+0x12c>
c0038651:	8b 47 10             	mov    0x10(%edi),%eax
c0038654:	8d 57 18             	lea    0x18(%edi),%edx
c0038657:	89 41 10             	mov    %eax,0x10(%ecx)
c003865a:	8b 5f 14             	mov    0x14(%edi),%ebx
c003865d:	8d 41 18             	lea    0x18(%ecx),%eax
c0038660:	89 59 14             	mov    %ebx,0x14(%ecx)
c0038663:	e9 4e fd ff ff       	jmp    c00383b6 <_realloc_r+0x236>
c0038668:	8b 47 08             	mov    0x8(%edi),%eax
c003866b:	83 fb 24             	cmp    $0x24,%ebx
c003866e:	89 41 10             	mov    %eax,0x10(%ecx)
c0038671:	8b 47 0c             	mov    0xc(%edi),%eax
c0038674:	89 41 14             	mov    %eax,0x14(%ecx)
c0038677:	74 22                	je     c003869b <_realloc_r+0x51b>
c0038679:	8d 41 18             	lea    0x18(%ecx),%eax
c003867c:	83 c7 10             	add    $0x10,%edi
c003867f:	e9 d3 fd ff ff       	jmp    c0038457 <_realloc_r+0x2d7>
c0038684:	8b 47 10             	mov    0x10(%edi),%eax
c0038687:	83 c7 18             	add    $0x18,%edi
c003868a:	89 41 18             	mov    %eax,0x18(%ecx)
c003868d:	8b 57 fc             	mov    -0x4(%edi),%edx
c0038690:	8d 41 20             	lea    0x20(%ecx),%eax
c0038693:	89 51 1c             	mov    %edx,0x1c(%ecx)
c0038696:	e9 11 fc ff ff       	jmp    c00382ac <_realloc_r+0x12c>
c003869b:	8b 47 10             	mov    0x10(%edi),%eax
c003869e:	83 c7 18             	add    $0x18,%edi
c00386a1:	89 41 18             	mov    %eax,0x18(%ecx)
c00386a4:	8b 5f fc             	mov    -0x4(%edi),%ebx
c00386a7:	8d 41 20             	lea    0x20(%ecx),%eax
c00386aa:	89 59 1c             	mov    %ebx,0x1c(%ecx)
c00386ad:	e9 a5 fd ff ff       	jmp    c0038457 <_realloc_r+0x2d7>
c00386b2:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c00386b6:	89 7c 24 04          	mov    %edi,0x4(%esp)
c00386ba:	89 34 24             	mov    %esi,(%esp)
c00386bd:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c00386c0:	e8 2b fa ff ff       	call   c00380f0 <memmove>
c00386c5:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c00386c8:	e9 d9 fe ff ff       	jmp    c00385a6 <_realloc_r+0x426>
c00386cd:	8b 47 08             	mov    0x8(%edi),%eax
c00386d0:	83 fb 24             	cmp    $0x24,%ebx
c00386d3:	89 41 10             	mov    %eax,0x10(%ecx)
c00386d6:	8b 47 0c             	mov    0xc(%edi),%eax
c00386d9:	89 41 14             	mov    %eax,0x14(%ecx)
c00386dc:	74 1d                	je     c00386fb <_realloc_r+0x57b>
c00386de:	8d 41 18             	lea    0x18(%ecx),%eax
c00386e1:	83 c7 10             	add    $0x10,%edi
c00386e4:	e9 ad fe ff ff       	jmp    c0038596 <_realloc_r+0x416>
c00386e9:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c00386ec:	89 04 24             	mov    %eax,(%esp)
c00386ef:	e8 bc d6 ff ff       	call   c0035db0 <__malloc_unlock>
c00386f4:	31 c0                	xor    %eax,%eax
c00386f6:	e9 0c fc ff ff       	jmp    c0038307 <_realloc_r+0x187>
c00386fb:	8b 47 10             	mov    0x10(%edi),%eax
c00386fe:	83 c7 18             	add    $0x18,%edi
c0038701:	89 41 18             	mov    %eax,0x18(%ecx)
c0038704:	8b 57 fc             	mov    -0x4(%edi),%edx
c0038707:	8d 41 20             	lea    0x20(%ecx),%eax
c003870a:	89 51 1c             	mov    %edx,0x1c(%ecx)
c003870d:	e9 84 fe ff ff       	jmp    c0038596 <_realloc_r+0x416>
c0038712:	66 90                	xchg   %ax,%ax
c0038714:	66 90                	xchg   %ax,%ax
c0038716:	66 90                	xchg   %ax,%ax
c0038718:	66 90                	xchg   %ax,%ax
c003871a:	66 90                	xchg   %ax,%ax
c003871c:	66 90                	xchg   %ax,%ax
c003871e:	66 90                	xchg   %ax,%ax

c0038720 <cleanup_glue>:
c0038720:	55                   	push   %ebp
c0038721:	89 e5                	mov    %esp,%ebp
c0038723:	56                   	push   %esi
c0038724:	53                   	push   %ebx
c0038725:	83 ec 10             	sub    $0x10,%esp
c0038728:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c003872b:	8b 75 08             	mov    0x8(%ebp),%esi
c003872e:	8b 03                	mov    (%ebx),%eax
c0038730:	85 c0                	test   %eax,%eax
c0038732:	74 0c                	je     c0038740 <cleanup_glue+0x20>
c0038734:	89 44 24 04          	mov    %eax,0x4(%esp)
c0038738:	89 34 24             	mov    %esi,(%esp)
c003873b:	e8 e0 ff ff ff       	call   c0038720 <cleanup_glue>
c0038740:	89 5d 0c             	mov    %ebx,0xc(%ebp)
c0038743:	89 75 08             	mov    %esi,0x8(%ebp)
c0038746:	83 c4 10             	add    $0x10,%esp
c0038749:	5b                   	pop    %ebx
c003874a:	5e                   	pop    %esi
c003874b:	5d                   	pop    %ebp
c003874c:	e9 3f f7 ff ff       	jmp    c0037e90 <_free_r>
c0038751:	eb 0d                	jmp    c0038760 <_reclaim_reent>
c0038753:	90                   	nop
c0038754:	90                   	nop
c0038755:	90                   	nop
c0038756:	90                   	nop
c0038757:	90                   	nop
c0038758:	90                   	nop
c0038759:	90                   	nop
c003875a:	90                   	nop
c003875b:	90                   	nop
c003875c:	90                   	nop
c003875d:	90                   	nop
c003875e:	90                   	nop
c003875f:	90                   	nop

c0038760 <_reclaim_reent>:
c0038760:	55                   	push   %ebp
c0038761:	89 e5                	mov    %esp,%ebp
c0038763:	57                   	push   %edi
c0038764:	56                   	push   %esi
c0038765:	53                   	push   %ebx
c0038766:	83 ec 1c             	sub    $0x1c,%esp
c0038769:	8b 5d 08             	mov    0x8(%ebp),%ebx
c003876c:	3b 1d 40 c0 03 c0    	cmp    0xc003c040,%ebx
c0038772:	0f 84 a6 00 00 00    	je     c003881e <_reclaim_reent+0xbe>
c0038778:	8b 53 4c             	mov    0x4c(%ebx),%edx
c003877b:	85 d2                	test   %edx,%edx
c003877d:	74 46                	je     c00387c5 <_reclaim_reent+0x65>
c003877f:	31 c0                	xor    %eax,%eax
c0038781:	31 f6                	xor    %esi,%esi
c0038783:	90                   	nop
c0038784:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0038788:	8b 04 82             	mov    (%edx,%eax,4),%eax
c003878b:	85 c0                	test   %eax,%eax
c003878d:	75 0b                	jne    c003879a <_reclaim_reent+0x3a>
c003878f:	eb 1e                	jmp    c00387af <_reclaim_reent+0x4f>
c0038791:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0038798:	89 f8                	mov    %edi,%eax
c003879a:	8b 38                	mov    (%eax),%edi
c003879c:	89 44 24 04          	mov    %eax,0x4(%esp)
c00387a0:	89 1c 24             	mov    %ebx,(%esp)
c00387a3:	e8 e8 f6 ff ff       	call   c0037e90 <_free_r>
c00387a8:	85 ff                	test   %edi,%edi
c00387aa:	75 ec                	jne    c0038798 <_reclaim_reent+0x38>
c00387ac:	8b 53 4c             	mov    0x4c(%ebx),%edx
c00387af:	83 c6 01             	add    $0x1,%esi
c00387b2:	83 fe 20             	cmp    $0x20,%esi
c00387b5:	89 f0                	mov    %esi,%eax
c00387b7:	75 cf                	jne    c0038788 <_reclaim_reent+0x28>
c00387b9:	89 54 24 04          	mov    %edx,0x4(%esp)
c00387bd:	89 1c 24             	mov    %ebx,(%esp)
c00387c0:	e8 cb f6 ff ff       	call   c0037e90 <_free_r>
c00387c5:	8b 43 40             	mov    0x40(%ebx),%eax
c00387c8:	85 c0                	test   %eax,%eax
c00387ca:	74 0c                	je     c00387d8 <_reclaim_reent+0x78>
c00387cc:	89 44 24 04          	mov    %eax,0x4(%esp)
c00387d0:	89 1c 24             	mov    %ebx,(%esp)
c00387d3:	e8 b8 f6 ff ff       	call   c0037e90 <_free_r>
c00387d8:	8b 83 48 01 00 00    	mov    0x148(%ebx),%eax
c00387de:	85 c0                	test   %eax,%eax
c00387e0:	74 22                	je     c0038804 <_reclaim_reent+0xa4>
c00387e2:	8d b3 4c 01 00 00    	lea    0x14c(%ebx),%esi
c00387e8:	39 f0                	cmp    %esi,%eax
c00387ea:	75 06                	jne    c00387f2 <_reclaim_reent+0x92>
c00387ec:	eb 16                	jmp    c0038804 <_reclaim_reent+0xa4>
c00387ee:	66 90                	xchg   %ax,%ax
c00387f0:	89 f8                	mov    %edi,%eax
c00387f2:	8b 38                	mov    (%eax),%edi
c00387f4:	89 44 24 04          	mov    %eax,0x4(%esp)
c00387f8:	89 1c 24             	mov    %ebx,(%esp)
c00387fb:	e8 90 f6 ff ff       	call   c0037e90 <_free_r>
c0038800:	39 fe                	cmp    %edi,%esi
c0038802:	75 ec                	jne    c00387f0 <_reclaim_reent+0x90>
c0038804:	8b 43 54             	mov    0x54(%ebx),%eax
c0038807:	85 c0                	test   %eax,%eax
c0038809:	74 0c                	je     c0038817 <_reclaim_reent+0xb7>
c003880b:	89 44 24 04          	mov    %eax,0x4(%esp)
c003880f:	89 1c 24             	mov    %ebx,(%esp)
c0038812:	e8 79 f6 ff ff       	call   c0037e90 <_free_r>
c0038817:	8b 43 38             	mov    0x38(%ebx),%eax
c003881a:	85 c0                	test   %eax,%eax
c003881c:	75 08                	jne    c0038826 <_reclaim_reent+0xc6>
c003881e:	83 c4 1c             	add    $0x1c,%esp
c0038821:	5b                   	pop    %ebx
c0038822:	5e                   	pop    %esi
c0038823:	5f                   	pop    %edi
c0038824:	5d                   	pop    %ebp
c0038825:	c3                   	ret    
c0038826:	89 1c 24             	mov    %ebx,(%esp)
c0038829:	ff 53 3c             	call   *0x3c(%ebx)
c003882c:	8b 83 e0 02 00 00    	mov    0x2e0(%ebx),%eax
c0038832:	85 c0                	test   %eax,%eax
c0038834:	74 e8                	je     c003881e <_reclaim_reent+0xbe>
c0038836:	89 1c 24             	mov    %ebx,(%esp)
c0038839:	89 44 24 04          	mov    %eax,0x4(%esp)
c003883d:	e8 de fe ff ff       	call   c0038720 <cleanup_glue>
c0038842:	83 c4 1c             	add    $0x1c,%esp
c0038845:	5b                   	pop    %ebx
c0038846:	5e                   	pop    %esi
c0038847:	5f                   	pop    %edi
c0038848:	5d                   	pop    %ebp
c0038849:	c3                   	ret    
