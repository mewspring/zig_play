pub const T = packed struct {
    field1: u8,
    field2: [37]u8,
};
pub export var v: T = @import("std").mem.zeroes(T);
pub export fn f() usize {
    var sum: usize = 0;
    {
        var i: usize = 0;
        while (i < 37) : (i += 1) {
            sum += @as(usize, v.field2[i]);
        }
    }
    return sum;
}
