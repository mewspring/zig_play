#include "a.h"

T v;

int f() {
	int sum = 0;
	for (int i = 0; i < FIELD2_ELEMS; i++) {
		sum += v.field2[i];
	}
	return sum;
}
