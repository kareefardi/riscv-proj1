/* Bubble sort code */
 
#include <stdio.h>
 
int main()
{
  int array[100], n, c, d, swap;
 
 
  for (c = 0; c < n; c++)
	array[c] = c ;
 
  for (c = 0 ; c < ( n - 1 ); c++)
  {
    for (d = 0 ; d < n - c - 1; d++)
    {
      if (array[d] > array[d+1]) /* For decreasing order use < */
      {
        swap       = array[d];
        array[d]   = array[d+1];
        array[d+1] = swap;
      }
    }
  }
 
  return 0;
}
