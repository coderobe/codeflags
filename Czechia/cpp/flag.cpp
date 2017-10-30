#include <stdio.h>
#include <conio.h> // getch()
#include <math.h> // fabs()

// ********* WINDOWS ONLY *********
#include <windows.h>
void color(unsigned char color){ SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), color); }
enum COLORS { // these values varies in consoles, they should be factory default ;)
	BLACK, 	DARKBLUE, 	DARKGREEN, 	DARKCYAN, 	DARKRED, 	MAGENTTA, 	ORANGE, 	GRAY,
	DARKGRAY, 	BLUE, 	GREEN, 		CYAN, 		RED,  		PINK, 		YELLOW, 	WHITE
};

void printFlag(int width){
	int x = width-1;
	int y = 2*x/3;
	for(int i = -y/2;i <= y/2;i++){
		for(int j = 0;j <= x;j++){
			if(j + fabs(i*1.5) <= x/2) color(BLUE);
			else if(i < 0) color(WHITE);
			else color(RED);
			printf("%c",219);
		}printf("\n");
	}
}
// *********
int main()
{
	printFlag(80); // define your flag width here
	getch();
	return 0;
}

