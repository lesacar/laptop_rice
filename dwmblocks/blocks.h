//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
	//	{"", "sb-torrent",	3,		1},
	{"", "cpu_avg_temp",		3,		1},
	{"", "sb-memory",	3,		2},
	{"", "sb-nettraf",	5,		4},
	{"", "sb-forecast",	0,		5},
	{"", "sb-internet",	30,		6},
	{"", "sb-moonphase",	0,		7},
	{"", "bl_ear",	30,		9},
	{"🔋", "sb-battery",	30,		8},
	{"", "date '+%b %d (%a) %I:%M%p'", 60,	10},
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = " | ";
static unsigned int delimLen = 5;
