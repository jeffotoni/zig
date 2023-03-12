const std = @import("std");

// zig build-exe -target native-linux-musl main.zig
pub fn main() !void {
    const stdout = std.io.getStdOut().writer();
    try stdout.print("Hello, {s}!\n", .{"world"});
}