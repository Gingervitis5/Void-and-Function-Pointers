#include "utils.h"
#include "fileUtils.h"


int countRecords(FILE * fin, int linesPer)
{
	int count = 0, x = 0; char temp[100];
	while (!feof(fin)){
	    fgets(temp, 100, fin);
	    count++;
	}
	rewind(fin);
	return count/linesPer;
}


FILE * openInputFile_Prompt()
{
	FILE * fin = NULL;
	char fileName[MAX];
	do
	{
		printf("Please enter the name of the input file ");
		fgets(fileName, MAX, stdin);
		strip(fileName);

		fin = fopen(fileName, "r");

	}while(fin == NULL);

	return fin;
}


