#ifndef __A_H__
#define __A_H__

#define FIELD2_ELEMS 37

#pragma pack(push,1)
typedef struct {
	unsigned char field1;
	unsigned char field2[FIELD2_ELEMS];
} T;
#pragma pack(pop)


#endif // #ifndef __A_H__
