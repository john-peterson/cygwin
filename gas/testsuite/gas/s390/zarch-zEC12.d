#name: s390x opcode
#objdump: -drw

.*: +file format .*

Disassembly of section .text:

.* <foo>:
.*:	b2 ec 00 60 [	 ]*etnd	%r6
.*:	e3 67 8a 4d fe 25 [	 ]*ntstg	%r6,-5555\(%r7,%r8\)
.*:	b2 fc 6f a0 [	 ]*tabort	4000\(%r6\)
.*:	e5 60 6f a0 fd e8 [	 ]*tbegin	4000\(%r6\),65000
.*:	e5 61 6f a0 fd e8 [	 ]*tbeginc	4000\(%r6\),65000
.*:	b2 f8 00 00 [	 ]*tend
.*:	c7 a0 6f a0 00 00 [	 ]*bpp	10,1e <foo\+0x1e>,4000\(%r6\)
.*:	c5 a0 00 fe c7 80 [	 ]*bprp	10,24 <foo\+0x24>,-80000
.*:	b2 fa 00 ad [	 ]*niai	10,13
.*:	e3 67 8a 4d fe 9f [	 ]*lat	%r6,-5555\(%r7,%r8\)
.*:	e3 67 8a 4d fe 85 [	 ]*lgat	%r6,-5555\(%r7,%r8\)
.*:	e3 67 8a 4d fe c8 [	 ]*lfhat	%r6,-5555\(%r7,%r8\)
.*:	e3 67 8a 4d fe 9d [	 ]*llgfat	%r6,-5555\(%r7,%r8\)
.*:	e3 67 8a 4d fe 9c [	 ]*llgtat	%r6,-5555\(%r7,%r8\)
.*:	eb 6a 7a 4d fe 23 [	 ]*cltnl	%r6,-5555\(%r7\)
.*:	eb 62 7a 4d fe 23 [	 ]*clth	%r6,-5555\(%r7\)
.*:	eb 62 7a 4d fe 23 [	 ]*clth	%r6,-5555\(%r7\)
.*:	eb 64 7a 4d fe 23 [	 ]*cltl	%r6,-5555\(%r7\)
.*:	eb 64 7a 4d fe 23 [	 ]*cltl	%r6,-5555\(%r7\)
.*:	eb 66 7a 4d fe 23 [	 ]*cltne	%r6,-5555\(%r7\)
.*:	eb 66 7a 4d fe 23 [	 ]*cltne	%r6,-5555\(%r7\)
.*:	eb 68 7a 4d fe 23 [	 ]*clte	%r6,-5555\(%r7\)
.*:	eb 68 7a 4d fe 23 [	 ]*clte	%r6,-5555\(%r7\)
.*:	eb 6a 7a 4d fe 23 [	 ]*cltnl	%r6,-5555\(%r7\)
.*:	eb 6a 7a 4d fe 23 [	 ]*cltnl	%r6,-5555\(%r7\)
.*:	eb 6c 7a 4d fe 23 [	 ]*cltnh	%r6,-5555\(%r7\)
.*:	eb 6c 7a 4d fe 23 [	 ]*cltnh	%r6,-5555\(%r7\)
.*:	eb 6a 7a 4d fe 2b [	 ]*clgtnl	%r6,-5555\(%r7\)
.*:	eb 62 7a 4d fe 2b [	 ]*clgth	%r6,-5555\(%r7\)
.*:	eb 62 7a 4d fe 2b [	 ]*clgth	%r6,-5555\(%r7\)
.*:	eb 64 7a 4d fe 2b [	 ]*clgtl	%r6,-5555\(%r7\)
.*:	eb 64 7a 4d fe 2b [	 ]*clgtl	%r6,-5555\(%r7\)
.*:	eb 66 7a 4d fe 2b [	 ]*clgtne	%r6,-5555\(%r7\)
.*:	eb 66 7a 4d fe 2b [	 ]*clgtne	%r6,-5555\(%r7\)
.*:	eb 68 7a 4d fe 2b [	 ]*clgte	%r6,-5555\(%r7\)
.*:	eb 68 7a 4d fe 2b [	 ]*clgte	%r6,-5555\(%r7\)
.*:	eb 6a 7a 4d fe 2b [	 ]*clgtnl	%r6,-5555\(%r7\)
.*:	eb 6a 7a 4d fe 2b [	 ]*clgtnl	%r6,-5555\(%r7\)
.*:	eb 6c 7a 4d fe 2b [	 ]*clgtnh	%r6,-5555\(%r7\)
.*:	eb 6c 7a 4d fe 2b [	 ]*clgtnh	%r6,-5555\(%r7\)
.*:	ec 67 0c 0d 0e 59 [	 ]*risbgn	%r6,%r7,12,13,14
.*:	ed 90 8f a0 6d aa [	 ]*cdzt	%f6,4000\(10,%r8\),13
.*:	ed 90 8f a0 4d ab [	 ]*cxzt	%f4,4000\(10,%r8\),13
.*:	ed 90 8f a0 6d a8 [	 ]*czdt	%f6,4000\(10,%r8\),13
.*:	ed 90 8f a0 4d a9 [	 ]*czxt	%f4,4000\(10,%r8\),13
.*:	b2 e8 c0 56 [	 ]*ppa	%r5,%r6,12
.*:	b9 8f 60 59 [	 ]*crdte	%r5,%r6,%r9,0
.*:	b9 8f 61 59 [	 ]*crdte	%r5,%r6,%r9,1
.*:	07 07 [	 ]*nopr	%r7
