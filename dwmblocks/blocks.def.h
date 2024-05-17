//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
	{"", "sb-cpu",		3,		1},
	{"", "sb-memory",	3,		2},
	{"", "sb-battery",	120,		3},
	{"", "sb-nettraf",	5,		4},
	{"", "sb-forecast",	0,		5},
	{"", "sb-internet",	30,		6},
	{"", "sb-moonphase",	0,		6},

	{"", "date '+%b %d (%a) %I:%M%p'",					5,		7},
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = " | ";
static unsigned int delimLen = 5;
