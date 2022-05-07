pub extern fn main_c(argc: c_int, argv: [*c][*c]u8) c_int;

pub fn main() void {
    _ = main_c(0, null);
}
