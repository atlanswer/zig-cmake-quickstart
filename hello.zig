const std = @import("std");
const config = @import("config");
const print = std.debug.print;

const semver = std.SemanticVersion.parse(config.version) catch unreachable;

pub fn main() !void {
    if (semver.major < 1) {
        @compileError("too old");
    }

    print("version: {s}\n", .{config.version});
}
