package defpackage;

import java.io.Closeable;

public interface qc2 extends AutoCloseable, Closeable {
    public static final a z1 = a.a;
    public static final qc2 A1 = new qc2() {
        @Override
        public final void close() {
            qc2.u();
        }
    };

    public static final class a {
        public static final a a = new a();
    }

    static void u() {
    }

    @Override
    void close();
}
