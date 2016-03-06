#include <iostream>
#include <math.h>
#include <conio.h>
using namespace std;

#define PI 3.14159265359
// ********* WINDOWS ONLY *********
#include <windows.h>
void color(unsigned char color){ SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), color); }
enum COLORS { // these values varies in consoles, they should be factory default ;)
	BLACK,
	DARKBLUE,
	DARKGREEN,
	DARKCYAN,
	DARKRED,
	MAGENTTA,
	ORANGE,
	GRAY,
	DARKGRAY,
	BLUE,
	GREEN,
	CYAN,
	RED, 
	PINK,
	YELLOW,
	WHITE
};
// *********

void printFlag(int flagWidth){
	int x = flagWidth;
	int y = 2*x/3;
	int radius = (3*y/5)/2;
	
	int flag[x][y]; // array of colors
	
	for(int i = 0;i < x;i++) // white flag
		for(int j = 0;j < y;j++)
			flag[i][j] = WHITE;
			
	for(double a = 0;a <= 2*PI;a+=0.01){ // red circle
		for(int i = 0;i <= radius;i++){ // fills the circle
			int X = ( sin(a)*i )+(x/2);
			int Y = ( cos(a)*i )+(y/2);
			flag[X][Y] = RED;
		}
	}
	
	for(int i = 0;i < y;i++){ // print
		for(int j = 0;j < x;j++){
			color(flag[j][i]); printf("%c",219);
		}
		printf("\n");
	}
}

int main()
{
	printFlag(100);
	getch();
	return 0;
}

