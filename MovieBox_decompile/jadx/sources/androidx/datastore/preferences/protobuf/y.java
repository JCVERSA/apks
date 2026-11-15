package androidx.datastore.preferences.protobuf;

import java.nio.Buffer;

abstract class y {
    static void a(Buffer buffer, int i10) {
        buffer.limit(i10);
    }

    static void b(Buffer buffer) {
        buffer.mark();
    }

    static void c(Buffer buffer, int i10) {
        buffer.position(i10);
    }

    static void d(Buffer buffer) {
        buffer.reset();
    }
}
