all: a

a: a.o b.o
	zig build-exe -target i386-linux-gnu -femit-bin=$@ $^

a.o: a.zig
	zig build-obj -target i386-linux-gnu -femit-bin=$@ $<

b.o: b.c
	zig cc -target i386-linux-gnu -c -o $@ $<

clean:
	${RM} -v a.o
	${RM} -v b.o
	${RM} -v a
