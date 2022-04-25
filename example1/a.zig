const print = @import("std").debug.print;

pub extern var foo: [*c]c_int;
pub extern fn bar() c_int;

pub fn main() void {
    print("foo: {}\n", .{&foo[1]});
    print("bar(): {}\n", .{bar()});
    print("foo: {}\n", .{foo[1]});
}
