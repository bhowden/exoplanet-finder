
exoplanet-finder:     file format elf64-x86-64


Disassembly of section .init:

0000000000002000 <_init>:
    2000:	f3 0f 1e fa          	endbr64 
    2004:	48 83 ec 08          	sub    $0x8,%rsp
    2008:	48 8b 05 e1 4f 00 00 	mov    0x4fe1(%rip),%rax        # 6ff0 <__gmon_start__@Base>
    200f:	48 85 c0             	test   %rax,%rax
    2012:	74 02                	je     2016 <_init+0x16>
    2014:	ff d0                	call   *%rax
    2016:	48 83 c4 08          	add    $0x8,%rsp
    201a:	c3                   	ret    

Disassembly of section .plt:

0000000000002020 <.plt>:
    2020:	ff 35 3a 4e 00 00    	push   0x4e3a(%rip)        # 6e60 <_GLOBAL_OFFSET_TABLE_+0x8>
    2026:	f2 ff 25 3b 4e 00 00 	bnd jmp *0x4e3b(%rip)        # 6e68 <_GLOBAL_OFFSET_TABLE_+0x10>
    202d:	0f 1f 00             	nopl   (%rax)
    2030:	f3 0f 1e fa          	endbr64 
    2034:	68 00 00 00 00       	push   $0x0
    2039:	f2 e9 e1 ff ff ff    	bnd jmp 2020 <_init+0x20>
    203f:	90                   	nop
    2040:	f3 0f 1e fa          	endbr64 
    2044:	68 01 00 00 00       	push   $0x1
    2049:	f2 e9 d1 ff ff ff    	bnd jmp 2020 <_init+0x20>
    204f:	90                   	nop
    2050:	f3 0f 1e fa          	endbr64 
    2054:	68 02 00 00 00       	push   $0x2
    2059:	f2 e9 c1 ff ff ff    	bnd jmp 2020 <_init+0x20>
    205f:	90                   	nop
    2060:	f3 0f 1e fa          	endbr64 
    2064:	68 03 00 00 00       	push   $0x3
    2069:	f2 e9 b1 ff ff ff    	bnd jmp 2020 <_init+0x20>
    206f:	90                   	nop
    2070:	f3 0f 1e fa          	endbr64 
    2074:	68 04 00 00 00       	push   $0x4
    2079:	f2 e9 a1 ff ff ff    	bnd jmp 2020 <_init+0x20>
    207f:	90                   	nop
    2080:	f3 0f 1e fa          	endbr64 
    2084:	68 05 00 00 00       	push   $0x5
    2089:	f2 e9 91 ff ff ff    	bnd jmp 2020 <_init+0x20>
    208f:	90                   	nop
    2090:	f3 0f 1e fa          	endbr64 
    2094:	68 06 00 00 00       	push   $0x6
    2099:	f2 e9 81 ff ff ff    	bnd jmp 2020 <_init+0x20>
    209f:	90                   	nop
    20a0:	f3 0f 1e fa          	endbr64 
    20a4:	68 07 00 00 00       	push   $0x7
    20a9:	f2 e9 71 ff ff ff    	bnd jmp 2020 <_init+0x20>
    20af:	90                   	nop
    20b0:	f3 0f 1e fa          	endbr64 
    20b4:	68 08 00 00 00       	push   $0x8
    20b9:	f2 e9 61 ff ff ff    	bnd jmp 2020 <_init+0x20>
    20bf:	90                   	nop
    20c0:	f3 0f 1e fa          	endbr64 
    20c4:	68 09 00 00 00       	push   $0x9
    20c9:	f2 e9 51 ff ff ff    	bnd jmp 2020 <_init+0x20>
    20cf:	90                   	nop
    20d0:	f3 0f 1e fa          	endbr64 
    20d4:	68 0a 00 00 00       	push   $0xa
    20d9:	f2 e9 41 ff ff ff    	bnd jmp 2020 <_init+0x20>
    20df:	90                   	nop
    20e0:	f3 0f 1e fa          	endbr64 
    20e4:	68 0b 00 00 00       	push   $0xb
    20e9:	f2 e9 31 ff ff ff    	bnd jmp 2020 <_init+0x20>
    20ef:	90                   	nop
    20f0:	f3 0f 1e fa          	endbr64 
    20f4:	68 0c 00 00 00       	push   $0xc
    20f9:	f2 e9 21 ff ff ff    	bnd jmp 2020 <_init+0x20>
    20ff:	90                   	nop
    2100:	f3 0f 1e fa          	endbr64 
    2104:	68 0d 00 00 00       	push   $0xd
    2109:	f2 e9 11 ff ff ff    	bnd jmp 2020 <_init+0x20>
    210f:	90                   	nop
    2110:	f3 0f 1e fa          	endbr64 
    2114:	68 0e 00 00 00       	push   $0xe
    2119:	f2 e9 01 ff ff ff    	bnd jmp 2020 <_init+0x20>
    211f:	90                   	nop
    2120:	f3 0f 1e fa          	endbr64 
    2124:	68 0f 00 00 00       	push   $0xf
    2129:	f2 e9 f1 fe ff ff    	bnd jmp 2020 <_init+0x20>
    212f:	90                   	nop
    2130:	f3 0f 1e fa          	endbr64 
    2134:	68 10 00 00 00       	push   $0x10
    2139:	f2 e9 e1 fe ff ff    	bnd jmp 2020 <_init+0x20>
    213f:	90                   	nop
    2140:	f3 0f 1e fa          	endbr64 
    2144:	68 11 00 00 00       	push   $0x11
    2149:	f2 e9 d1 fe ff ff    	bnd jmp 2020 <_init+0x20>
    214f:	90                   	nop
    2150:	f3 0f 1e fa          	endbr64 
    2154:	68 12 00 00 00       	push   $0x12
    2159:	f2 e9 c1 fe ff ff    	bnd jmp 2020 <_init+0x20>
    215f:	90                   	nop
    2160:	f3 0f 1e fa          	endbr64 
    2164:	68 13 00 00 00       	push   $0x13
    2169:	f2 e9 b1 fe ff ff    	bnd jmp 2020 <_init+0x20>
    216f:	90                   	nop
    2170:	f3 0f 1e fa          	endbr64 
    2174:	68 14 00 00 00       	push   $0x14
    2179:	f2 e9 a1 fe ff ff    	bnd jmp 2020 <_init+0x20>
    217f:	90                   	nop
    2180:	f3 0f 1e fa          	endbr64 
    2184:	68 15 00 00 00       	push   $0x15
    2189:	f2 e9 91 fe ff ff    	bnd jmp 2020 <_init+0x20>
    218f:	90                   	nop
    2190:	f3 0f 1e fa          	endbr64 
    2194:	68 16 00 00 00       	push   $0x16
    2199:	f2 e9 81 fe ff ff    	bnd jmp 2020 <_init+0x20>
    219f:	90                   	nop
    21a0:	f3 0f 1e fa          	endbr64 
    21a4:	68 17 00 00 00       	push   $0x17
    21a9:	f2 e9 71 fe ff ff    	bnd jmp 2020 <_init+0x20>
    21af:	90                   	nop
    21b0:	f3 0f 1e fa          	endbr64 
    21b4:	68 18 00 00 00       	push   $0x18
    21b9:	f2 e9 61 fe ff ff    	bnd jmp 2020 <_init+0x20>
    21bf:	90                   	nop
    21c0:	f3 0f 1e fa          	endbr64 
    21c4:	68 19 00 00 00       	push   $0x19
    21c9:	f2 e9 51 fe ff ff    	bnd jmp 2020 <_init+0x20>
    21cf:	90                   	nop
    21d0:	f3 0f 1e fa          	endbr64 
    21d4:	68 1a 00 00 00       	push   $0x1a
    21d9:	f2 e9 41 fe ff ff    	bnd jmp 2020 <_init+0x20>
    21df:	90                   	nop
    21e0:	f3 0f 1e fa          	endbr64 
    21e4:	68 1b 00 00 00       	push   $0x1b
    21e9:	f2 e9 31 fe ff ff    	bnd jmp 2020 <_init+0x20>
    21ef:	90                   	nop
    21f0:	f3 0f 1e fa          	endbr64 
    21f4:	68 1c 00 00 00       	push   $0x1c
    21f9:	f2 e9 21 fe ff ff    	bnd jmp 2020 <_init+0x20>
    21ff:	90                   	nop
    2200:	f3 0f 1e fa          	endbr64 
    2204:	68 1d 00 00 00       	push   $0x1d
    2209:	f2 e9 11 fe ff ff    	bnd jmp 2020 <_init+0x20>
    220f:	90                   	nop
    2210:	f3 0f 1e fa          	endbr64 
    2214:	68 1e 00 00 00       	push   $0x1e
    2219:	f2 e9 01 fe ff ff    	bnd jmp 2020 <_init+0x20>
    221f:	90                   	nop
    2220:	f3 0f 1e fa          	endbr64 
    2224:	68 1f 00 00 00       	push   $0x1f
    2229:	f2 e9 f1 fd ff ff    	bnd jmp 2020 <_init+0x20>
    222f:	90                   	nop
    2230:	f3 0f 1e fa          	endbr64 
    2234:	68 20 00 00 00       	push   $0x20
    2239:	f2 e9 e1 fd ff ff    	bnd jmp 2020 <_init+0x20>
    223f:	90                   	nop
    2240:	f3 0f 1e fa          	endbr64 
    2244:	68 21 00 00 00       	push   $0x21
    2249:	f2 e9 d1 fd ff ff    	bnd jmp 2020 <_init+0x20>
    224f:	90                   	nop
    2250:	f3 0f 1e fa          	endbr64 
    2254:	68 22 00 00 00       	push   $0x22
    2259:	f2 e9 c1 fd ff ff    	bnd jmp 2020 <_init+0x20>
    225f:	90                   	nop
    2260:	f3 0f 1e fa          	endbr64 
    2264:	68 23 00 00 00       	push   $0x23
    2269:	f2 e9 b1 fd ff ff    	bnd jmp 2020 <_init+0x20>
    226f:	90                   	nop
    2270:	f3 0f 1e fa          	endbr64 
    2274:	68 24 00 00 00       	push   $0x24
    2279:	f2 e9 a1 fd ff ff    	bnd jmp 2020 <_init+0x20>
    227f:	90                   	nop
    2280:	f3 0f 1e fa          	endbr64 
    2284:	68 25 00 00 00       	push   $0x25
    2289:	f2 e9 91 fd ff ff    	bnd jmp 2020 <_init+0x20>
    228f:	90                   	nop
    2290:	f3 0f 1e fa          	endbr64 
    2294:	68 26 00 00 00       	push   $0x26
    2299:	f2 e9 81 fd ff ff    	bnd jmp 2020 <_init+0x20>
    229f:	90                   	nop
    22a0:	f3 0f 1e fa          	endbr64 
    22a4:	68 27 00 00 00       	push   $0x27
    22a9:	f2 e9 71 fd ff ff    	bnd jmp 2020 <_init+0x20>
    22af:	90                   	nop
    22b0:	f3 0f 1e fa          	endbr64 
    22b4:	68 28 00 00 00       	push   $0x28
    22b9:	f2 e9 61 fd ff ff    	bnd jmp 2020 <_init+0x20>
    22bf:	90                   	nop
    22c0:	f3 0f 1e fa          	endbr64 
    22c4:	68 29 00 00 00       	push   $0x29
    22c9:	f2 e9 51 fd ff ff    	bnd jmp 2020 <_init+0x20>
    22cf:	90                   	nop
    22d0:	f3 0f 1e fa          	endbr64 
    22d4:	68 2a 00 00 00       	push   $0x2a
    22d9:	f2 e9 41 fd ff ff    	bnd jmp 2020 <_init+0x20>
    22df:	90                   	nop
    22e0:	f3 0f 1e fa          	endbr64 
    22e4:	68 2b 00 00 00       	push   $0x2b
    22e9:	f2 e9 31 fd ff ff    	bnd jmp 2020 <_init+0x20>
    22ef:	90                   	nop
    22f0:	f3 0f 1e fa          	endbr64 
    22f4:	68 2c 00 00 00       	push   $0x2c
    22f9:	f2 e9 21 fd ff ff    	bnd jmp 2020 <_init+0x20>
    22ff:	90                   	nop

Disassembly of section .plt.got:

0000000000002300 <__cxa_finalize@plt>:
    2300:	f3 0f 1e fa          	endbr64 
    2304:	f2 ff 25 cd 4c 00 00 	bnd jmp *0x4ccd(%rip)        # 6fd8 <__cxa_finalize@GLIBC_2.2.5>
    230b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

0000000000002310 <printf@plt>:
    2310:	f3 0f 1e fa          	endbr64 
    2314:	f2 ff 25 55 4b 00 00 	bnd jmp *0x4b55(%rip)        # 6e70 <printf@GLIBC_2.2.5>
    231b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002320 <json_string@plt>:
    2320:	f3 0f 1e fa          	endbr64 
    2324:	f2 ff 25 4d 4b 00 00 	bnd jmp *0x4b4d(%rip)        # 6e78 <json_string@Base>
    232b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002330 <ssh_bind_new@plt>:
    2330:	f3 0f 1e fa          	endbr64 
    2334:	f2 ff 25 45 4b 00 00 	bnd jmp *0x4b45(%rip)        # 6e80 <ssh_bind_new@LIBSSH_4_5_0>
    233b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002340 <atan2@plt>:
    2340:	f3 0f 1e fa          	endbr64 
    2344:	f2 ff 25 3d 4b 00 00 	bnd jmp *0x4b3d(%rip)        # 6e88 <atan2@GLIBC_2.2.5>
    234b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002350 <sin@plt>:
    2350:	f3 0f 1e fa          	endbr64 
    2354:	f2 ff 25 35 4b 00 00 	bnd jmp *0x4b35(%rip)        # 6e90 <sin@GLIBC_2.2.5>
    235b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002360 <json_loads@plt>:
    2360:	f3 0f 1e fa          	endbr64 
    2364:	f2 ff 25 2d 4b 00 00 	bnd jmp *0x4b2d(%rip)        # 6e98 <json_loads@Base>
    236b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002370 <ssh_channel_close@plt>:
    2370:	f3 0f 1e fa          	endbr64 
    2374:	f2 ff 25 25 4b 00 00 	bnd jmp *0x4b25(%rip)        # 6ea0 <ssh_channel_close@LIBSSH_4_5_0>
    237b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002380 <strlen@plt>:
    2380:	f3 0f 1e fa          	endbr64 
    2384:	f2 ff 25 1d 4b 00 00 	bnd jmp *0x4b1d(%rip)        # 6ea8 <strlen@GLIBC_2.2.5>
    238b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002390 <ssh_channel_send_eof@plt>:
    2390:	f3 0f 1e fa          	endbr64 
    2394:	f2 ff 25 15 4b 00 00 	bnd jmp *0x4b15(%rip)        # 6eb0 <ssh_channel_send_eof@LIBSSH_4_5_0>
    239b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000023a0 <tan@plt>:
    23a0:	f3 0f 1e fa          	endbr64 
    23a4:	f2 ff 25 0d 4b 00 00 	bnd jmp *0x4b0d(%rip)        # 6eb8 <tan@GLIBC_2.2.5>
    23ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000023b0 <pthread_detach@plt>:
    23b0:	f3 0f 1e fa          	endbr64 
    23b4:	f2 ff 25 05 4b 00 00 	bnd jmp *0x4b05(%rip)        # 6ec0 <pthread_detach@GLIBC_2.34>
    23bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000023c0 <ssh_channel_new@plt>:
    23c0:	f3 0f 1e fa          	endbr64 
    23c4:	f2 ff 25 fd 4a 00 00 	bnd jmp *0x4afd(%rip)        # 6ec8 <ssh_channel_new@LIBSSH_4_5_0>
    23cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000023d0 <sqrt@plt>:
    23d0:	f3 0f 1e fa          	endbr64 
    23d4:	f2 ff 25 f5 4a 00 00 	bnd jmp *0x4af5(%rip)        # 6ed0 <sqrt@GLIBC_2.2.5>
    23db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000023e0 <atan@plt>:
    23e0:	f3 0f 1e fa          	endbr64 
    23e4:	f2 ff 25 ed 4a 00 00 	bnd jmp *0x4aed(%rip)        # 6ed8 <atan@GLIBC_2.2.5>
    23eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000023f0 <json_object@plt>:
    23f0:	f3 0f 1e fa          	endbr64 
    23f4:	f2 ff 25 e5 4a 00 00 	bnd jmp *0x4ae5(%rip)        # 6ee0 <json_object@Base>
    23fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002400 <ssh_channel_read@plt>:
    2400:	f3 0f 1e fa          	endbr64 
    2404:	f2 ff 25 dd 4a 00 00 	bnd jmp *0x4add(%rip)        # 6ee8 <ssh_channel_read@LIBSSH_4_5_0>
    240b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002410 <ssh_new@plt>:
    2410:	f3 0f 1e fa          	endbr64 
    2414:	f2 ff 25 d5 4a 00 00 	bnd jmp *0x4ad5(%rip)        # 6ef0 <ssh_new@LIBSSH_4_5_0>
    241b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002420 <time@plt>:
    2420:	f3 0f 1e fa          	endbr64 
    2424:	f2 ff 25 cd 4a 00 00 	bnd jmp *0x4acd(%rip)        # 6ef8 <time@GLIBC_2.2.5>
    242b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002430 <json_real@plt>:
    2430:	f3 0f 1e fa          	endbr64 
    2434:	f2 ff 25 c5 4a 00 00 	bnd jmp *0x4ac5(%rip)        # 6f00 <json_real@Base>
    243b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002440 <ssh_bind_free@plt>:
    2440:	f3 0f 1e fa          	endbr64 
    2444:	f2 ff 25 bd 4a 00 00 	bnd jmp *0x4abd(%rip)        # 6f08 <ssh_bind_free@LIBSSH_4_5_0>
    244b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002450 <ssh_get_error@plt>:
    2450:	f3 0f 1e fa          	endbr64 
    2454:	f2 ff 25 b5 4a 00 00 	bnd jmp *0x4ab5(%rip)        # 6f10 <ssh_get_error@LIBSSH_4_5_0>
    245b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002460 <ssh_bind_accept@plt>:
    2460:	f3 0f 1e fa          	endbr64 
    2464:	f2 ff 25 ad 4a 00 00 	bnd jmp *0x4aad(%rip)        # 6f18 <ssh_bind_accept@LIBSSH_4_5_0>
    246b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002470 <__stack_chk_fail@plt>:
    2470:	f3 0f 1e fa          	endbr64 
    2474:	f2 ff 25 a5 4a 00 00 	bnd jmp *0x4aa5(%rip)        # 6f20 <__stack_chk_fail@GLIBC_2.4>
    247b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002480 <free@plt>:
    2480:	f3 0f 1e fa          	endbr64 
    2484:	f2 ff 25 9d 4a 00 00 	bnd jmp *0x4a9d(%rip)        # 6f28 <free@GLIBC_2.2.5>
    248b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002490 <ssh_free@plt>:
    2490:	f3 0f 1e fa          	endbr64 
    2494:	f2 ff 25 95 4a 00 00 	bnd jmp *0x4a95(%rip)        # 6f30 <ssh_free@LIBSSH_4_5_0>
    249b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000024a0 <json_object_set_new@plt>:
    24a0:	f3 0f 1e fa          	endbr64 
    24a4:	f2 ff 25 8d 4a 00 00 	bnd jmp *0x4a8d(%rip)        # 6f38 <json_object_set_new@Base>
    24ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000024b0 <ssh_channel_free@plt>:
    24b0:	f3 0f 1e fa          	endbr64 
    24b4:	f2 ff 25 85 4a 00 00 	bnd jmp *0x4a85(%rip)        # 6f40 <ssh_channel_free@LIBSSH_4_5_0>
    24bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000024c0 <fmod@plt>:
    24c0:	f3 0f 1e fa          	endbr64 
    24c4:	f2 ff 25 7d 4a 00 00 	bnd jmp *0x4a7d(%rip)        # 6f48 <fmod@GLIBC_2.2.5>
    24cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000024d0 <ssh_channel_write@plt>:
    24d0:	f3 0f 1e fa          	endbr64 
    24d4:	f2 ff 25 75 4a 00 00 	bnd jmp *0x4a75(%rip)        # 6f50 <ssh_channel_write@LIBSSH_4_5_0>
    24db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000024e0 <json_delete@plt>:
    24e0:	f3 0f 1e fa          	endbr64 
    24e4:	f2 ff 25 6d 4a 00 00 	bnd jmp *0x4a6d(%rip)        # 6f58 <json_delete@Base>
    24eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000024f0 <fprintf@plt>:
    24f0:	f3 0f 1e fa          	endbr64 
    24f4:	f2 ff 25 65 4a 00 00 	bnd jmp *0x4a65(%rip)        # 6f60 <fprintf@GLIBC_2.2.5>
    24fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002500 <puts@plt>:
    2500:	f3 0f 1e fa          	endbr64 
    2504:	f2 ff 25 5d 4a 00 00 	bnd jmp *0x4a5d(%rip)        # 6f68 <puts@GLIBC_2.2.5>
    250b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002510 <json_null@plt>:
    2510:	f3 0f 1e fa          	endbr64 
    2514:	f2 ff 25 55 4a 00 00 	bnd jmp *0x4a55(%rip)        # 6f70 <json_null@Base>
    251b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002520 <ssh_disconnect@plt>:
    2520:	f3 0f 1e fa          	endbr64 
    2524:	f2 ff 25 4d 4a 00 00 	bnd jmp *0x4a4d(%rip)        # 6f78 <ssh_disconnect@LIBSSH_4_5_0>
    252b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002530 <asin@plt>:
    2530:	f3 0f 1e fa          	endbr64 
    2534:	f2 ff 25 45 4a 00 00 	bnd jmp *0x4a45(%rip)        # 6f80 <asin@GLIBC_2.2.5>
    253b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002540 <ssh_bind_options_set@plt>:
    2540:	f3 0f 1e fa          	endbr64 
    2544:	f2 ff 25 3d 4a 00 00 	bnd jmp *0x4a3d(%rip)        # 6f88 <ssh_bind_options_set@LIBSSH_4_5_0>
    254b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002550 <json_dumps@plt>:
    2550:	f3 0f 1e fa          	endbr64 
    2554:	f2 ff 25 35 4a 00 00 	bnd jmp *0x4a35(%rip)        # 6f90 <json_dumps@Base>
    255b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002560 <ssh_bind_listen@plt>:
    2560:	f3 0f 1e fa          	endbr64 
    2564:	f2 ff 25 2d 4a 00 00 	bnd jmp *0x4a2d(%rip)        # 6f98 <ssh_bind_listen@LIBSSH_4_5_0>
    256b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002570 <__sysv_signal@plt>:
    2570:	f3 0f 1e fa          	endbr64 
    2574:	f2 ff 25 25 4a 00 00 	bnd jmp *0x4a25(%rip)        # 6fa0 <__sysv_signal@GLIBC_2.2.5>
    257b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002580 <pthread_create@plt>:
    2580:	f3 0f 1e fa          	endbr64 
    2584:	f2 ff 25 1d 4a 00 00 	bnd jmp *0x4a1d(%rip)        # 6fa8 <pthread_create@GLIBC_2.34>
    258b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002590 <ssh_channel_open_session@plt>:
    2590:	f3 0f 1e fa          	endbr64 
    2594:	f2 ff 25 15 4a 00 00 	bnd jmp *0x4a15(%rip)        # 6fb0 <ssh_channel_open_session@LIBSSH_4_5_0>
    259b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000025a0 <cos@plt>:
    25a0:	f3 0f 1e fa          	endbr64 
    25a4:	f2 ff 25 0d 4a 00 00 	bnd jmp *0x4a0d(%rip)        # 6fb8 <cos@GLIBC_2.2.5>
    25ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000025b0 <fwrite@plt>:
    25b0:	f3 0f 1e fa          	endbr64 
    25b4:	f2 ff 25 05 4a 00 00 	bnd jmp *0x4a05(%rip)        # 6fc0 <fwrite@GLIBC_2.2.5>
    25bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000025c0 <json_object_get@plt>:
    25c0:	f3 0f 1e fa          	endbr64 
    25c4:	f2 ff 25 fd 49 00 00 	bnd jmp *0x49fd(%rip)        # 6fc8 <json_object_get@Base>
    25cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000025d0 <json_number_value@plt>:
    25d0:	f3 0f 1e fa          	endbr64 
    25d4:	f2 ff 25 f5 49 00 00 	bnd jmp *0x49f5(%rip)        # 6fd0 <json_number_value@Base>
    25db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

00000000000025e0 <_start>:
    25e0:	f3 0f 1e fa          	endbr64 
    25e4:	31 ed                	xor    %ebp,%ebp
    25e6:	49 89 d1             	mov    %rdx,%r9
    25e9:	5e                   	pop    %rsi
    25ea:	48 89 e2             	mov    %rsp,%rdx
    25ed:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    25f1:	50                   	push   %rax
    25f2:	54                   	push   %rsp
    25f3:	45 31 c0             	xor    %r8d,%r8d
    25f6:	31 c9                	xor    %ecx,%ecx
    25f8:	48 8d 3d 34 18 00 00 	lea    0x1834(%rip),%rdi        # 3e33 <main>
    25ff:	ff 15 db 49 00 00    	call   *0x49db(%rip)        # 6fe0 <__libc_start_main@GLIBC_2.34>
    2605:	f4                   	hlt    
    2606:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    260d:	00 00 00 

0000000000002610 <deregister_tm_clones>:
    2610:	48 8d 3d 01 4a 00 00 	lea    0x4a01(%rip),%rdi        # 7018 <__TMC_END__>
    2617:	48 8d 05 fa 49 00 00 	lea    0x49fa(%rip),%rax        # 7018 <__TMC_END__>
    261e:	48 39 f8             	cmp    %rdi,%rax
    2621:	74 15                	je     2638 <deregister_tm_clones+0x28>
    2623:	48 8b 05 be 49 00 00 	mov    0x49be(%rip),%rax        # 6fe8 <_ITM_deregisterTMCloneTable@Base>
    262a:	48 85 c0             	test   %rax,%rax
    262d:	74 09                	je     2638 <deregister_tm_clones+0x28>
    262f:	ff e0                	jmp    *%rax
    2631:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2638:	c3                   	ret    
    2639:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000002640 <register_tm_clones>:
    2640:	48 8d 3d d1 49 00 00 	lea    0x49d1(%rip),%rdi        # 7018 <__TMC_END__>
    2647:	48 8d 35 ca 49 00 00 	lea    0x49ca(%rip),%rsi        # 7018 <__TMC_END__>
    264e:	48 29 fe             	sub    %rdi,%rsi
    2651:	48 89 f0             	mov    %rsi,%rax
    2654:	48 c1 ee 3f          	shr    $0x3f,%rsi
    2658:	48 c1 f8 03          	sar    $0x3,%rax
    265c:	48 01 c6             	add    %rax,%rsi
    265f:	48 d1 fe             	sar    %rsi
    2662:	74 14                	je     2678 <register_tm_clones+0x38>
    2664:	48 8b 05 8d 49 00 00 	mov    0x498d(%rip),%rax        # 6ff8 <_ITM_registerTMCloneTable@Base>
    266b:	48 85 c0             	test   %rax,%rax
    266e:	74 08                	je     2678 <register_tm_clones+0x38>
    2670:	ff e0                	jmp    *%rax
    2672:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    2678:	c3                   	ret    
    2679:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000002680 <__do_global_dtors_aux>:
    2680:	f3 0f 1e fa          	endbr64 
    2684:	80 3d 9d 49 00 00 00 	cmpb   $0x0,0x499d(%rip)        # 7028 <completed.0>
    268b:	75 2b                	jne    26b8 <__do_global_dtors_aux+0x38>
    268d:	55                   	push   %rbp
    268e:	48 83 3d 42 49 00 00 	cmpq   $0x0,0x4942(%rip)        # 6fd8 <__cxa_finalize@GLIBC_2.2.5>
    2695:	00 
    2696:	48 89 e5             	mov    %rsp,%rbp
    2699:	74 0c                	je     26a7 <__do_global_dtors_aux+0x27>
    269b:	48 8b 3d 66 49 00 00 	mov    0x4966(%rip),%rdi        # 7008 <__dso_handle>
    26a2:	e8 59 fc ff ff       	call   2300 <__cxa_finalize@plt>
    26a7:	e8 64 ff ff ff       	call   2610 <deregister_tm_clones>
    26ac:	c6 05 75 49 00 00 01 	movb   $0x1,0x4975(%rip)        # 7028 <completed.0>
    26b3:	5d                   	pop    %rbp
    26b4:	c3                   	ret    
    26b5:	0f 1f 00             	nopl   (%rax)
    26b8:	c3                   	ret    
    26b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000026c0 <frame_dummy>:
    26c0:	f3 0f 1e fa          	endbr64 
    26c4:	e9 77 ff ff ff       	jmp    2640 <register_tm_clones>

00000000000026c9 <json_decref>:
    26c9:	55                   	push   %rbp
    26ca:	48 89 e5             	mov    %rsp,%rbp
    26cd:	48 83 ec 10          	sub    $0x10,%rsp
    26d1:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    26d5:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    26da:	74 3d                	je     2719 <json_decref+0x50>
    26dc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    26e0:	48 8b 40 08          	mov    0x8(%rax),%rax
    26e4:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
    26e8:	74 2f                	je     2719 <json_decref+0x50>
    26ea:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    26ee:	48 8d 50 08          	lea    0x8(%rax),%rdx
    26f2:	b8 01 00 00 00       	mov    $0x1,%eax
    26f7:	48 f7 d8             	neg    %rax
    26fa:	48 89 c1             	mov    %rax,%rcx
    26fd:	48 89 c8             	mov    %rcx,%rax
    2700:	f0 48 0f c1 02       	lock xadd %rax,(%rdx)
    2705:	48 01 c8             	add    %rcx,%rax
    2708:	48 85 c0             	test   %rax,%rax
    270b:	75 0c                	jne    2719 <json_decref+0x50>
    270d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2711:	48 89 c7             	mov    %rax,%rdi
    2714:	e8 c7 fd ff ff       	call   24e0 <json_delete@plt>
    2719:	90                   	nop
    271a:	c9                   	leave  
    271b:	c3                   	ret    

000000000000271c <calculateRaAndDistance>:
    271c:	f3 0f 1e fa          	endbr64 
    2720:	55                   	push   %rbp
    2721:	48 89 e5             	mov    %rsp,%rbp
    2724:	48 81 ec b0 00 00 00 	sub    $0xb0,%rsp
    272b:	48 89 bd 78 ff ff ff 	mov    %rdi,-0x88(%rbp)
    2732:	f2 0f 11 85 70 ff ff 	movsd  %xmm0,-0x90(%rbp)
    2739:	ff 
    273a:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
    2741:	f2 0f 10 48 20       	movsd  0x20(%rax),%xmm1
    2746:	f2 0f 10 05 d2 2a 00 	movsd  0x2ad2(%rip),%xmm0        # 5220 <_IO_stdin_used+0x220>
    274d:	00 
    274e:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
    2752:	f2 0f 10 05 ce 2a 00 	movsd  0x2ace(%rip),%xmm0        # 5228 <_IO_stdin_used+0x228>
    2759:	00 
    275a:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
    275e:	f2 0f 10 05 ca 2a 00 	movsd  0x2aca(%rip),%xmm0        # 5230 <_IO_stdin_used+0x230>
    2765:	00 
    2766:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
    276a:	f2 0f 10 05 be 2a 00 	movsd  0x2abe(%rip),%xmm0        # 5230 <_IO_stdin_used+0x230>
    2771:	00 
    2772:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
    2776:	f2 0f 11 45 88       	movsd  %xmm0,-0x78(%rbp)
    277b:	f2 0f 10 85 70 ff ff 	movsd  -0x90(%rbp),%xmm0
    2782:	ff 
    2783:	66 0f 28 c8          	movapd %xmm0,%xmm1
    2787:	f2 0f 5e 4d 88       	divsd  -0x78(%rbp),%xmm1
    278c:	f2 0f 10 05 a4 2a 00 	movsd  0x2aa4(%rip),%xmm0        # 5238 <_IO_stdin_used+0x238>
    2793:	00 
    2794:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
    2798:	f2 0f 11 45 90       	movsd  %xmm0,-0x70(%rbp)
    279d:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
    27a4:	f2 0f 10 40 28       	movsd  0x28(%rax),%xmm0
    27a9:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    27ad:	66 0f 28 c8          	movapd %xmm0,%xmm1
    27b1:	66 48 0f 6e c0       	movq   %rax,%xmm0
    27b6:	e8 99 06 00 00       	call   2e54 <solveKeplersEquation>
    27bb:	66 48 0f 7e c0       	movq   %xmm0,%rax
    27c0:	48 89 45 98          	mov    %rax,-0x68(%rbp)
    27c4:	f2 0f 10 45 98       	movsd  -0x68(%rbp),%xmm0
    27c9:	66 0f 2e 45 98       	ucomisd -0x68(%rbp),%xmm0
    27ce:	7b 2d                	jnp    27fd <calculateRaAndDistance+0xe1>
    27d0:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
    27d7:	f2 0f 10 05 61 2a 00 	movsd  0x2a61(%rip),%xmm0        # 5240 <_IO_stdin_used+0x240>
    27de:	00 
    27df:	f2 0f 11 40 50       	movsd  %xmm0,0x50(%rax)
    27e4:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
    27eb:	f2 0f 10 05 4d 2a 00 	movsd  0x2a4d(%rip),%xmm0        # 5240 <_IO_stdin_used+0x240>
    27f2:	00 
    27f3:	f2 0f 11 40 58       	movsd  %xmm0,0x58(%rax)
    27f8:	e9 d6 05 00 00       	jmp    2dd3 <calculateRaAndDistance+0x6b7>
    27fd:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
    2804:	f2 0f 10 58 18       	movsd  0x18(%rax),%xmm3
    2809:	f2 0f 11 9d 68 ff ff 	movsd  %xmm3,-0x98(%rbp)
    2810:	ff 
    2811:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
    2818:	f2 0f 10 78 28       	movsd  0x28(%rax),%xmm7
    281d:	f2 0f 11 bd 60 ff ff 	movsd  %xmm7,-0xa0(%rbp)
    2824:	ff 
    2825:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    2829:	66 48 0f 6e c0       	movq   %rax,%xmm0
    282e:	e8 6d fd ff ff       	call   25a0 <cos@plt>
    2833:	f2 0f 10 8d 60 ff ff 	movsd  -0xa0(%rbp),%xmm1
    283a:	ff 
    283b:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
    283f:	f2 0f 10 05 01 2a 00 	movsd  0x2a01(%rip),%xmm0        # 5248 <_IO_stdin_used+0x248>
    2846:	00 
    2847:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
    284b:	f2 0f 59 85 68 ff ff 	mulsd  -0x98(%rbp),%xmm0
    2852:	ff 
    2853:	f2 0f 11 45 a0       	movsd  %xmm0,-0x60(%rbp)
    2858:	f2 0f 10 4d a0       	movsd  -0x60(%rbp),%xmm1
    285d:	f2 0f 10 05 eb 29 00 	movsd  0x29eb(%rip),%xmm0        # 5250 <_IO_stdin_used+0x250>
    2864:	00 
    2865:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
    2869:	f2 0f 11 45 a8       	movsd  %xmm0,-0x58(%rbp)
    286e:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
    2875:	f2 0f 10 45 a8       	movsd  -0x58(%rbp),%xmm0
    287a:	f2 0f 11 40 50       	movsd  %xmm0,0x50(%rax)
    287f:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
    2886:	f2 0f 10 48 28       	movsd  0x28(%rax),%xmm1
    288b:	f2 0f 10 05 b5 29 00 	movsd  0x29b5(%rip),%xmm0        # 5248 <_IO_stdin_used+0x248>
    2892:	00 
    2893:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    2897:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
    289e:	f2 0f 10 50 28       	movsd  0x28(%rax),%xmm2
    28a3:	f2 0f 10 0d 9d 29 00 	movsd  0x299d(%rip),%xmm1        # 5248 <_IO_stdin_used+0x248>
    28aa:	00 
    28ab:	f2 0f 5c ca          	subsd  %xmm2,%xmm1
    28af:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
    28b3:	66 48 0f 7e c0       	movq   %xmm0,%rax
    28b8:	66 48 0f 6e c0       	movq   %rax,%xmm0
    28bd:	e8 0e fb ff ff       	call   23d0 <sqrt@plt>
    28c2:	f2 0f 11 85 68 ff ff 	movsd  %xmm0,-0x98(%rbp)
    28c9:	ff 
    28ca:	f2 0f 10 45 98       	movsd  -0x68(%rbp),%xmm0
    28cf:	f2 0f 10 0d 81 29 00 	movsd  0x2981(%rip),%xmm1        # 5258 <_IO_stdin_used+0x258>
    28d6:	00 
    28d7:	66 0f 28 d0          	movapd %xmm0,%xmm2
    28db:	f2 0f 5e d1          	divsd  %xmm1,%xmm2
    28df:	66 48 0f 7e d0       	movq   %xmm2,%rax
    28e4:	66 48 0f 6e c0       	movq   %rax,%xmm0
    28e9:	e8 b2 fa ff ff       	call   23a0 <tan@plt>
    28ee:	66 0f 28 f8          	movapd %xmm0,%xmm7
    28f2:	f2 0f 59 bd 68 ff ff 	mulsd  -0x98(%rbp),%xmm7
    28f9:	ff 
    28fa:	66 48 0f 7e f8       	movq   %xmm7,%rax
    28ff:	66 48 0f 6e c0       	movq   %rax,%xmm0
    2904:	e8 d7 fa ff ff       	call   23e0 <atan@plt>
    2909:	f2 0f 58 c0          	addsd  %xmm0,%xmm0
    290d:	f2 0f 11 45 b0       	movsd  %xmm0,-0x50(%rbp)
    2912:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    2916:	66 48 0f 6e c0       	movq   %rax,%xmm0
    291b:	e8 80 fc ff ff       	call   25a0 <cos@plt>
    2920:	66 48 0f 7e c0       	movq   %xmm0,%rax
    2925:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
    292c:	f2 0f 10 4a 28       	movsd  0x28(%rdx),%xmm1
    2931:	66 48 0f 6e c0       	movq   %rax,%xmm0
    2936:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
    293a:	f2 0f 10 4d a0       	movsd  -0x60(%rbp),%xmm1
    293f:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
    2943:	f2 0f 11 45 b8       	movsd  %xmm0,-0x48(%rbp)
    2948:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
    294f:	f2 0f 10 48 28       	movsd  0x28(%rax),%xmm1
    2954:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
    295b:	f2 0f 10 40 28       	movsd  0x28(%rax),%xmm0
    2960:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
    2964:	f2 0f 10 05 dc 28 00 	movsd  0x28dc(%rip),%xmm0        # 5248 <_IO_stdin_used+0x248>
    296b:	00 
    296c:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
    2970:	66 48 0f 7e c0       	movq   %xmm0,%rax
    2975:	66 48 0f 6e c0       	movq   %rax,%xmm0
    297a:	e8 51 fa ff ff       	call   23d0 <sqrt@plt>
    297f:	66 48 0f 7e c0       	movq   %xmm0,%rax
    2984:	66 48 0f 6e d8       	movq   %rax,%xmm3
    2989:	f2 0f 59 5d a0       	mulsd  -0x60(%rbp),%xmm3
    298e:	f2 0f 11 9d 68 ff ff 	movsd  %xmm3,-0x98(%rbp)
    2995:	ff 
    2996:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    299a:	66 48 0f 6e c0       	movq   %rax,%xmm0
    299f:	e8 ac f9 ff ff       	call   2350 <sin@plt>
    29a4:	f2 0f 59 85 68 ff ff 	mulsd  -0x98(%rbp),%xmm0
    29ab:	ff 
    29ac:	f2 0f 11 45 c0       	movsd  %xmm0,-0x40(%rbp)
    29b1:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
    29b8:	f2 0f 10 48 30       	movsd  0x30(%rax),%xmm1
    29bd:	f2 0f 10 05 9b 28 00 	movsd  0x289b(%rip),%xmm0        # 5260 <_IO_stdin_used+0x260>
    29c4:	00 
    29c5:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
    29c9:	f2 0f 11 45 c8       	movsd  %xmm0,-0x38(%rbp)
    29ce:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
    29d5:	f2 0f 10 48 38       	movsd  0x38(%rax),%xmm1
    29da:	f2 0f 10 05 7e 28 00 	movsd  0x287e(%rip),%xmm0        # 5260 <_IO_stdin_used+0x260>
    29e1:	00 
    29e2:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
    29e6:	f2 0f 11 45 d0       	movsd  %xmm0,-0x30(%rbp)
    29eb:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
    29f2:	f2 0f 10 48 40       	movsd  0x40(%rax),%xmm1
    29f7:	f2 0f 10 05 61 28 00 	movsd  0x2861(%rip),%xmm0        # 5260 <_IO_stdin_used+0x260>
    29fe:	00 
    29ff:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
    2a03:	f2 0f 11 45 d8       	movsd  %xmm0,-0x28(%rbp)
    2a08:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    2a0c:	66 48 0f 6e c0       	movq   %rax,%xmm0
    2a11:	e8 8a fb ff ff       	call   25a0 <cos@plt>
    2a16:	f2 0f 11 85 68 ff ff 	movsd  %xmm0,-0x98(%rbp)
    2a1d:	ff 
    2a1e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    2a22:	66 48 0f 6e c0       	movq   %rax,%xmm0
    2a27:	e8 74 fb ff ff       	call   25a0 <cos@plt>
    2a2c:	66 0f 28 d8          	movapd %xmm0,%xmm3
    2a30:	f2 0f 59 9d 68 ff ff 	mulsd  -0x98(%rbp),%xmm3
    2a37:	ff 
    2a38:	f2 0f 11 9d 68 ff ff 	movsd  %xmm3,-0x98(%rbp)
    2a3f:	ff 
    2a40:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    2a44:	66 48 0f 6e c0       	movq   %rax,%xmm0
    2a49:	e8 02 f9 ff ff       	call   2350 <sin@plt>
    2a4e:	f2 0f 11 85 60 ff ff 	movsd  %xmm0,-0xa0(%rbp)
    2a55:	ff 
    2a56:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    2a5a:	66 48 0f 6e c0       	movq   %rax,%xmm0
    2a5f:	e8 ec f8 ff ff       	call   2350 <sin@plt>
    2a64:	66 0f 28 e0          	movapd %xmm0,%xmm4
    2a68:	f2 0f 59 a5 60 ff ff 	mulsd  -0xa0(%rbp),%xmm4
    2a6f:	ff 
    2a70:	f2 0f 11 a5 60 ff ff 	movsd  %xmm4,-0xa0(%rbp)
    2a77:	ff 
    2a78:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    2a7c:	66 48 0f 6e c0       	movq   %rax,%xmm0
    2a81:	e8 1a fb ff ff       	call   25a0 <cos@plt>
    2a86:	f2 0f 10 8d 60 ff ff 	movsd  -0xa0(%rbp),%xmm1
    2a8d:	ff 
    2a8e:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
    2a92:	f2 0f 10 85 68 ff ff 	movsd  -0x98(%rbp),%xmm0
    2a99:	ff 
    2a9a:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
    2a9e:	f2 0f 59 45 b8       	mulsd  -0x48(%rbp),%xmm0
    2aa3:	f2 0f 11 85 68 ff ff 	movsd  %xmm0,-0x98(%rbp)
    2aaa:	ff 
    2aab:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    2aaf:	66 48 0f 6e c0       	movq   %rax,%xmm0
    2ab4:	e8 97 f8 ff ff       	call   2350 <sin@plt>
    2ab9:	f2 0f 11 85 60 ff ff 	movsd  %xmm0,-0xa0(%rbp)
    2ac0:	ff 
    2ac1:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    2ac5:	66 48 0f 6e c0       	movq   %rax,%xmm0
    2aca:	e8 d1 fa ff ff       	call   25a0 <cos@plt>
    2acf:	66 0f 28 e0          	movapd %xmm0,%xmm4
    2ad3:	f2 0f 59 a5 60 ff ff 	mulsd  -0xa0(%rbp),%xmm4
    2ada:	ff 
    2adb:	f2 0f 11 a5 60 ff ff 	movsd  %xmm4,-0xa0(%rbp)
    2ae2:	ff 
    2ae3:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    2ae7:	66 48 0f 6e c0       	movq   %rax,%xmm0
    2aec:	e8 af fa ff ff       	call   25a0 <cos@plt>
    2af1:	f2 0f 11 85 58 ff ff 	movsd  %xmm0,-0xa8(%rbp)
    2af8:	ff 
    2af9:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    2afd:	66 48 0f 6e c0       	movq   %rax,%xmm0
    2b02:	e8 49 f8 ff ff       	call   2350 <sin@plt>
    2b07:	66 0f 28 e8          	movapd %xmm0,%xmm5
    2b0b:	f2 0f 59 ad 58 ff ff 	mulsd  -0xa8(%rbp),%xmm5
    2b12:	ff 
    2b13:	f2 0f 11 ad 58 ff ff 	movsd  %xmm5,-0xa8(%rbp)
    2b1a:	ff 
    2b1b:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    2b1f:	66 48 0f 6e c0       	movq   %rax,%xmm0
    2b24:	e8 77 fa ff ff       	call   25a0 <cos@plt>
    2b29:	f2 0f 59 85 58 ff ff 	mulsd  -0xa8(%rbp),%xmm0
    2b30:	ff 
    2b31:	f2 0f 58 85 60 ff ff 	addsd  -0xa0(%rbp),%xmm0
    2b38:	ff 
    2b39:	66 0f 28 c8          	movapd %xmm0,%xmm1
    2b3d:	f2 0f 59 4d c0       	mulsd  -0x40(%rbp),%xmm1
    2b42:	f2 0f 10 85 68 ff ff 	movsd  -0x98(%rbp),%xmm0
    2b49:	ff 
    2b4a:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
    2b4e:	f2 0f 11 45 e0       	movsd  %xmm0,-0x20(%rbp)
    2b53:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    2b57:	66 48 0f 6e c0       	movq   %rax,%xmm0
    2b5c:	e8 3f fa ff ff       	call   25a0 <cos@plt>
    2b61:	f2 0f 11 85 68 ff ff 	movsd  %xmm0,-0x98(%rbp)
    2b68:	ff 
    2b69:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    2b6d:	66 48 0f 6e c0       	movq   %rax,%xmm0
    2b72:	e8 d9 f7 ff ff       	call   2350 <sin@plt>
    2b77:	66 0f 28 f0          	movapd %xmm0,%xmm6
    2b7b:	f2 0f 59 b5 68 ff ff 	mulsd  -0x98(%rbp),%xmm6
    2b82:	ff 
    2b83:	f2 0f 11 b5 68 ff ff 	movsd  %xmm6,-0x98(%rbp)
    2b8a:	ff 
    2b8b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    2b8f:	66 48 0f 6e c0       	movq   %rax,%xmm0
    2b94:	e8 b7 f7 ff ff       	call   2350 <sin@plt>
    2b99:	f2 0f 11 85 60 ff ff 	movsd  %xmm0,-0xa0(%rbp)
    2ba0:	ff 
    2ba1:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    2ba5:	66 48 0f 6e c0       	movq   %rax,%xmm0
    2baa:	e8 f1 f9 ff ff       	call   25a0 <cos@plt>
    2baf:	66 0f 28 d0          	movapd %xmm0,%xmm2
    2bb3:	f2 0f 59 95 60 ff ff 	mulsd  -0xa0(%rbp),%xmm2
    2bba:	ff 
    2bbb:	f2 0f 11 95 60 ff ff 	movsd  %xmm2,-0xa0(%rbp)
    2bc2:	ff 
    2bc3:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    2bc7:	66 48 0f 6e c0       	movq   %rax,%xmm0
    2bcc:	e8 cf f9 ff ff       	call   25a0 <cos@plt>
    2bd1:	f2 0f 59 85 60 ff ff 	mulsd  -0xa0(%rbp),%xmm0
    2bd8:	ff 
    2bd9:	f2 0f 58 85 68 ff ff 	addsd  -0x98(%rbp),%xmm0
    2be0:	ff 
    2be1:	f2 0f 59 45 b8       	mulsd  -0x48(%rbp),%xmm0
    2be6:	f2 0f 11 85 68 ff ff 	movsd  %xmm0,-0x98(%rbp)
    2bed:	ff 
    2bee:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    2bf2:	66 48 0f 6e c0       	movq   %rax,%xmm0
    2bf7:	e8 a4 f9 ff ff       	call   25a0 <cos@plt>
    2bfc:	f2 0f 11 85 60 ff ff 	movsd  %xmm0,-0xa0(%rbp)
    2c03:	ff 
    2c04:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    2c08:	66 48 0f 6e c0       	movq   %rax,%xmm0
    2c0d:	e8 8e f9 ff ff       	call   25a0 <cos@plt>
    2c12:	66 0f 28 e8          	movapd %xmm0,%xmm5
    2c16:	f2 0f 59 ad 60 ff ff 	mulsd  -0xa0(%rbp),%xmm5
    2c1d:	ff 
    2c1e:	f2 0f 11 ad 60 ff ff 	movsd  %xmm5,-0xa0(%rbp)
    2c25:	ff 
    2c26:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    2c2a:	66 48 0f 6e c0       	movq   %rax,%xmm0
    2c2f:	e8 1c f7 ff ff       	call   2350 <sin@plt>
    2c34:	f2 0f 11 85 58 ff ff 	movsd  %xmm0,-0xa8(%rbp)
    2c3b:	ff 
    2c3c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    2c40:	66 48 0f 6e c0       	movq   %rax,%xmm0
    2c45:	e8 06 f7 ff ff       	call   2350 <sin@plt>
    2c4a:	66 0f 28 f0          	movapd %xmm0,%xmm6
    2c4e:	f2 0f 59 b5 58 ff ff 	mulsd  -0xa8(%rbp),%xmm6
    2c55:	ff 
    2c56:	f2 0f 11 b5 58 ff ff 	movsd  %xmm6,-0xa8(%rbp)
    2c5d:	ff 
    2c5e:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    2c62:	66 48 0f 6e c0       	movq   %rax,%xmm0
    2c67:	e8 34 f9 ff ff       	call   25a0 <cos@plt>
    2c6c:	f2 0f 10 8d 58 ff ff 	movsd  -0xa8(%rbp),%xmm1
    2c73:	ff 
    2c74:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
    2c78:	f2 0f 10 85 60 ff ff 	movsd  -0xa0(%rbp),%xmm0
    2c7f:	ff 
    2c80:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
    2c84:	f2 0f 59 45 c0       	mulsd  -0x40(%rbp),%xmm0
    2c89:	f2 0f 58 85 68 ff ff 	addsd  -0x98(%rbp),%xmm0
    2c90:	ff 
    2c91:	f2 0f 11 45 e8       	movsd  %xmm0,-0x18(%rbp)
    2c96:	f2 0f 10 45 e0       	movsd  -0x20(%rbp),%xmm0
    2c9b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2c9f:	66 0f 28 c8          	movapd %xmm0,%xmm1
    2ca3:	66 48 0f 6e c0       	movq   %rax,%xmm0
    2ca8:	e8 93 f6 ff ff       	call   2340 <atan2@plt>
    2cad:	66 48 0f 7e c0       	movq   %xmm0,%rax
    2cb2:	48 89 45 80          	mov    %rax,-0x80(%rbp)
    2cb6:	66 0f ef c0          	pxor   %xmm0,%xmm0
    2cba:	66 0f 2f 45 80       	comisd -0x80(%rbp),%xmm0
    2cbf:	76 16                	jbe    2cd7 <calculateRaAndDistance+0x5bb>
    2cc1:	f2 0f 10 4d 80       	movsd  -0x80(%rbp),%xmm1
    2cc6:	f2 0f 10 05 6a 25 00 	movsd  0x256a(%rip),%xmm0        # 5238 <_IO_stdin_used+0x238>
    2ccd:	00 
    2cce:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    2cd2:	f2 0f 11 45 80       	movsd  %xmm0,-0x80(%rbp)
    2cd7:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
    2cde:	f2 0f 10 45 80       	movsd  -0x80(%rbp),%xmm0
    2ce3:	f2 0f 11 40 58       	movsd  %xmm0,0x58(%rax)
    2ce8:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    2cec:	66 48 0f 6e c0       	movq   %rax,%xmm0
    2cf1:	e8 5a f6 ff ff       	call   2350 <sin@plt>
    2cf6:	f2 0f 11 85 68 ff ff 	movsd  %xmm0,-0x98(%rbp)
    2cfd:	ff 
    2cfe:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    2d02:	66 48 0f 6e c0       	movq   %rax,%xmm0
    2d07:	e8 44 f6 ff ff       	call   2350 <sin@plt>
    2d0c:	f2 0f 59 85 68 ff ff 	mulsd  -0x98(%rbp),%xmm0
    2d13:	ff 
    2d14:	f2 0f 59 45 b8       	mulsd  -0x48(%rbp),%xmm0
    2d19:	f2 0f 11 85 68 ff ff 	movsd  %xmm0,-0x98(%rbp)
    2d20:	ff 
    2d21:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    2d25:	66 48 0f 6e c0       	movq   %rax,%xmm0
    2d2a:	e8 71 f8 ff ff       	call   25a0 <cos@plt>
    2d2f:	f2 0f 11 85 60 ff ff 	movsd  %xmm0,-0xa0(%rbp)
    2d36:	ff 
    2d37:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    2d3b:	66 48 0f 6e c0       	movq   %rax,%xmm0
    2d40:	e8 0b f6 ff ff       	call   2350 <sin@plt>
    2d45:	f2 0f 59 85 60 ff ff 	mulsd  -0xa0(%rbp),%xmm0
    2d4c:	ff 
    2d4d:	f2 0f 59 45 c0       	mulsd  -0x40(%rbp),%xmm0
    2d52:	f2 0f 58 85 68 ff ff 	addsd  -0x98(%rbp),%xmm0
    2d59:	ff 
    2d5a:	f2 0f 11 45 f0       	movsd  %xmm0,-0x10(%rbp)
    2d5f:	f2 0f 10 45 e0       	movsd  -0x20(%rbp),%xmm0
    2d64:	66 0f 28 c8          	movapd %xmm0,%xmm1
    2d68:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
    2d6c:	f2 0f 10 45 e8       	movsd  -0x18(%rbp),%xmm0
    2d71:	f2 0f 59 c0          	mulsd  %xmm0,%xmm0
    2d75:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
    2d79:	f2 0f 10 45 f0       	movsd  -0x10(%rbp),%xmm0
    2d7e:	f2 0f 59 c0          	mulsd  %xmm0,%xmm0
    2d82:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
    2d86:	66 48 0f 7e c8       	movq   %xmm1,%rax
    2d8b:	66 48 0f 6e c0       	movq   %rax,%xmm0
    2d90:	e8 3b f6 ff ff       	call   23d0 <sqrt@plt>
    2d95:	f2 0f 10 4d f0       	movsd  -0x10(%rbp),%xmm1
    2d9a:	f2 0f 5e c8          	divsd  %xmm0,%xmm1
    2d9e:	66 48 0f 7e c8       	movq   %xmm1,%rax
    2da3:	66 48 0f 6e c0       	movq   %rax,%xmm0
    2da8:	e8 83 f7 ff ff       	call   2530 <asin@plt>
    2dad:	66 48 0f 7e c0       	movq   %xmm0,%rax
    2db2:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    2db6:	f2 0f 10 4d f8       	movsd  -0x8(%rbp),%xmm1
    2dbb:	f2 0f 10 05 a5 24 00 	movsd  0x24a5(%rip),%xmm0        # 5268 <_IO_stdin_used+0x268>
    2dc2:	00 
    2dc3:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
    2dc7:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
    2dce:	f2 0f 11 40 60       	movsd  %xmm0,0x60(%rax)
    2dd3:	c9                   	leave  
    2dd4:	c3                   	ret    

0000000000002dd5 <setGalacticCoordinates>:
    2dd5:	f3 0f 1e fa          	endbr64 
    2dd9:	55                   	push   %rbp
    2dda:	48 89 e5             	mov    %rsp,%rbp
    2ddd:	48 83 ec 30          	sub    $0x30,%rsp
    2de1:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    2de5:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2dec:	00 00 
    2dee:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    2df2:	31 c0                	xor    %eax,%eax
    2df4:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    2df8:	f2 0f 10 40 60       	movsd  0x60(%rax),%xmm0
    2dfd:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    2e01:	48 8b 40 58          	mov    0x58(%rax),%rax
    2e05:	48 8d 4d f0          	lea    -0x10(%rbp),%rcx
    2e09:	48 8d 55 e8          	lea    -0x18(%rbp),%rdx
    2e0d:	48 89 ce             	mov    %rcx,%rsi
    2e10:	48 89 d7             	mov    %rdx,%rdi
    2e13:	66 0f 28 c8          	movapd %xmm0,%xmm1
    2e17:	66 48 0f 6e c0       	movq   %rax,%xmm0
    2e1c:	e8 3a 01 00 00       	call   2f5b <equatorial_to_galactic>
    2e21:	f2 0f 10 45 e8       	movsd  -0x18(%rbp),%xmm0
    2e26:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    2e2a:	f2 0f 11 40 68       	movsd  %xmm0,0x68(%rax)
    2e2f:	f2 0f 10 45 f0       	movsd  -0x10(%rbp),%xmm0
    2e34:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    2e38:	f2 0f 11 40 70       	movsd  %xmm0,0x70(%rax)
    2e3d:	90                   	nop
    2e3e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2e42:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    2e49:	00 00 
    2e4b:	74 05                	je     2e52 <setGalacticCoordinates+0x7d>
    2e4d:	e8 1e f6 ff ff       	call   2470 <__stack_chk_fail@plt>
    2e52:	c9                   	leave  
    2e53:	c3                   	ret    

0000000000002e54 <solveKeplersEquation>:
    2e54:	f3 0f 1e fa          	endbr64 
    2e58:	55                   	push   %rbp
    2e59:	48 89 e5             	mov    %rsp,%rbp
    2e5c:	48 83 ec 40          	sub    $0x40,%rsp
    2e60:	f2 0f 11 45 c8       	movsd  %xmm0,-0x38(%rbp)
    2e65:	f2 0f 11 4d c0       	movsd  %xmm1,-0x40(%rbp)
    2e6a:	f2 0f 10 45 c8       	movsd  -0x38(%rbp),%xmm0
    2e6f:	f2 0f 11 45 d8       	movsd  %xmm0,-0x28(%rbp)
    2e74:	f2 0f 10 05 f4 23 00 	movsd  0x23f4(%rip),%xmm0        # 5270 <_IO_stdin_used+0x270>
    2e7b:	00 
    2e7c:	f2 0f 11 45 e0       	movsd  %xmm0,-0x20(%rbp)
    2e81:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%rbp)
    2e88:	e9 b0 00 00 00       	jmp    2f3d <solveKeplersEquation+0xe9>
    2e8d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    2e91:	66 48 0f 6e c0       	movq   %rax,%xmm0
    2e96:	e8 b5 f4 ff ff       	call   2350 <sin@plt>
    2e9b:	66 48 0f 7e c0       	movq   %xmm0,%rax
    2ea0:	66 48 0f 6e c8       	movq   %rax,%xmm1
    2ea5:	f2 0f 59 4d c0       	mulsd  -0x40(%rbp),%xmm1
    2eaa:	f2 0f 10 45 d8       	movsd  -0x28(%rbp),%xmm0
    2eaf:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
    2eb3:	f2 0f 5c 45 c8       	subsd  -0x38(%rbp),%xmm0
    2eb8:	f2 0f 11 45 e8       	movsd  %xmm0,-0x18(%rbp)
    2ebd:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    2ec1:	66 48 0f 6e c0       	movq   %rax,%xmm0
    2ec6:	e8 d5 f6 ff ff       	call   25a0 <cos@plt>
    2ecb:	66 48 0f 7e c0       	movq   %xmm0,%rax
    2ed0:	66 48 0f 6e c8       	movq   %rax,%xmm1
    2ed5:	f2 0f 59 4d c0       	mulsd  -0x40(%rbp),%xmm1
    2eda:	f2 0f 10 05 66 23 00 	movsd  0x2366(%rip),%xmm0        # 5248 <_IO_stdin_used+0x248>
    2ee1:	00 
    2ee2:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
    2ee6:	f2 0f 11 45 f0       	movsd  %xmm0,-0x10(%rbp)
    2eeb:	f2 0f 10 45 e8       	movsd  -0x18(%rbp),%xmm0
    2ef0:	66 0f 28 c8          	movapd %xmm0,%xmm1
    2ef4:	f2 0f 5e 4d f0       	divsd  -0x10(%rbp),%xmm1
    2ef9:	f2 0f 10 45 d8       	movsd  -0x28(%rbp),%xmm0
    2efe:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
    2f02:	f2 0f 11 45 f8       	movsd  %xmm0,-0x8(%rbp)
    2f07:	f2 0f 10 45 f8       	movsd  -0x8(%rbp),%xmm0
    2f0c:	f2 0f 5c 45 d8       	subsd  -0x28(%rbp),%xmm0
    2f11:	f3 0f 7e 0d 67 23 00 	movq   0x2367(%rip),%xmm1        # 5280 <_IO_stdin_used+0x280>
    2f18:	00 
    2f19:	66 0f 54 c8          	andpd  %xmm0,%xmm1
    2f1d:	f2 0f 10 45 e0       	movsd  -0x20(%rbp),%xmm0
    2f22:	66 0f 2f c1          	comisd %xmm1,%xmm0
    2f26:	76 07                	jbe    2f2f <solveKeplersEquation+0xdb>
    2f28:	f2 0f 10 45 f8       	movsd  -0x8(%rbp),%xmm0
    2f2d:	eb 20                	jmp    2f4f <solveKeplersEquation+0xfb>
    2f2f:	f2 0f 10 45 f8       	movsd  -0x8(%rbp),%xmm0
    2f34:	f2 0f 11 45 d8       	movsd  %xmm0,-0x28(%rbp)
    2f39:	83 45 d4 01          	addl   $0x1,-0x2c(%rbp)
    2f3d:	83 7d d4 63          	cmpl   $0x63,-0x2c(%rbp)
    2f41:	0f 8e 46 ff ff ff    	jle    2e8d <solveKeplersEquation+0x39>
    2f47:	f2 0f 10 05 f1 22 00 	movsd  0x22f1(%rip),%xmm0        # 5240 <_IO_stdin_used+0x240>
    2f4e:	00 
    2f4f:	66 48 0f 7e c0       	movq   %xmm0,%rax
    2f54:	66 48 0f 6e c0       	movq   %rax,%xmm0
    2f59:	c9                   	leave  
    2f5a:	c3                   	ret    

0000000000002f5b <equatorial_to_galactic>:
    2f5b:	f3 0f 1e fa          	endbr64 
    2f5f:	55                   	push   %rbp
    2f60:	48 89 e5             	mov    %rsp,%rbp
    2f63:	48 83 ec 70          	sub    $0x70,%rsp
    2f67:	f2 0f 11 45 b8       	movsd  %xmm0,-0x48(%rbp)
    2f6c:	f2 0f 11 4d b0       	movsd  %xmm1,-0x50(%rbp)
    2f71:	48 89 7d a8          	mov    %rdi,-0x58(%rbp)
    2f75:	48 89 75 a0          	mov    %rsi,-0x60(%rbp)
    2f79:	f2 0f 10 4d b8       	movsd  -0x48(%rbp),%xmm1
    2f7e:	f2 0f 10 05 da 22 00 	movsd  0x22da(%rip),%xmm0        # 5260 <_IO_stdin_used+0x260>
    2f85:	00 
    2f86:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
    2f8a:	f2 0f 11 45 c0       	movsd  %xmm0,-0x40(%rbp)
    2f8f:	f2 0f 10 4d b0       	movsd  -0x50(%rbp),%xmm1
    2f94:	f2 0f 10 05 c4 22 00 	movsd  0x22c4(%rip),%xmm0        # 5260 <_IO_stdin_used+0x260>
    2f9b:	00 
    2f9c:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
    2fa0:	f2 0f 11 45 c8       	movsd  %xmm0,-0x38(%rbp)
    2fa5:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    2fa9:	66 48 0f 6e c0       	movq   %rax,%xmm0
    2fae:	e8 ed f5 ff ff       	call   25a0 <cos@plt>
    2fb3:	f2 0f 11 45 98       	movsd  %xmm0,-0x68(%rbp)
    2fb8:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    2fbc:	66 48 0f 6e c0       	movq   %rax,%xmm0
    2fc1:	e8 da f5 ff ff       	call   25a0 <cos@plt>
    2fc6:	f2 0f 59 45 98       	mulsd  -0x68(%rbp),%xmm0
    2fcb:	f2 0f 11 45 d0       	movsd  %xmm0,-0x30(%rbp)
    2fd0:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    2fd4:	66 48 0f 6e c0       	movq   %rax,%xmm0
    2fd9:	e8 c2 f5 ff ff       	call   25a0 <cos@plt>
    2fde:	f2 0f 11 45 98       	movsd  %xmm0,-0x68(%rbp)
    2fe3:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    2fe7:	66 48 0f 6e c0       	movq   %rax,%xmm0
    2fec:	e8 5f f3 ff ff       	call   2350 <sin@plt>
    2ff1:	f2 0f 59 45 98       	mulsd  -0x68(%rbp),%xmm0
    2ff6:	f2 0f 11 45 d8       	movsd  %xmm0,-0x28(%rbp)
    2ffb:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    2fff:	66 48 0f 6e c0       	movq   %rax,%xmm0
    3004:	e8 47 f3 ff ff       	call   2350 <sin@plt>
    3009:	66 48 0f 7e c0       	movq   %xmm0,%rax
    300e:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    3012:	f2 0f 10 45 d0       	movsd  -0x30(%rbp),%xmm0
    3017:	f3 0f 7e 0d 71 22 00 	movq   0x2271(%rip),%xmm1        # 5290 <_IO_stdin_used+0x290>
    301e:	00 
    301f:	66 0f 57 c8          	xorpd  %xmm0,%xmm1
    3023:	f2 0f 10 05 75 22 00 	movsd  0x2275(%rip),%xmm0        # 52a0 <_IO_stdin_used+0x2a0>
    302a:	00 
    302b:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
    302f:	f2 0f 10 55 d8       	movsd  -0x28(%rbp),%xmm2
    3034:	f2 0f 10 05 6c 22 00 	movsd  0x226c(%rip),%xmm0        # 52a8 <_IO_stdin_used+0x2a8>
    303b:	00 
    303c:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    3040:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    3044:	f2 0f 11 45 e8       	movsd  %xmm0,-0x18(%rbp)
    3049:	f2 0f 10 45 d0       	movsd  -0x30(%rbp),%xmm0
    304e:	f3 0f 7e 0d 3a 22 00 	movq   0x223a(%rip),%xmm1        # 5290 <_IO_stdin_used+0x290>
    3055:	00 
    3056:	66 0f 57 c8          	xorpd  %xmm0,%xmm1
    305a:	f2 0f 10 05 4e 22 00 	movsd  0x224e(%rip),%xmm0        # 52b0 <_IO_stdin_used+0x2b0>
    3061:	00 
    3062:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
    3066:	f2 0f 10 05 3a 22 00 	movsd  0x223a(%rip),%xmm0        # 52a8 <_IO_stdin_used+0x2a8>
    306d:	00 
    306e:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
    3072:	f2 0f 10 55 d8       	movsd  -0x28(%rbp),%xmm2
    3077:	f2 0f 10 0d 31 22 00 	movsd  0x2231(%rip),%xmm1        # 52b0 <_IO_stdin_used+0x2b0>
    307e:	00 
    307f:	f2 0f 59 d1          	mulsd  %xmm1,%xmm2
    3083:	f2 0f 10 0d 15 22 00 	movsd  0x2215(%rip),%xmm1        # 52a0 <_IO_stdin_used+0x2a0>
    308a:	00 
    308b:	f2 0f 59 d1          	mulsd  %xmm1,%xmm2
    308f:	66 0f 28 c8          	movapd %xmm0,%xmm1
    3093:	f2 0f 5c ca          	subsd  %xmm2,%xmm1
    3097:	f2 0f 10 55 e0       	movsd  -0x20(%rbp),%xmm2
    309c:	f2 0f 10 05 14 22 00 	movsd  0x2214(%rip),%xmm0        # 52b8 <_IO_stdin_used+0x2b8>
    30a3:	00 
    30a4:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    30a8:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    30ac:	f2 0f 11 45 f0       	movsd  %xmm0,-0x10(%rbp)
    30b1:	f2 0f 10 4d d0       	movsd  -0x30(%rbp),%xmm1
    30b6:	f2 0f 10 05 fa 21 00 	movsd  0x21fa(%rip),%xmm0        # 52b8 <_IO_stdin_used+0x2b8>
    30bd:	00 
    30be:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
    30c2:	f2 0f 10 05 de 21 00 	movsd  0x21de(%rip),%xmm0        # 52a8 <_IO_stdin_used+0x2a8>
    30c9:	00 
    30ca:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
    30ce:	f2 0f 10 55 d8       	movsd  -0x28(%rbp),%xmm2
    30d3:	f2 0f 10 05 dd 21 00 	movsd  0x21dd(%rip),%xmm0        # 52b8 <_IO_stdin_used+0x2b8>
    30da:	00 
    30db:	f2 0f 59 d0          	mulsd  %xmm0,%xmm2
    30df:	f2 0f 10 05 b9 21 00 	movsd  0x21b9(%rip),%xmm0        # 52a0 <_IO_stdin_used+0x2a0>
    30e6:	00 
    30e7:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    30eb:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
    30ef:	f2 0f 10 55 e0       	movsd  -0x20(%rbp),%xmm2
    30f4:	f2 0f 10 05 b4 21 00 	movsd  0x21b4(%rip),%xmm0        # 52b0 <_IO_stdin_used+0x2b0>
    30fb:	00 
    30fc:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    3100:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    3104:	f2 0f 11 45 f8       	movsd  %xmm0,-0x8(%rbp)
    3109:	f2 0f 10 45 e8       	movsd  -0x18(%rbp),%xmm0
    310e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    3112:	66 0f 28 c8          	movapd %xmm0,%xmm1
    3116:	66 48 0f 6e c0       	movq   %rax,%xmm0
    311b:	e8 20 f2 ff ff       	call   2340 <atan2@plt>
    3120:	66 48 0f 7e c0       	movq   %xmm0,%rax
    3125:	48 8b 55 a8          	mov    -0x58(%rbp),%rdx
    3129:	48 89 02             	mov    %rax,(%rdx)
    312c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3130:	66 48 0f 6e c0       	movq   %rax,%xmm0
    3135:	e8 f6 f3 ff ff       	call   2530 <asin@plt>
    313a:	66 48 0f 7e c0       	movq   %xmm0,%rax
    313f:	48 8b 55 a0          	mov    -0x60(%rbp),%rdx
    3143:	48 89 02             	mov    %rax,(%rdx)
    3146:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    314a:	f2 0f 10 08          	movsd  (%rax),%xmm1
    314e:	f2 0f 10 05 e2 20 00 	movsd  0x20e2(%rip),%xmm0        # 5238 <_IO_stdin_used+0x238>
    3155:	00 
    3156:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
    315a:	66 48 0f 7e c8       	movq   %xmm1,%rax
    315f:	f2 0f 10 05 d1 20 00 	movsd  0x20d1(%rip),%xmm0        # 5238 <_IO_stdin_used+0x238>
    3166:	00 
    3167:	66 0f 28 c8          	movapd %xmm0,%xmm1
    316b:	66 48 0f 6e c0       	movq   %rax,%xmm0
    3170:	e8 4b f3 ff ff       	call   24c0 <fmod@plt>
    3175:	f2 0f 10 0d 43 21 00 	movsd  0x2143(%rip),%xmm1        # 52c0 <_IO_stdin_used+0x2c0>
    317c:	00 
    317d:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
    3181:	f2 0f 10 0d 3f 21 00 	movsd  0x213f(%rip),%xmm1        # 52c8 <_IO_stdin_used+0x2c8>
    3188:	00 
    3189:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
    318d:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    3191:	f2 0f 11 00          	movsd  %xmm0,(%rax)
    3195:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
    3199:	f2 0f 10 08          	movsd  (%rax),%xmm1
    319d:	f2 0f 10 05 1b 21 00 	movsd  0x211b(%rip),%xmm0        # 52c0 <_IO_stdin_used+0x2c0>
    31a4:	00 
    31a5:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
    31a9:	f2 0f 10 0d 17 21 00 	movsd  0x2117(%rip),%xmm1        # 52c8 <_IO_stdin_used+0x2c8>
    31b0:	00 
    31b1:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
    31b5:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
    31b9:	f2 0f 11 00          	movsd  %xmm0,(%rax)
    31bd:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    31c1:	f2 0f 10 00          	movsd  (%rax),%xmm0
    31c5:	f2 0f 10 0d 03 21 00 	movsd  0x2103(%rip),%xmm1        # 52d0 <_IO_stdin_used+0x2d0>
    31cc:	00 
    31cd:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
    31d1:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    31d5:	f2 0f 11 00          	movsd  %xmm0,(%rax)
    31d9:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    31dd:	f2 0f 10 08          	movsd  (%rax),%xmm1
    31e1:	66 0f ef c0          	pxor   %xmm0,%xmm0
    31e5:	66 0f 2f c1          	comisd %xmm1,%xmm0
    31e9:	77 02                	ja     31ed <equatorial_to_galactic+0x292>
    31eb:	eb 1c                	jmp    3209 <equatorial_to_galactic+0x2ae>
    31ed:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    31f1:	f2 0f 10 08          	movsd  (%rax),%xmm1
    31f5:	f2 0f 10 05 db 20 00 	movsd  0x20db(%rip),%xmm0        # 52d8 <_IO_stdin_used+0x2d8>
    31fc:	00 
    31fd:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    3201:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    3205:	f2 0f 11 00          	movsd  %xmm0,(%rax)
    3209:	90                   	nop
    320a:	c9                   	leave  
    320b:	c3                   	ret    

000000000000320c <handle_session>:
    320c:	f3 0f 1e fa          	endbr64 
    3210:	55                   	push   %rbp
    3211:	48 89 e5             	mov    %rsp,%rbp
    3214:	48 83 ec 20          	sub    $0x20,%rsp
    3218:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    321c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    3220:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    3224:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3228:	48 89 c7             	mov    %rax,%rdi
    322b:	e8 1f 00 00 00       	call   324f <process_request>
    3230:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3234:	48 89 c7             	mov    %rax,%rdi
    3237:	e8 e4 f2 ff ff       	call   2520 <ssh_disconnect@plt>
    323c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3240:	48 89 c7             	mov    %rax,%rdi
    3243:	e8 48 f2 ff ff       	call   2490 <ssh_free@plt>
    3248:	b8 00 00 00 00       	mov    $0x0,%eax
    324d:	c9                   	leave  
    324e:	c3                   	ret    

000000000000324f <process_request>:
    324f:	f3 0f 1e fa          	endbr64 
    3253:	55                   	push   %rbp
    3254:	48 89 e5             	mov    %rsp,%rbp
    3257:	48 81 ec 50 03 00 00 	sub    $0x350,%rsp
    325e:	48 89 bd b8 fc ff ff 	mov    %rdi,-0x348(%rbp)
    3265:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    326c:	00 00 
    326e:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    3272:	31 c0                	xor    %eax,%eax
    3274:	48 8b 85 b8 fc ff ff 	mov    -0x348(%rbp),%rax
    327b:	48 89 c7             	mov    %rax,%rdi
    327e:	e8 3d f1 ff ff       	call   23c0 <ssh_channel_new@plt>
    3283:	48 89 85 e0 fc ff ff 	mov    %rax,-0x320(%rbp)
    328a:	48 83 bd e0 fc ff ff 	cmpq   $0x0,-0x320(%rbp)
    3291:	00 
    3292:	75 0a                	jne    329e <process_request+0x4f>
    3294:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3299:	e9 67 0b 00 00       	jmp    3e05 <process_request+0xbb6>
    329e:	48 8b 85 e0 fc ff ff 	mov    -0x320(%rbp),%rax
    32a5:	48 89 c7             	mov    %rax,%rdi
    32a8:	e8 e3 f2 ff ff       	call   2590 <ssh_channel_open_session@plt>
    32ad:	85 c0                	test   %eax,%eax
    32af:	74 19                	je     32ca <process_request+0x7b>
    32b1:	48 8b 85 e0 fc ff ff 	mov    -0x320(%rbp),%rax
    32b8:	48 89 c7             	mov    %rax,%rdi
    32bb:	e8 f0 f1 ff ff       	call   24b0 <ssh_channel_free@plt>
    32c0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    32c5:	e9 3b 0b 00 00       	jmp    3e05 <process_request+0xbb6>
    32ca:	48 8d 95 70 fd ff ff 	lea    -0x290(%rbp),%rdx
    32d1:	b8 00 00 00 00       	mov    $0x0,%eax
    32d6:	b9 0f 00 00 00       	mov    $0xf,%ecx
    32db:	48 89 d7             	mov    %rdx,%rdi
    32de:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    32e1:	48 8d 05 28 1d 00 00 	lea    0x1d28(%rip),%rax        # 5010 <_IO_stdin_used+0x10>
    32e8:	48 89 85 70 fd ff ff 	mov    %rax,-0x290(%rbp)
    32ef:	f2 0f 10 05 e9 1f 00 	movsd  0x1fe9(%rip),%xmm0        # 52e0 <_IO_stdin_used+0x2e0>
    32f6:	00 
    32f7:	f2 0f 11 85 78 fd ff 	movsd  %xmm0,-0x288(%rbp)
    32fe:	ff 
    32ff:	f2 0f 10 05 e1 1f 00 	movsd  0x1fe1(%rip),%xmm0        # 52e8 <_IO_stdin_used+0x2e8>
    3306:	00 
    3307:	f2 0f 11 85 80 fd ff 	movsd  %xmm0,-0x280(%rbp)
    330e:	ff 
    330f:	f2 0f 10 05 d9 1f 00 	movsd  0x1fd9(%rip),%xmm0        # 52f0 <_IO_stdin_used+0x2f0>
    3316:	00 
    3317:	f2 0f 11 85 88 fd ff 	movsd  %xmm0,-0x278(%rbp)
    331e:	ff 
    331f:	f2 0f 10 05 d1 1f 00 	movsd  0x1fd1(%rip),%xmm0        # 52f8 <_IO_stdin_used+0x2f8>
    3326:	00 
    3327:	f2 0f 11 85 90 fd ff 	movsd  %xmm0,-0x270(%rbp)
    332e:	ff 
    332f:	f2 0f 10 05 c9 1f 00 	movsd  0x1fc9(%rip),%xmm0        # 5300 <_IO_stdin_used+0x300>
    3336:	00 
    3337:	f2 0f 11 85 98 fd ff 	movsd  %xmm0,-0x268(%rbp)
    333e:	ff 
    333f:	48 8d b5 f0 fe ff ff 	lea    -0x110(%rbp),%rsi
    3346:	48 8b 85 e0 fc ff ff 	mov    -0x320(%rbp),%rax
    334d:	b9 00 00 00 00       	mov    $0x0,%ecx
    3352:	ba 00 01 00 00       	mov    $0x100,%edx
    3357:	48 89 c7             	mov    %rax,%rdi
    335a:	e8 a1 f0 ff ff       	call   2400 <ssh_channel_read@plt>
    335f:	89 85 cc fc ff ff    	mov    %eax,-0x334(%rbp)
    3365:	8b 85 cc fc ff ff    	mov    -0x334(%rbp),%eax
    336b:	48 98                	cltq   
    336d:	c6 84 05 f0 fe ff ff 	movb   $0x0,-0x110(%rbp,%rax,1)
    3374:	00 
    3375:	48 8d 95 f0 fd ff ff 	lea    -0x210(%rbp),%rdx
    337c:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
    3383:	be 00 00 00 00       	mov    $0x0,%esi
    3388:	48 89 c7             	mov    %rax,%rdi
    338b:	e8 d0 ef ff ff       	call   2360 <json_loads@plt>
    3390:	48 89 85 e8 fc ff ff 	mov    %rax,-0x318(%rbp)
    3397:	48 83 bd e8 fc ff ff 	cmpq   $0x0,-0x318(%rbp)
    339e:	00 
    339f:	0f 84 fd 05 00 00    	je     39a2 <process_request+0x753>
    33a5:	48 8b 85 e8 fc ff ff 	mov    -0x318(%rbp),%rax
    33ac:	48 8d 15 67 1c 00 00 	lea    0x1c67(%rip),%rdx        # 501a <_IO_stdin_used+0x1a>
    33b3:	48 89 d6             	mov    %rdx,%rsi
    33b6:	48 89 c7             	mov    %rax,%rdi
    33b9:	e8 02 f2 ff ff       	call   25c0 <json_object_get@plt>
    33be:	48 89 85 f0 fc ff ff 	mov    %rax,-0x310(%rbp)
    33c5:	48 83 bd f0 fc ff ff 	cmpq   $0x0,-0x310(%rbp)
    33cc:	00 
    33cd:	74 0e                	je     33dd <process_request+0x18e>
    33cf:	48 8b 85 f0 fc ff ff 	mov    -0x310(%rbp),%rax
    33d6:	8b 00                	mov    (%rax),%eax
    33d8:	83 f8 03             	cmp    $0x3,%eax
    33db:	74 18                	je     33f5 <process_request+0x1a6>
    33dd:	48 83 bd f0 fc ff ff 	cmpq   $0x0,-0x310(%rbp)
    33e4:	00 
    33e5:	74 29                	je     3410 <process_request+0x1c1>
    33e7:	48 8b 85 f0 fc ff ff 	mov    -0x310(%rbp),%rax
    33ee:	8b 00                	mov    (%rax),%eax
    33f0:	83 f8 04             	cmp    $0x4,%eax
    33f3:	75 1b                	jne    3410 <process_request+0x1c1>
    33f5:	48 8b 85 f0 fc ff ff 	mov    -0x310(%rbp),%rax
    33fc:	48 89 c7             	mov    %rax,%rdi
    33ff:	e8 cc f1 ff ff       	call   25d0 <json_number_value@plt>
    3404:	66 48 0f 7e c0       	movq   %xmm0,%rax
    3409:	48 89 85 78 fd ff ff 	mov    %rax,-0x288(%rbp)
    3410:	48 8b 85 e8 fc ff ff 	mov    -0x318(%rbp),%rax
    3417:	48 8d 15 01 1c 00 00 	lea    0x1c01(%rip),%rdx        # 501f <_IO_stdin_used+0x1f>
    341e:	48 89 d6             	mov    %rdx,%rsi
    3421:	48 89 c7             	mov    %rax,%rdi
    3424:	e8 97 f1 ff ff       	call   25c0 <json_object_get@plt>
    3429:	48 89 85 f8 fc ff ff 	mov    %rax,-0x308(%rbp)
    3430:	48 83 bd f8 fc ff ff 	cmpq   $0x0,-0x308(%rbp)
    3437:	00 
    3438:	74 0e                	je     3448 <process_request+0x1f9>
    343a:	48 8b 85 f8 fc ff ff 	mov    -0x308(%rbp),%rax
    3441:	8b 00                	mov    (%rax),%eax
    3443:	83 f8 03             	cmp    $0x3,%eax
    3446:	74 18                	je     3460 <process_request+0x211>
    3448:	48 83 bd f8 fc ff ff 	cmpq   $0x0,-0x308(%rbp)
    344f:	00 
    3450:	74 29                	je     347b <process_request+0x22c>
    3452:	48 8b 85 f8 fc ff ff 	mov    -0x308(%rbp),%rax
    3459:	8b 00                	mov    (%rax),%eax
    345b:	83 f8 04             	cmp    $0x4,%eax
    345e:	75 1b                	jne    347b <process_request+0x22c>
    3460:	48 8b 85 f8 fc ff ff 	mov    -0x308(%rbp),%rax
    3467:	48 89 c7             	mov    %rax,%rdi
    346a:	e8 61 f1 ff ff       	call   25d0 <json_number_value@plt>
    346f:	66 48 0f 7e c0       	movq   %xmm0,%rax
    3474:	48 89 85 80 fd ff ff 	mov    %rax,-0x280(%rbp)
    347b:	48 8b 85 e8 fc ff ff 	mov    -0x318(%rbp),%rax
    3482:	48 8d 15 a4 1b 00 00 	lea    0x1ba4(%rip),%rdx        # 502d <_IO_stdin_used+0x2d>
    3489:	48 89 d6             	mov    %rdx,%rsi
    348c:	48 89 c7             	mov    %rax,%rdi
    348f:	e8 2c f1 ff ff       	call   25c0 <json_object_get@plt>
    3494:	48 89 85 00 fd ff ff 	mov    %rax,-0x300(%rbp)
    349b:	48 83 bd 00 fd ff ff 	cmpq   $0x0,-0x300(%rbp)
    34a2:	00 
    34a3:	74 0e                	je     34b3 <process_request+0x264>
    34a5:	48 8b 85 00 fd ff ff 	mov    -0x300(%rbp),%rax
    34ac:	8b 00                	mov    (%rax),%eax
    34ae:	83 f8 03             	cmp    $0x3,%eax
    34b1:	74 18                	je     34cb <process_request+0x27c>
    34b3:	48 83 bd 00 fd ff ff 	cmpq   $0x0,-0x300(%rbp)
    34ba:	00 
    34bb:	74 29                	je     34e6 <process_request+0x297>
    34bd:	48 8b 85 00 fd ff ff 	mov    -0x300(%rbp),%rax
    34c4:	8b 00                	mov    (%rax),%eax
    34c6:	83 f8 04             	cmp    $0x4,%eax
    34c9:	75 1b                	jne    34e6 <process_request+0x297>
    34cb:	48 8b 85 00 fd ff ff 	mov    -0x300(%rbp),%rax
    34d2:	48 89 c7             	mov    %rax,%rdi
    34d5:	e8 f6 f0 ff ff       	call   25d0 <json_number_value@plt>
    34da:	66 48 0f 7e c0       	movq   %xmm0,%rax
    34df:	48 89 85 88 fd ff ff 	mov    %rax,-0x278(%rbp)
    34e6:	48 8b 85 e8 fc ff ff 	mov    -0x318(%rbp),%rax
    34ed:	48 8d 15 48 1b 00 00 	lea    0x1b48(%rip),%rdx        # 503c <_IO_stdin_used+0x3c>
    34f4:	48 89 d6             	mov    %rdx,%rsi
    34f7:	48 89 c7             	mov    %rax,%rdi
    34fa:	e8 c1 f0 ff ff       	call   25c0 <json_object_get@plt>
    34ff:	48 89 85 08 fd ff ff 	mov    %rax,-0x2f8(%rbp)
    3506:	48 83 bd 08 fd ff ff 	cmpq   $0x0,-0x2f8(%rbp)
    350d:	00 
    350e:	74 0e                	je     351e <process_request+0x2cf>
    3510:	48 8b 85 08 fd ff ff 	mov    -0x2f8(%rbp),%rax
    3517:	8b 00                	mov    (%rax),%eax
    3519:	83 f8 03             	cmp    $0x3,%eax
    351c:	74 18                	je     3536 <process_request+0x2e7>
    351e:	48 83 bd 08 fd ff ff 	cmpq   $0x0,-0x2f8(%rbp)
    3525:	00 
    3526:	74 29                	je     3551 <process_request+0x302>
    3528:	48 8b 85 08 fd ff ff 	mov    -0x2f8(%rbp),%rax
    352f:	8b 00                	mov    (%rax),%eax
    3531:	83 f8 04             	cmp    $0x4,%eax
    3534:	75 1b                	jne    3551 <process_request+0x302>
    3536:	48 8b 85 08 fd ff ff 	mov    -0x2f8(%rbp),%rax
    353d:	48 89 c7             	mov    %rax,%rdi
    3540:	e8 8b f0 ff ff       	call   25d0 <json_number_value@plt>
    3545:	66 48 0f 7e c0       	movq   %xmm0,%rax
    354a:	48 89 85 90 fd ff ff 	mov    %rax,-0x270(%rbp)
    3551:	48 8b 85 e8 fc ff ff 	mov    -0x318(%rbp),%rax
    3558:	48 8d 15 ec 1a 00 00 	lea    0x1aec(%rip),%rdx        # 504b <_IO_stdin_used+0x4b>
    355f:	48 89 d6             	mov    %rdx,%rsi
    3562:	48 89 c7             	mov    %rax,%rdi
    3565:	e8 56 f0 ff ff       	call   25c0 <json_object_get@plt>
    356a:	48 89 85 10 fd ff ff 	mov    %rax,-0x2f0(%rbp)
    3571:	48 83 bd 10 fd ff ff 	cmpq   $0x0,-0x2f0(%rbp)
    3578:	00 
    3579:	74 0e                	je     3589 <process_request+0x33a>
    357b:	48 8b 85 10 fd ff ff 	mov    -0x2f0(%rbp),%rax
    3582:	8b 00                	mov    (%rax),%eax
    3584:	83 f8 03             	cmp    $0x3,%eax
    3587:	74 18                	je     35a1 <process_request+0x352>
    3589:	48 83 bd 10 fd ff ff 	cmpq   $0x0,-0x2f0(%rbp)
    3590:	00 
    3591:	74 29                	je     35bc <process_request+0x36d>
    3593:	48 8b 85 10 fd ff ff 	mov    -0x2f0(%rbp),%rax
    359a:	8b 00                	mov    (%rax),%eax
    359c:	83 f8 04             	cmp    $0x4,%eax
    359f:	75 1b                	jne    35bc <process_request+0x36d>
    35a1:	48 8b 85 10 fd ff ff 	mov    -0x2f0(%rbp),%rax
    35a8:	48 89 c7             	mov    %rax,%rdi
    35ab:	e8 20 f0 ff ff       	call   25d0 <json_number_value@plt>
    35b0:	66 48 0f 7e c0       	movq   %xmm0,%rax
    35b5:	48 89 85 98 fd ff ff 	mov    %rax,-0x268(%rbp)
    35bc:	48 8b 85 e8 fc ff ff 	mov    -0x318(%rbp),%rax
    35c3:	48 8d 15 8e 1a 00 00 	lea    0x1a8e(%rip),%rdx        # 5058 <_IO_stdin_used+0x58>
    35ca:	48 89 d6             	mov    %rdx,%rsi
    35cd:	48 89 c7             	mov    %rax,%rdi
    35d0:	e8 eb ef ff ff       	call   25c0 <json_object_get@plt>
    35d5:	48 89 85 18 fd ff ff 	mov    %rax,-0x2e8(%rbp)
    35dc:	48 83 bd 18 fd ff ff 	cmpq   $0x0,-0x2e8(%rbp)
    35e3:	00 
    35e4:	74 0e                	je     35f4 <process_request+0x3a5>
    35e6:	48 8b 85 18 fd ff ff 	mov    -0x2e8(%rbp),%rax
    35ed:	8b 00                	mov    (%rax),%eax
    35ef:	83 f8 03             	cmp    $0x3,%eax
    35f2:	74 18                	je     360c <process_request+0x3bd>
    35f4:	48 83 bd 18 fd ff ff 	cmpq   $0x0,-0x2e8(%rbp)
    35fb:	00 
    35fc:	74 29                	je     3627 <process_request+0x3d8>
    35fe:	48 8b 85 18 fd ff ff 	mov    -0x2e8(%rbp),%rax
    3605:	8b 00                	mov    (%rax),%eax
    3607:	83 f8 04             	cmp    $0x4,%eax
    360a:	75 1b                	jne    3627 <process_request+0x3d8>
    360c:	48 8b 85 18 fd ff ff 	mov    -0x2e8(%rbp),%rax
    3613:	48 89 c7             	mov    %rax,%rdi
    3616:	e8 b5 ef ff ff       	call   25d0 <json_number_value@plt>
    361b:	66 48 0f 7e c0       	movq   %xmm0,%rax
    3620:	48 89 85 a0 fd ff ff 	mov    %rax,-0x260(%rbp)
    3627:	48 8b 85 e8 fc ff ff 	mov    -0x318(%rbp),%rax
    362e:	48 8d 15 2f 1a 00 00 	lea    0x1a2f(%rip),%rdx        # 5064 <_IO_stdin_used+0x64>
    3635:	48 89 d6             	mov    %rdx,%rsi
    3638:	48 89 c7             	mov    %rax,%rdi
    363b:	e8 80 ef ff ff       	call   25c0 <json_object_get@plt>
    3640:	48 89 85 20 fd ff ff 	mov    %rax,-0x2e0(%rbp)
    3647:	48 83 bd 20 fd ff ff 	cmpq   $0x0,-0x2e0(%rbp)
    364e:	00 
    364f:	74 0e                	je     365f <process_request+0x410>
    3651:	48 8b 85 20 fd ff ff 	mov    -0x2e0(%rbp),%rax
    3658:	8b 00                	mov    (%rax),%eax
    365a:	83 f8 03             	cmp    $0x3,%eax
    365d:	74 18                	je     3677 <process_request+0x428>
    365f:	48 83 bd 20 fd ff ff 	cmpq   $0x0,-0x2e0(%rbp)
    3666:	00 
    3667:	74 29                	je     3692 <process_request+0x443>
    3669:	48 8b 85 20 fd ff ff 	mov    -0x2e0(%rbp),%rax
    3670:	8b 00                	mov    (%rax),%eax
    3672:	83 f8 04             	cmp    $0x4,%eax
    3675:	75 1b                	jne    3692 <process_request+0x443>
    3677:	48 8b 85 20 fd ff ff 	mov    -0x2e0(%rbp),%rax
    367e:	48 89 c7             	mov    %rax,%rdi
    3681:	e8 4a ef ff ff       	call   25d0 <json_number_value@plt>
    3686:	66 48 0f 7e c0       	movq   %xmm0,%rax
    368b:	48 89 85 a8 fd ff ff 	mov    %rax,-0x258(%rbp)
    3692:	48 8b 85 e8 fc ff ff 	mov    -0x318(%rbp),%rax
    3699:	48 8d 15 d6 19 00 00 	lea    0x19d6(%rip),%rdx        # 5076 <_IO_stdin_used+0x76>
    36a0:	48 89 d6             	mov    %rdx,%rsi
    36a3:	48 89 c7             	mov    %rax,%rdi
    36a6:	e8 15 ef ff ff       	call   25c0 <json_object_get@plt>
    36ab:	48 89 85 28 fd ff ff 	mov    %rax,-0x2d8(%rbp)
    36b2:	48 83 bd 28 fd ff ff 	cmpq   $0x0,-0x2d8(%rbp)
    36b9:	00 
    36ba:	74 0e                	je     36ca <process_request+0x47b>
    36bc:	48 8b 85 28 fd ff ff 	mov    -0x2d8(%rbp),%rax
    36c3:	8b 00                	mov    (%rax),%eax
    36c5:	83 f8 03             	cmp    $0x3,%eax
    36c8:	74 18                	je     36e2 <process_request+0x493>
    36ca:	48 83 bd 28 fd ff ff 	cmpq   $0x0,-0x2d8(%rbp)
    36d1:	00 
    36d2:	74 29                	je     36fd <process_request+0x4ae>
    36d4:	48 8b 85 28 fd ff ff 	mov    -0x2d8(%rbp),%rax
    36db:	8b 00                	mov    (%rax),%eax
    36dd:	83 f8 04             	cmp    $0x4,%eax
    36e0:	75 1b                	jne    36fd <process_request+0x4ae>
    36e2:	48 8b 85 28 fd ff ff 	mov    -0x2d8(%rbp),%rax
    36e9:	48 89 c7             	mov    %rax,%rdi
    36ec:	e8 df ee ff ff       	call   25d0 <json_number_value@plt>
    36f1:	66 48 0f 7e c0       	movq   %xmm0,%rax
    36f6:	48 89 85 b0 fd ff ff 	mov    %rax,-0x250(%rbp)
    36fd:	48 8b 85 e8 fc ff ff 	mov    -0x318(%rbp),%rax
    3704:	48 8d 15 81 19 00 00 	lea    0x1981(%rip),%rdx        # 508c <_IO_stdin_used+0x8c>
    370b:	48 89 d6             	mov    %rdx,%rsi
    370e:	48 89 c7             	mov    %rax,%rdi
    3711:	e8 aa ee ff ff       	call   25c0 <json_object_get@plt>
    3716:	48 89 85 30 fd ff ff 	mov    %rax,-0x2d0(%rbp)
    371d:	48 83 bd 30 fd ff ff 	cmpq   $0x0,-0x2d0(%rbp)
    3724:	00 
    3725:	74 0e                	je     3735 <process_request+0x4e6>
    3727:	48 8b 85 30 fd ff ff 	mov    -0x2d0(%rbp),%rax
    372e:	8b 00                	mov    (%rax),%eax
    3730:	83 f8 03             	cmp    $0x3,%eax
    3733:	74 18                	je     374d <process_request+0x4fe>
    3735:	48 83 bd 30 fd ff ff 	cmpq   $0x0,-0x2d0(%rbp)
    373c:	00 
    373d:	74 29                	je     3768 <process_request+0x519>
    373f:	48 8b 85 30 fd ff ff 	mov    -0x2d0(%rbp),%rax
    3746:	8b 00                	mov    (%rax),%eax
    3748:	83 f8 04             	cmp    $0x4,%eax
    374b:	75 1b                	jne    3768 <process_request+0x519>
    374d:	48 8b 85 30 fd ff ff 	mov    -0x2d0(%rbp),%rax
    3754:	48 89 c7             	mov    %rax,%rdi
    3757:	e8 74 ee ff ff       	call   25d0 <json_number_value@plt>
    375c:	66 48 0f 7e c0       	movq   %xmm0,%rax
    3761:	48 89 85 b8 fd ff ff 	mov    %rax,-0x248(%rbp)
    3768:	48 8b 85 e8 fc ff ff 	mov    -0x318(%rbp),%rax
    376f:	48 8d 15 20 19 00 00 	lea    0x1920(%rip),%rdx        # 5096 <_IO_stdin_used+0x96>
    3776:	48 89 d6             	mov    %rdx,%rsi
    3779:	48 89 c7             	mov    %rax,%rdi
    377c:	e8 3f ee ff ff       	call   25c0 <json_object_get@plt>
    3781:	48 89 85 38 fd ff ff 	mov    %rax,-0x2c8(%rbp)
    3788:	48 83 bd 38 fd ff ff 	cmpq   $0x0,-0x2c8(%rbp)
    378f:	00 
    3790:	74 0e                	je     37a0 <process_request+0x551>
    3792:	48 8b 85 38 fd ff ff 	mov    -0x2c8(%rbp),%rax
    3799:	8b 00                	mov    (%rax),%eax
    379b:	83 f8 03             	cmp    $0x3,%eax
    379e:	74 18                	je     37b8 <process_request+0x569>
    37a0:	48 83 bd 38 fd ff ff 	cmpq   $0x0,-0x2c8(%rbp)
    37a7:	00 
    37a8:	74 29                	je     37d3 <process_request+0x584>
    37aa:	48 8b 85 38 fd ff ff 	mov    -0x2c8(%rbp),%rax
    37b1:	8b 00                	mov    (%rax),%eax
    37b3:	83 f8 04             	cmp    $0x4,%eax
    37b6:	75 1b                	jne    37d3 <process_request+0x584>
    37b8:	48 8b 85 38 fd ff ff 	mov    -0x2c8(%rbp),%rax
    37bf:	48 89 c7             	mov    %rax,%rdi
    37c2:	e8 09 ee ff ff       	call   25d0 <json_number_value@plt>
    37c7:	66 48 0f 7e c0       	movq   %xmm0,%rax
    37cc:	48 89 85 c0 fd ff ff 	mov    %rax,-0x240(%rbp)
    37d3:	48 8b 85 e8 fc ff ff 	mov    -0x318(%rbp),%rax
    37da:	48 8d 15 be 18 00 00 	lea    0x18be(%rip),%rdx        # 509f <_IO_stdin_used+0x9f>
    37e1:	48 89 d6             	mov    %rdx,%rsi
    37e4:	48 89 c7             	mov    %rax,%rdi
    37e7:	e8 d4 ed ff ff       	call   25c0 <json_object_get@plt>
    37ec:	48 89 85 40 fd ff ff 	mov    %rax,-0x2c0(%rbp)
    37f3:	48 83 bd 40 fd ff ff 	cmpq   $0x0,-0x2c0(%rbp)
    37fa:	00 
    37fb:	74 0e                	je     380b <process_request+0x5bc>
    37fd:	48 8b 85 40 fd ff ff 	mov    -0x2c0(%rbp),%rax
    3804:	8b 00                	mov    (%rax),%eax
    3806:	83 f8 03             	cmp    $0x3,%eax
    3809:	74 18                	je     3823 <process_request+0x5d4>
    380b:	48 83 bd 40 fd ff ff 	cmpq   $0x0,-0x2c0(%rbp)
    3812:	00 
    3813:	74 29                	je     383e <process_request+0x5ef>
    3815:	48 8b 85 40 fd ff ff 	mov    -0x2c0(%rbp),%rax
    381c:	8b 00                	mov    (%rax),%eax
    381e:	83 f8 04             	cmp    $0x4,%eax
    3821:	75 1b                	jne    383e <process_request+0x5ef>
    3823:	48 8b 85 40 fd ff ff 	mov    -0x2c0(%rbp),%rax
    382a:	48 89 c7             	mov    %rax,%rdi
    382d:	e8 9e ed ff ff       	call   25d0 <json_number_value@plt>
    3832:	66 48 0f 7e c0       	movq   %xmm0,%rax
    3837:	48 89 85 d0 fd ff ff 	mov    %rax,-0x230(%rbp)
    383e:	48 8b 85 e8 fc ff ff 	mov    -0x318(%rbp),%rax
    3845:	48 8d 15 5f 18 00 00 	lea    0x185f(%rip),%rdx        # 50ab <_IO_stdin_used+0xab>
    384c:	48 89 d6             	mov    %rdx,%rsi
    384f:	48 89 c7             	mov    %rax,%rdi
    3852:	e8 69 ed ff ff       	call   25c0 <json_object_get@plt>
    3857:	48 89 85 48 fd ff ff 	mov    %rax,-0x2b8(%rbp)
    385e:	48 83 bd 48 fd ff ff 	cmpq   $0x0,-0x2b8(%rbp)
    3865:	00 
    3866:	74 0e                	je     3876 <process_request+0x627>
    3868:	48 8b 85 48 fd ff ff 	mov    -0x2b8(%rbp),%rax
    386f:	8b 00                	mov    (%rax),%eax
    3871:	83 f8 03             	cmp    $0x3,%eax
    3874:	74 18                	je     388e <process_request+0x63f>
    3876:	48 83 bd 48 fd ff ff 	cmpq   $0x0,-0x2b8(%rbp)
    387d:	00 
    387e:	74 29                	je     38a9 <process_request+0x65a>
    3880:	48 8b 85 48 fd ff ff 	mov    -0x2b8(%rbp),%rax
    3887:	8b 00                	mov    (%rax),%eax
    3889:	83 f8 04             	cmp    $0x4,%eax
    388c:	75 1b                	jne    38a9 <process_request+0x65a>
    388e:	48 8b 85 48 fd ff ff 	mov    -0x2b8(%rbp),%rax
    3895:	48 89 c7             	mov    %rax,%rdi
    3898:	e8 33 ed ff ff       	call   25d0 <json_number_value@plt>
    389d:	66 48 0f 7e c0       	movq   %xmm0,%rax
    38a2:	48 89 85 d8 fd ff ff 	mov    %rax,-0x228(%rbp)
    38a9:	48 8b 85 e8 fc ff ff 	mov    -0x318(%rbp),%rax
    38b0:	48 8d 15 06 18 00 00 	lea    0x1806(%rip),%rdx        # 50bd <_IO_stdin_used+0xbd>
    38b7:	48 89 d6             	mov    %rdx,%rsi
    38ba:	48 89 c7             	mov    %rax,%rdi
    38bd:	e8 fe ec ff ff       	call   25c0 <json_object_get@plt>
    38c2:	48 89 85 50 fd ff ff 	mov    %rax,-0x2b0(%rbp)
    38c9:	48 83 bd 50 fd ff ff 	cmpq   $0x0,-0x2b0(%rbp)
    38d0:	00 
    38d1:	74 0e                	je     38e1 <process_request+0x692>
    38d3:	48 8b 85 50 fd ff ff 	mov    -0x2b0(%rbp),%rax
    38da:	8b 00                	mov    (%rax),%eax
    38dc:	83 f8 03             	cmp    $0x3,%eax
    38df:	74 18                	je     38f9 <process_request+0x6aa>
    38e1:	48 83 bd 50 fd ff ff 	cmpq   $0x0,-0x2b0(%rbp)
    38e8:	00 
    38e9:	74 29                	je     3914 <process_request+0x6c5>
    38eb:	48 8b 85 50 fd ff ff 	mov    -0x2b0(%rbp),%rax
    38f2:	8b 00                	mov    (%rax),%eax
    38f4:	83 f8 04             	cmp    $0x4,%eax
    38f7:	75 1b                	jne    3914 <process_request+0x6c5>
    38f9:	48 8b 85 50 fd ff ff 	mov    -0x2b0(%rbp),%rax
    3900:	48 89 c7             	mov    %rax,%rdi
    3903:	e8 c8 ec ff ff       	call   25d0 <json_number_value@plt>
    3908:	66 48 0f 7e c0       	movq   %xmm0,%rax
    390d:	48 89 85 e0 fd ff ff 	mov    %rax,-0x220(%rbp)
    3914:	48 8b 85 e8 fc ff ff 	mov    -0x318(%rbp),%rax
    391b:	48 8d 15 ac 17 00 00 	lea    0x17ac(%rip),%rdx        # 50ce <_IO_stdin_used+0xce>
    3922:	48 89 d6             	mov    %rdx,%rsi
    3925:	48 89 c7             	mov    %rax,%rdi
    3928:	e8 93 ec ff ff       	call   25c0 <json_object_get@plt>
    392d:	48 89 85 58 fd ff ff 	mov    %rax,-0x2a8(%rbp)
    3934:	48 83 bd 58 fd ff ff 	cmpq   $0x0,-0x2a8(%rbp)
    393b:	00 
    393c:	74 0e                	je     394c <process_request+0x6fd>
    393e:	48 8b 85 58 fd ff ff 	mov    -0x2a8(%rbp),%rax
    3945:	8b 00                	mov    (%rax),%eax
    3947:	83 f8 03             	cmp    $0x3,%eax
    394a:	74 18                	je     3964 <process_request+0x715>
    394c:	48 83 bd 58 fd ff ff 	cmpq   $0x0,-0x2a8(%rbp)
    3953:	00 
    3954:	74 29                	je     397f <process_request+0x730>
    3956:	48 8b 85 58 fd ff ff 	mov    -0x2a8(%rbp),%rax
    395d:	8b 00                	mov    (%rax),%eax
    395f:	83 f8 04             	cmp    $0x4,%eax
    3962:	75 1b                	jne    397f <process_request+0x730>
    3964:	48 8b 85 58 fd ff ff 	mov    -0x2a8(%rbp),%rax
    396b:	48 89 c7             	mov    %rax,%rdi
    396e:	e8 5d ec ff ff       	call   25d0 <json_number_value@plt>
    3973:	66 48 0f 7e c0       	movq   %xmm0,%rax
    3978:	48 89 85 c8 fd ff ff 	mov    %rax,-0x238(%rbp)
    397f:	48 8b 85 e8 fc ff ff 	mov    -0x318(%rbp),%rax
    3986:	48 89 c7             	mov    %rax,%rdi
    3989:	e8 3b ed ff ff       	call   26c9 <json_decref>
    398e:	f2 0f 10 85 b8 fd ff 	movsd  -0x248(%rbp),%xmm0
    3995:	ff 
    3996:	66 0f ef c9          	pxor   %xmm1,%xmm1
    399a:	66 0f 2f c1          	comisd %xmm1,%xmm0
    399e:	77 35                	ja     39d5 <process_request+0x786>
    39a0:	eb 45                	jmp    39e7 <process_request+0x798>
    39a2:	48 8b 05 77 36 00 00 	mov    0x3677(%rip),%rax        # 7020 <stderr@GLIBC_2.2.5>
    39a9:	48 8d 95 f0 fd ff ff 	lea    -0x210(%rbp),%rdx
    39b0:	48 83 c2 5c          	add    $0x5c,%rdx
    39b4:	48 8d 0d 16 17 00 00 	lea    0x1716(%rip),%rcx        # 50d1 <_IO_stdin_used+0xd1>
    39bb:	48 89 ce             	mov    %rcx,%rsi
    39be:	48 89 c7             	mov    %rax,%rdi
    39c1:	b8 00 00 00 00       	mov    $0x0,%eax
    39c6:	e8 25 eb ff ff       	call   24f0 <fprintf@plt>
    39cb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    39d0:	e9 30 04 00 00       	jmp    3e05 <process_request+0xbb6>
    39d5:	f2 0f 10 85 b8 fd ff 	movsd  -0x248(%rbp),%xmm0
    39dc:	ff 
    39dd:	f2 0f 11 85 d8 fc ff 	movsd  %xmm0,-0x328(%rbp)
    39e4:	ff 
    39e5:	eb 27                	jmp    3a0e <process_request+0x7bf>
    39e7:	48 8d 85 d0 fc ff ff 	lea    -0x330(%rbp),%rax
    39ee:	48 89 c7             	mov    %rax,%rdi
    39f1:	e8 2a ea ff ff       	call   2420 <time@plt>
    39f6:	48 8b 85 d0 fc ff ff 	mov    -0x330(%rbp),%rax
    39fd:	66 0f ef c0          	pxor   %xmm0,%xmm0
    3a01:	f2 48 0f 2a c0       	cvtsi2sd %rax,%xmm0
    3a06:	f2 0f 11 85 d8 fc ff 	movsd  %xmm0,-0x328(%rbp)
    3a0d:	ff 
    3a0e:	48 8b 95 d8 fc ff ff 	mov    -0x328(%rbp),%rdx
    3a15:	48 8d 85 70 fd ff ff 	lea    -0x290(%rbp),%rax
    3a1c:	66 48 0f 6e c2       	movq   %rdx,%xmm0
    3a21:	48 89 c7             	mov    %rax,%rdi
    3a24:	e8 f3 ec ff ff       	call   271c <calculateRaAndDistance>
    3a29:	48 8d 85 70 fd ff ff 	lea    -0x290(%rbp),%rax
    3a30:	48 89 c7             	mov    %rax,%rdi
    3a33:	e8 9d f3 ff ff       	call   2dd5 <setGalacticCoordinates>
    3a38:	e8 b3 e9 ff ff       	call   23f0 <json_object@plt>
    3a3d:	48 89 85 60 fd ff ff 	mov    %rax,-0x2a0(%rbp)
    3a44:	48 8b 85 70 fd ff ff 	mov    -0x290(%rbp),%rax
    3a4b:	48 89 c7             	mov    %rax,%rdi
    3a4e:	e8 cd e8 ff ff       	call   2320 <json_string@plt>
    3a53:	48 89 c2             	mov    %rax,%rdx
    3a56:	48 8b 85 60 fd ff ff 	mov    -0x2a0(%rbp),%rax
    3a5d:	48 8d 0d 85 16 00 00 	lea    0x1685(%rip),%rcx        # 50e9 <_IO_stdin_used+0xe9>
    3a64:	48 89 ce             	mov    %rcx,%rsi
    3a67:	48 89 c7             	mov    %rax,%rdi
    3a6a:	e8 31 ea ff ff       	call   24a0 <json_object_set_new@plt>
    3a6f:	48 8b 85 78 fd ff ff 	mov    -0x288(%rbp),%rax
    3a76:	66 48 0f 6e c0       	movq   %rax,%xmm0
    3a7b:	e8 b0 e9 ff ff       	call   2430 <json_real@plt>
    3a80:	48 89 c2             	mov    %rax,%rdx
    3a83:	48 8b 85 60 fd ff ff 	mov    -0x2a0(%rbp),%rax
    3a8a:	48 8d 0d 89 15 00 00 	lea    0x1589(%rip),%rcx        # 501a <_IO_stdin_used+0x1a>
    3a91:	48 89 ce             	mov    %rcx,%rsi
    3a94:	48 89 c7             	mov    %rax,%rdi
    3a97:	e8 04 ea ff ff       	call   24a0 <json_object_set_new@plt>
    3a9c:	48 8b 85 80 fd ff ff 	mov    -0x280(%rbp),%rax
    3aa3:	66 48 0f 6e c0       	movq   %rax,%xmm0
    3aa8:	e8 83 e9 ff ff       	call   2430 <json_real@plt>
    3aad:	48 89 c2             	mov    %rax,%rdx
    3ab0:	48 8b 85 60 fd ff ff 	mov    -0x2a0(%rbp),%rax
    3ab7:	48 8d 0d 61 15 00 00 	lea    0x1561(%rip),%rcx        # 501f <_IO_stdin_used+0x1f>
    3abe:	48 89 ce             	mov    %rcx,%rsi
    3ac1:	48 89 c7             	mov    %rax,%rdi
    3ac4:	e8 d7 e9 ff ff       	call   24a0 <json_object_set_new@plt>
    3ac9:	48 8b 85 88 fd ff ff 	mov    -0x278(%rbp),%rax
    3ad0:	66 48 0f 6e c0       	movq   %rax,%xmm0
    3ad5:	e8 56 e9 ff ff       	call   2430 <json_real@plt>
    3ada:	48 89 c2             	mov    %rax,%rdx
    3add:	48 8b 85 60 fd ff ff 	mov    -0x2a0(%rbp),%rax
    3ae4:	48 8d 0d 42 15 00 00 	lea    0x1542(%rip),%rcx        # 502d <_IO_stdin_used+0x2d>
    3aeb:	48 89 ce             	mov    %rcx,%rsi
    3aee:	48 89 c7             	mov    %rax,%rdi
    3af1:	e8 aa e9 ff ff       	call   24a0 <json_object_set_new@plt>
    3af6:	48 8b 85 90 fd ff ff 	mov    -0x270(%rbp),%rax
    3afd:	66 48 0f 6e c0       	movq   %rax,%xmm0
    3b02:	e8 29 e9 ff ff       	call   2430 <json_real@plt>
    3b07:	48 89 c2             	mov    %rax,%rdx
    3b0a:	48 8b 85 60 fd ff ff 	mov    -0x2a0(%rbp),%rax
    3b11:	48 8d 0d 24 15 00 00 	lea    0x1524(%rip),%rcx        # 503c <_IO_stdin_used+0x3c>
    3b18:	48 89 ce             	mov    %rcx,%rsi
    3b1b:	48 89 c7             	mov    %rax,%rdi
    3b1e:	e8 7d e9 ff ff       	call   24a0 <json_object_set_new@plt>
    3b23:	48 8b 85 98 fd ff ff 	mov    -0x268(%rbp),%rax
    3b2a:	66 48 0f 6e c0       	movq   %rax,%xmm0
    3b2f:	e8 fc e8 ff ff       	call   2430 <json_real@plt>
    3b34:	48 89 c2             	mov    %rax,%rdx
    3b37:	48 8b 85 60 fd ff ff 	mov    -0x2a0(%rbp),%rax
    3b3e:	48 8d 0d 06 15 00 00 	lea    0x1506(%rip),%rcx        # 504b <_IO_stdin_used+0x4b>
    3b45:	48 89 ce             	mov    %rcx,%rsi
    3b48:	48 89 c7             	mov    %rax,%rdi
    3b4b:	e8 50 e9 ff ff       	call   24a0 <json_object_set_new@plt>
    3b50:	48 8b 85 a0 fd ff ff 	mov    -0x260(%rbp),%rax
    3b57:	66 48 0f 6e c0       	movq   %rax,%xmm0
    3b5c:	e8 cf e8 ff ff       	call   2430 <json_real@plt>
    3b61:	48 89 c2             	mov    %rax,%rdx
    3b64:	48 8b 85 60 fd ff ff 	mov    -0x2a0(%rbp),%rax
    3b6b:	48 8d 0d e6 14 00 00 	lea    0x14e6(%rip),%rcx        # 5058 <_IO_stdin_used+0x58>
    3b72:	48 89 ce             	mov    %rcx,%rsi
    3b75:	48 89 c7             	mov    %rax,%rdi
    3b78:	e8 23 e9 ff ff       	call   24a0 <json_object_set_new@plt>
    3b7d:	48 8b 85 a8 fd ff ff 	mov    -0x258(%rbp),%rax
    3b84:	66 48 0f 6e c0       	movq   %rax,%xmm0
    3b89:	e8 a2 e8 ff ff       	call   2430 <json_real@plt>
    3b8e:	48 89 c2             	mov    %rax,%rdx
    3b91:	48 8b 85 60 fd ff ff 	mov    -0x2a0(%rbp),%rax
    3b98:	48 8d 0d c5 14 00 00 	lea    0x14c5(%rip),%rcx        # 5064 <_IO_stdin_used+0x64>
    3b9f:	48 89 ce             	mov    %rcx,%rsi
    3ba2:	48 89 c7             	mov    %rax,%rdi
    3ba5:	e8 f6 e8 ff ff       	call   24a0 <json_object_set_new@plt>
    3baa:	48 8b 85 b0 fd ff ff 	mov    -0x250(%rbp),%rax
    3bb1:	66 48 0f 6e c0       	movq   %rax,%xmm0
    3bb6:	e8 75 e8 ff ff       	call   2430 <json_real@plt>
    3bbb:	48 89 c2             	mov    %rax,%rdx
    3bbe:	48 8b 85 60 fd ff ff 	mov    -0x2a0(%rbp),%rax
    3bc5:	48 8d 0d aa 14 00 00 	lea    0x14aa(%rip),%rcx        # 5076 <_IO_stdin_used+0x76>
    3bcc:	48 89 ce             	mov    %rcx,%rsi
    3bcf:	48 89 c7             	mov    %rax,%rdi
    3bd2:	e8 c9 e8 ff ff       	call   24a0 <json_object_set_new@plt>
    3bd7:	48 8b 85 d8 fd ff ff 	mov    -0x228(%rbp),%rax
    3bde:	66 48 0f 6e c0       	movq   %rax,%xmm0
    3be3:	e8 48 e8 ff ff       	call   2430 <json_real@plt>
    3be8:	48 89 c2             	mov    %rax,%rdx
    3beb:	48 8b 85 60 fd ff ff 	mov    -0x2a0(%rbp),%rax
    3bf2:	48 8d 0d b2 14 00 00 	lea    0x14b2(%rip),%rcx        # 50ab <_IO_stdin_used+0xab>
    3bf9:	48 89 ce             	mov    %rcx,%rsi
    3bfc:	48 89 c7             	mov    %rax,%rdi
    3bff:	e8 9c e8 ff ff       	call   24a0 <json_object_set_new@plt>
    3c04:	48 8b 85 e0 fd ff ff 	mov    -0x220(%rbp),%rax
    3c0b:	66 48 0f 6e c0       	movq   %rax,%xmm0
    3c10:	e8 1b e8 ff ff       	call   2430 <json_real@plt>
    3c15:	48 89 c2             	mov    %rax,%rdx
    3c18:	48 8b 85 60 fd ff ff 	mov    -0x2a0(%rbp),%rax
    3c1f:	48 8d 0d 97 14 00 00 	lea    0x1497(%rip),%rcx        # 50bd <_IO_stdin_used+0xbd>
    3c26:	48 89 ce             	mov    %rcx,%rsi
    3c29:	48 89 c7             	mov    %rax,%rdi
    3c2c:	e8 6f e8 ff ff       	call   24a0 <json_object_set_new@plt>
    3c31:	48 8b 85 d0 fd ff ff 	mov    -0x230(%rbp),%rax
    3c38:	66 48 0f 6e c0       	movq   %rax,%xmm0
    3c3d:	e8 ee e7 ff ff       	call   2430 <json_real@plt>
    3c42:	48 89 c2             	mov    %rax,%rdx
    3c45:	48 8b 85 60 fd ff ff 	mov    -0x2a0(%rbp),%rax
    3c4c:	48 8d 0d 4c 14 00 00 	lea    0x144c(%rip),%rcx        # 509f <_IO_stdin_used+0x9f>
    3c53:	48 89 ce             	mov    %rcx,%rsi
    3c56:	48 89 c7             	mov    %rax,%rdi
    3c59:	e8 42 e8 ff ff       	call   24a0 <json_object_set_new@plt>
    3c5e:	48 8b 85 b8 fd ff ff 	mov    -0x248(%rbp),%rax
    3c65:	66 48 0f 6e c0       	movq   %rax,%xmm0
    3c6a:	e8 c1 e7 ff ff       	call   2430 <json_real@plt>
    3c6f:	48 89 c2             	mov    %rax,%rdx
    3c72:	48 8b 85 60 fd ff ff 	mov    -0x2a0(%rbp),%rax
    3c79:	48 8d 0d 0c 14 00 00 	lea    0x140c(%rip),%rcx        # 508c <_IO_stdin_used+0x8c>
    3c80:	48 89 ce             	mov    %rcx,%rsi
    3c83:	48 89 c7             	mov    %rax,%rdi
    3c86:	e8 15 e8 ff ff       	call   24a0 <json_object_set_new@plt>
    3c8b:	f2 0f 10 85 c0 fd ff 	movsd  -0x240(%rbp),%xmm0
    3c92:	ff 
    3c93:	66 0f 2e c0          	ucomisd %xmm0,%xmm0
    3c97:	7a 0e                	jp     3ca7 <process_request+0xa58>
    3c99:	f2 0f 10 85 c8 fd ff 	movsd  -0x238(%rbp),%xmm0
    3ca0:	ff 
    3ca1:	66 0f 2e c0          	ucomisd %xmm0,%xmm0
    3ca5:	7b 6f                	jnp    3d16 <process_request+0xac7>
    3ca7:	48 8d 05 42 14 00 00 	lea    0x1442(%rip),%rax        # 50f0 <_IO_stdin_used+0xf0>
    3cae:	48 89 c7             	mov    %rax,%rdi
    3cb1:	e8 6a e6 ff ff       	call   2320 <json_string@plt>
    3cb6:	48 89 c2             	mov    %rax,%rdx
    3cb9:	48 8b 85 60 fd ff ff 	mov    -0x2a0(%rbp),%rax
    3cc0:	48 8d 0d 5c 14 00 00 	lea    0x145c(%rip),%rcx        # 5123 <_IO_stdin_used+0x123>
    3cc7:	48 89 ce             	mov    %rcx,%rsi
    3cca:	48 89 c7             	mov    %rax,%rdi
    3ccd:	e8 ce e7 ff ff       	call   24a0 <json_object_set_new@plt>
    3cd2:	e8 39 e8 ff ff       	call   2510 <json_null@plt>
    3cd7:	48 89 c2             	mov    %rax,%rdx
    3cda:	48 8b 85 60 fd ff ff 	mov    -0x2a0(%rbp),%rax
    3ce1:	48 8d 0d ae 13 00 00 	lea    0x13ae(%rip),%rcx        # 5096 <_IO_stdin_used+0x96>
    3ce8:	48 89 ce             	mov    %rcx,%rsi
    3ceb:	48 89 c7             	mov    %rax,%rdi
    3cee:	e8 ad e7 ff ff       	call   24a0 <json_object_set_new@plt>
    3cf3:	e8 18 e8 ff ff       	call   2510 <json_null@plt>
    3cf8:	48 89 c2             	mov    %rax,%rdx
    3cfb:	48 8b 85 60 fd ff ff 	mov    -0x2a0(%rbp),%rax
    3d02:	48 8d 0d c5 13 00 00 	lea    0x13c5(%rip),%rcx        # 50ce <_IO_stdin_used+0xce>
    3d09:	48 89 ce             	mov    %rcx,%rsi
    3d0c:	48 89 c7             	mov    %rax,%rdi
    3d0f:	e8 8c e7 ff ff       	call   24a0 <json_object_set_new@plt>
    3d14:	eb 5a                	jmp    3d70 <process_request+0xb21>
    3d16:	48 8b 85 c0 fd ff ff 	mov    -0x240(%rbp),%rax
    3d1d:	66 48 0f 6e c0       	movq   %rax,%xmm0
    3d22:	e8 09 e7 ff ff       	call   2430 <json_real@plt>
    3d27:	48 89 c2             	mov    %rax,%rdx
    3d2a:	48 8b 85 60 fd ff ff 	mov    -0x2a0(%rbp),%rax
    3d31:	48 8d 0d 5e 13 00 00 	lea    0x135e(%rip),%rcx        # 5096 <_IO_stdin_used+0x96>
    3d38:	48 89 ce             	mov    %rcx,%rsi
    3d3b:	48 89 c7             	mov    %rax,%rdi
    3d3e:	e8 5d e7 ff ff       	call   24a0 <json_object_set_new@plt>
    3d43:	48 8b 85 c8 fd ff ff 	mov    -0x238(%rbp),%rax
    3d4a:	66 48 0f 6e c0       	movq   %rax,%xmm0
    3d4f:	e8 dc e6 ff ff       	call   2430 <json_real@plt>
    3d54:	48 89 c2             	mov    %rax,%rdx
    3d57:	48 8b 85 60 fd ff ff 	mov    -0x2a0(%rbp),%rax
    3d5e:	48 8d 0d 69 13 00 00 	lea    0x1369(%rip),%rcx        # 50ce <_IO_stdin_used+0xce>
    3d65:	48 89 ce             	mov    %rcx,%rsi
    3d68:	48 89 c7             	mov    %rax,%rdi
    3d6b:	e8 30 e7 ff ff       	call   24a0 <json_object_set_new@plt>
    3d70:	48 8b 85 60 fd ff ff 	mov    -0x2a0(%rbp),%rax
    3d77:	be 20 00 00 00       	mov    $0x20,%esi
    3d7c:	48 89 c7             	mov    %rax,%rdi
    3d7f:	e8 cc e7 ff ff       	call   2550 <json_dumps@plt>
    3d84:	48 89 85 68 fd ff ff 	mov    %rax,-0x298(%rbp)
    3d8b:	48 8b 85 60 fd ff ff 	mov    -0x2a0(%rbp),%rax
    3d92:	48 89 c7             	mov    %rax,%rdi
    3d95:	e8 2f e9 ff ff       	call   26c9 <json_decref>
    3d9a:	48 8b 85 68 fd ff ff 	mov    -0x298(%rbp),%rax
    3da1:	48 89 c7             	mov    %rax,%rdi
    3da4:	e8 d7 e5 ff ff       	call   2380 <strlen@plt>
    3da9:	89 c2                	mov    %eax,%edx
    3dab:	48 8b 8d 68 fd ff ff 	mov    -0x298(%rbp),%rcx
    3db2:	48 8b 85 e0 fc ff ff 	mov    -0x320(%rbp),%rax
    3db9:	48 89 ce             	mov    %rcx,%rsi
    3dbc:	48 89 c7             	mov    %rax,%rdi
    3dbf:	e8 0c e7 ff ff       	call   24d0 <ssh_channel_write@plt>
    3dc4:	48 8b 85 e0 fc ff ff 	mov    -0x320(%rbp),%rax
    3dcb:	48 89 c7             	mov    %rax,%rdi
    3dce:	e8 bd e5 ff ff       	call   2390 <ssh_channel_send_eof@plt>
    3dd3:	48 8b 85 e0 fc ff ff 	mov    -0x320(%rbp),%rax
    3dda:	48 89 c7             	mov    %rax,%rdi
    3ddd:	e8 8e e5 ff ff       	call   2370 <ssh_channel_close@plt>
    3de2:	48 8b 85 e0 fc ff ff 	mov    -0x320(%rbp),%rax
    3de9:	48 89 c7             	mov    %rax,%rdi
    3dec:	e8 bf e6 ff ff       	call   24b0 <ssh_channel_free@plt>
    3df1:	48 8b 85 68 fd ff ff 	mov    -0x298(%rbp),%rax
    3df8:	48 89 c7             	mov    %rax,%rdi
    3dfb:	e8 80 e6 ff ff       	call   2480 <free@plt>
    3e00:	b8 00 00 00 00       	mov    $0x0,%eax
    3e05:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    3e09:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    3e10:	00 00 
    3e12:	74 05                	je     3e19 <process_request+0xbca>
    3e14:	e8 57 e6 ff ff       	call   2470 <__stack_chk_fail@plt>
    3e19:	c9                   	leave  
    3e1a:	c3                   	ret    

0000000000003e1b <handle_signal>:
    3e1b:	f3 0f 1e fa          	endbr64 
    3e1f:	55                   	push   %rbp
    3e20:	48 89 e5             	mov    %rsp,%rbp
    3e23:	89 7d fc             	mov    %edi,-0x4(%rbp)
    3e26:	c7 05 e0 31 00 00 00 	movl   $0x0,0x31e0(%rip)        # 7010 <running>
    3e2d:	00 00 00 
    3e30:	90                   	nop
    3e31:	5d                   	pop    %rbp
    3e32:	c3                   	ret    

0000000000003e33 <main>:
    3e33:	f3 0f 1e fa          	endbr64 
    3e37:	55                   	push   %rbp
    3e38:	48 89 e5             	mov    %rsp,%rbp
    3e3b:	48 83 ec 30          	sub    $0x30,%rsp
    3e3f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    3e46:	00 00 
    3e48:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    3e4c:	31 c0                	xor    %eax,%eax
    3e4e:	48 8d 05 d4 12 00 00 	lea    0x12d4(%rip),%rax        # 5129 <_IO_stdin_used+0x129>
    3e55:	48 89 c7             	mov    %rax,%rdi
    3e58:	b8 00 00 00 00       	mov    $0x0,%eax
    3e5d:	e8 ae e4 ff ff       	call   2310 <printf@plt>
    3e62:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%rbp)
    3e69:	48 8d 05 ab ff ff ff 	lea    -0x55(%rip),%rax        # 3e1b <handle_signal>
    3e70:	48 89 c6             	mov    %rax,%rsi
    3e73:	bf 02 00 00 00       	mov    $0x2,%edi
    3e78:	e8 f3 e6 ff ff       	call   2570 <__sysv_signal@plt>
    3e7d:	e8 ae e4 ff ff       	call   2330 <ssh_bind_new@plt>
    3e82:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    3e86:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
    3e8b:	75 2d                	jne    3eba <main+0x87>
    3e8d:	48 8b 05 8c 31 00 00 	mov    0x318c(%rip),%rax        # 7020 <stderr@GLIBC_2.2.5>
    3e94:	48 89 c1             	mov    %rax,%rcx
    3e97:	ba 1f 00 00 00       	mov    $0x1f,%edx
    3e9c:	be 01 00 00 00       	mov    $0x1,%esi
    3ea1:	48 8d 05 98 12 00 00 	lea    0x1298(%rip),%rax        # 5140 <_IO_stdin_used+0x140>
    3ea8:	48 89 c7             	mov    %rax,%rdi
    3eab:	e8 00 e7 ff ff       	call   25b0 <fwrite@plt>
    3eb0:	b8 01 00 00 00       	mov    $0x1,%eax
    3eb5:	e9 d6 01 00 00       	jmp    4090 <main+0x25d>
    3eba:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    3ebe:	48 8d 15 9b 12 00 00 	lea    0x129b(%rip),%rdx        # 5160 <_IO_stdin_used+0x160>
    3ec5:	be 00 00 00 00       	mov    $0x0,%esi
    3eca:	48 89 c7             	mov    %rax,%rdi
    3ecd:	e8 6e e6 ff ff       	call   2540 <ssh_bind_options_set@plt>
    3ed2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    3ed6:	48 8d 15 8b 12 00 00 	lea    0x128b(%rip),%rdx        # 5168 <_IO_stdin_used+0x168>
    3edd:	be 02 00 00 00       	mov    $0x2,%esi
    3ee2:	48 89 c7             	mov    %rax,%rdi
    3ee5:	e8 56 e6 ff ff       	call   2540 <ssh_bind_options_set@plt>
    3eea:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    3eee:	48 8d 15 78 12 00 00 	lea    0x1278(%rip),%rdx        # 516d <_IO_stdin_used+0x16d>
    3ef5:	be 03 00 00 00       	mov    $0x3,%esi
    3efa:	48 89 c7             	mov    %rax,%rdi
    3efd:	e8 3e e6 ff ff       	call   2540 <ssh_bind_options_set@plt>
    3f02:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    3f06:	48 8d 15 68 12 00 00 	lea    0x1268(%rip),%rdx        # 5175 <_IO_stdin_used+0x175>
    3f0d:	be 05 00 00 00       	mov    $0x5,%esi
    3f12:	48 89 c7             	mov    %rax,%rdi
    3f15:	e8 26 e6 ff ff       	call   2540 <ssh_bind_options_set@plt>
    3f1a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    3f1e:	48 89 c7             	mov    %rax,%rdi
    3f21:	e8 3a e6 ff ff       	call   2560 <ssh_bind_listen@plt>
    3f26:	85 c0                	test   %eax,%eax
    3f28:	79 39                	jns    3f63 <main+0x130>
    3f2a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    3f2e:	48 89 c7             	mov    %rax,%rdi
    3f31:	e8 1a e5 ff ff       	call   2450 <ssh_get_error@plt>
    3f36:	48 89 c2             	mov    %rax,%rdx
    3f39:	48 8b 05 e0 30 00 00 	mov    0x30e0(%rip),%rax        # 7020 <stderr@GLIBC_2.2.5>
    3f40:	48 8d 0d 41 12 00 00 	lea    0x1241(%rip),%rcx        # 5188 <_IO_stdin_used+0x188>
    3f47:	48 89 ce             	mov    %rcx,%rsi
    3f4a:	48 89 c7             	mov    %rax,%rdi
    3f4d:	b8 00 00 00 00       	mov    $0x0,%eax
    3f52:	e8 99 e5 ff ff       	call   24f0 <fprintf@plt>
    3f57:	c7 45 d8 01 00 00 00 	movl   $0x1,-0x28(%rbp)
    3f5e:	e9 1e 01 00 00       	jmp    4081 <main+0x24e>
    3f63:	48 8d 05 45 12 00 00 	lea    0x1245(%rip),%rax        # 51af <_IO_stdin_used+0x1af>
    3f6a:	48 89 c7             	mov    %rax,%rdi
    3f6d:	e8 8e e5 ff ff       	call   2500 <puts@plt>
    3f72:	e9 fb 00 00 00       	jmp    4072 <main+0x23f>
    3f77:	e8 94 e4 ff ff       	call   2410 <ssh_new@plt>
    3f7c:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    3f80:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
    3f85:	75 2f                	jne    3fb6 <main+0x183>
    3f87:	48 8b 05 92 30 00 00 	mov    0x3092(%rip),%rax        # 7020 <stderr@GLIBC_2.2.5>
    3f8e:	48 89 c1             	mov    %rax,%rcx
    3f91:	ba 1b 00 00 00       	mov    $0x1b,%edx
    3f96:	be 01 00 00 00       	mov    $0x1,%esi
    3f9b:	48 8d 05 27 12 00 00 	lea    0x1227(%rip),%rax        # 51c9 <_IO_stdin_used+0x1c9>
    3fa2:	48 89 c7             	mov    %rax,%rdi
    3fa5:	e8 06 e6 ff ff       	call   25b0 <fwrite@plt>
    3faa:	c7 45 d8 01 00 00 00 	movl   $0x1,-0x28(%rbp)
    3fb1:	e9 cb 00 00 00       	jmp    4081 <main+0x24e>
    3fb6:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    3fba:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    3fbe:	48 89 d6             	mov    %rdx,%rsi
    3fc1:	48 89 c7             	mov    %rax,%rdi
    3fc4:	e8 97 e4 ff ff       	call   2460 <ssh_bind_accept@plt>
    3fc9:	83 f8 ff             	cmp    $0xffffffff,%eax
    3fcc:	75 38                	jne    4006 <main+0x1d3>
    3fce:	48 8b 05 4b 30 00 00 	mov    0x304b(%rip),%rax        # 7020 <stderr@GLIBC_2.2.5>
    3fd5:	48 89 c1             	mov    %rax,%rcx
    3fd8:	ba 1f 00 00 00       	mov    $0x1f,%edx
    3fdd:	be 01 00 00 00       	mov    $0x1,%esi
    3fe2:	48 8d 05 ff 11 00 00 	lea    0x11ff(%rip),%rax        # 51e8 <_IO_stdin_used+0x1e8>
    3fe9:	48 89 c7             	mov    %rax,%rdi
    3fec:	e8 bf e5 ff ff       	call   25b0 <fwrite@plt>
    3ff1:	c7 45 d8 01 00 00 00 	movl   $0x1,-0x28(%rbp)
    3ff8:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    3ffc:	48 89 c7             	mov    %rax,%rdi
    3fff:	e8 8c e4 ff ff       	call   2490 <ssh_free@plt>
    4004:	eb 7b                	jmp    4081 <main+0x24e>
    4006:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    400a:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
    400e:	48 89 d1             	mov    %rdx,%rcx
    4011:	48 8d 15 f4 f1 ff ff 	lea    -0xe0c(%rip),%rdx        # 320c <handle_session>
    4018:	be 00 00 00 00       	mov    $0x0,%esi
    401d:	48 89 c7             	mov    %rax,%rdi
    4020:	e8 5b e5 ff ff       	call   2580 <pthread_create@plt>
    4025:	89 45 dc             	mov    %eax,-0x24(%rbp)
    4028:	83 7d dc 00          	cmpl   $0x0,-0x24(%rbp)
    402c:	74 38                	je     4066 <main+0x233>
    402e:	48 8b 05 eb 2f 00 00 	mov    0x2feb(%rip),%rax        # 7020 <stderr@GLIBC_2.2.5>
    4035:	48 89 c1             	mov    %rax,%rcx
    4038:	ba 16 00 00 00       	mov    $0x16,%edx
    403d:	be 01 00 00 00       	mov    $0x1,%esi
    4042:	48 8d 05 bf 11 00 00 	lea    0x11bf(%rip),%rax        # 5208 <_IO_stdin_used+0x208>
    4049:	48 89 c7             	mov    %rax,%rdi
    404c:	e8 5f e5 ff ff       	call   25b0 <fwrite@plt>
    4051:	c7 45 d8 01 00 00 00 	movl   $0x1,-0x28(%rbp)
    4058:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    405c:	48 89 c7             	mov    %rax,%rdi
    405f:	e8 2c e4 ff ff       	call   2490 <ssh_free@plt>
    4064:	eb 1b                	jmp    4081 <main+0x24e>
    4066:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    406a:	48 89 c7             	mov    %rax,%rdi
    406d:	e8 3e e3 ff ff       	call   23b0 <pthread_detach@plt>
    4072:	8b 05 98 2f 00 00    	mov    0x2f98(%rip),%eax        # 7010 <running>
    4078:	85 c0                	test   %eax,%eax
    407a:	0f 85 f7 fe ff ff    	jne    3f77 <main+0x144>
    4080:	90                   	nop
    4081:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4085:	48 89 c7             	mov    %rax,%rdi
    4088:	e8 b3 e3 ff ff       	call   2440 <ssh_bind_free@plt>
    408d:	8b 45 d8             	mov    -0x28(%rbp),%eax
    4090:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    4094:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    409b:	00 00 
    409d:	74 05                	je     40a4 <main+0x271>
    409f:	e8 cc e3 ff ff       	call   2470 <__stack_chk_fail@plt>
    40a4:	c9                   	leave  
    40a5:	c3                   	ret    

Disassembly of section .fini:

00000000000040a8 <_fini>:
    40a8:	f3 0f 1e fa          	endbr64 
    40ac:	48 83 ec 08          	sub    $0x8,%rsp
    40b0:	48 83 c4 08          	add    $0x8,%rsp
    40b4:	c3                   	ret    
