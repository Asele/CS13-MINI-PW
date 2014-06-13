#include <ctime>
#include <cstdlib>
#include <iostream>

using namespace std;

extern "C" void insort (int*, int);
void init (int*, int);
void display (int*, int);

int main ()
{
srand(time(NULL));
int n = 9, *array;

cout << "Number of elements: ";
cin >> n;
array = new int [n];
init (array, n);
cout << "Unsorted array: " << endl;
display (array, n);
insort (array, n);
cout << "Sorted array: " << endl;
display (array, n);

return 0;
}

void init (int* ar, int num)
{
	for (int i = 0; i < num; i++)
	{
		ar[i] = rand()%128;
	}
	return;
}

void display (int* ar, int num)
{
	for (int i = 0; i < num-1; i++)
	{
		cout << ar[i] << ", ";
	}
	cout << ar[num-1] << endl;
	return;
}
