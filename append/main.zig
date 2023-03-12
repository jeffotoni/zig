// https://ziglearn.org/chapter-2/#allocators
// https://zigbyexample.github.io/http-client
// https://github.com/marler8997/zigup

const std = @import("std");
const ArrayList = @import("std").ArrayList;
const heap = @import("std").heap;

pub fn main() void {
     const allocator = std.heap.page_allocator;
     var list = ArrayList(u8).init(allocator);
     defer list.deinit();

     try list.append("Go");
     try list.append("Zig");

     std.debug.print("List of names:\n");
     for (list.len) |i| {
         const name = list.at(i);
         std.debug.print("- {}\n", .{name});
     }
}
