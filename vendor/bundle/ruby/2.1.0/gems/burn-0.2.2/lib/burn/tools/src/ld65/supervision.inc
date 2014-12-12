static const char CfgSupervision [] = 
"\n"/* if you want to combine the 2 16 kbyte roms */
"\n"/* make sure the halves are mirrored in the 64kbyte cartridge image */
"\n"/* or reset from code >0xc000 and switch bank to the 3rd bank */
"\n"
"MEMORY {\n"
"ZP:       start = $0000, size = $0100;\n"
"CPUSTACK: start = $0100, size = $0100;\n"
"RAM:      start = $0200, size = $1E00, define = yes;\n"
"VRAM:     start = $4000, size = $2000;\n"
"ROM:      start = $8000, size = $8000, fill = yes, fillval = $ff, file = %O, define = yes;\n"
"}\n"
"\n"
"SEGMENTS {\n"
"LOWCODE:  load = ROM,            type = ro,                optional = yes;\n"
"INIT:     load = ROM,            type = ro,  define = yes, optional = yes;\n"
"CODE:     load = ROM,            type = ro,  define = yes;\n"
"RODATA:   load = ROM,            type = ro,  define = yes;\n"
"DATA:     load = ROM, run = RAM, type = rw,  define = yes;\n"
"FFF0:     load = ROM,            type = ro,  offset = $7FF0;\n"
"VECTOR:   load = ROM,            type = ro,  offset = $7FFA;\n"
"BSS:      load = RAM,            type = bss, define = yes;\n"
"HEAP:     load = RAM,            type = bss, optional = yes;\n" /* must sit just below stack */
"ZEROPAGE: load = ZP,             type = zp,  define = yes;\n"
"}\n"
"\n"
"FEATURES {\n"
"CONDES: segment = INIT,\n"
"type = constructor,\n"
"label = __CONSTRUCTOR_TABLE__,\n"
"count = __CONSTRUCTOR_COUNT__;\n"
"CONDES: segment = RODATA,\n"
"type = destructor,\n"
"label = __DESTRUCTOR_TABLE__,\n"
"count = __DESTRUCTOR_COUNT__;\n"
"CONDES: type = interruptor,\n"
"segment = RODATA,\n"
"label = __INTERRUPTOR_TABLE__,\n"
"count = __INTERRUPTOR_COUNT__;\n"
"}\n"
;