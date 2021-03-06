static const char CfgModule [] = 
"MEMORY {\n"
"ZP:       start = $0000, size = $0100, type = rw, define = yes;\n"
"COMBINED: start = $0000, size = $FFFF, file = %O;\n"
"}\n"
"SEGMENTS {\n"
"JUMPTABLE: load = COMBINED, type = ro;\n"
"INIT:      load = COMBINED, type = ro,  optional = yes;\n"
"CODE:      load = COMBINED, type = ro;\n"
"RODATA:    load = COMBINED, type = ro;\n"
"DATA:      load = COMBINED, type = rw,  define = yes;\n"
"BSS:       load = COMBINED, type = bss, define = yes;\n"
"ZEROPAGE:  load = ZP,       type = zp;\n"
"EXTZP:     load = ZP,       type = zp;\n"
"}\n"
"FILES {\n"
"%O: format = o65;\n"
"}\n"
"FORMATS {\n"
"o65: os = cc65, type = small;\n"
"}\n"
"\n"
"\n"
;
