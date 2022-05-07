ZIG_SRC=$(filter-out src/main.zig,$(wildcard src/*.zig))
ZIG_OBJ=$(ZIG_SRC:.zig=_zig.o)

all: foo

LIBS=--library c

foo: ${ZIG_OBJ}
	zig build-exe --verbose-link -target x86_64-linux-gnu ${LIBS} -femit-bin=$@ src/main.zig $^

%_zig.o: %.zig
	zig build-obj -target x86_64-linux-gnu -femit-bin=$@ $<

clean:
	${RM} -v ${ZIG_OBJ}
	${RM} -v foo

clean_cache:
	${RM} -r -v zig-cache
	${RM} -r -v src/zig-cache
	${RM} -r -v ~/.cache/zig

.PHONY: all clean clean_cache
