all: b.zig c.zig b.o c.o d.o

a.o: a.c
	zig cc -I. -c -o $@ $<

b.zig: a.c
	zig translate-c -I. $< > $@

b.o: b.zig
	zig build-obj $<

c.zig: b.zig
	sed 's/pub const T = extern struct/pub const T = packed struct/' $< > $@

c.o: c.zig
	zig build-obj $<

d.o: d.zig
	zig build-obj $<

clean:
	${RM} -f b.zig
	${RM} -f c.zig
	${RM} -f a.o
	${RM} -f b.o
	${RM} -f c.o
	${RM} -f d.o
