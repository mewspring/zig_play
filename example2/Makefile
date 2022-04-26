all: b.zig c.zig b.o c.o

a.o: a.c
	zig cc -I. -c -o $@ $<

b.zig: a.c
	# translate a.c -> b.zig
	zig translate-c -I. $< > $@

b.o: b.zig
	# build b.zig (SUCCESS)
	zig build-obj $<

c.zig: b.zig
	# replace `extern` with `packed`; generate c.zig
	sed 's/pub const T = extern struct/pub const T = packed struct/' $< > $@

c.o: c.zig
	# build c.zig (FAIL)
	zig build-obj $<

clean:
	${RM} -f b.zig
	${RM} -f c.zig
	${RM} -f a.o
	${RM} -f b.o
	${RM} -f c.o
