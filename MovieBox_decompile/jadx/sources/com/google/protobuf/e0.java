package com.google.protobuf;

import java.nio.Buffer;

final class e0 {
    private e0() {
    }

    static void clear(Buffer buffer) {
        buffer.clear();
    }

    static void flip(Buffer buffer) {
        buffer.flip();
    }

    static void limit(Buffer buffer, int i10) {
        buffer.limit(i10);
    }

    static void mark(Buffer buffer) {
        buffer.mark();
    }

    static void position(Buffer buffer, int i10) {
        buffer.position(i10);
    }

    static void reset(Buffer buffer) {
        buffer.reset();
    }
}
