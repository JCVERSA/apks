package androidx.compose.ui.input.pointer;

public final class v {

    private final long f4746a;

    private v(long j10) {
        this.f4746a = j10;
    }

    public static final v a(long j10) {
        return new v(j10);
    }

    public static boolean c(long j10, Object obj) {
        return (obj instanceof v) && j10 == ((v) obj).g();
    }

    public static final boolean d(long j10, long j11) {
        return j10 == j11;
    }

    public static int e(long j10) {
        return androidx.collection.s.a(j10);
    }

    public static String f(long j10) {
        return "PointerId(value=" + j10 + ')';
    }

    public boolean equals(Object obj) {
        return c(this.f4746a, obj);
    }

    public final long g() {
        return this.f4746a;
    }

    public int hashCode() {
        return e(this.f4746a);
    }

    public String toString() {
        return f(this.f4746a);
    }

    public static long b(long j10) {
        return j10;
    }
}
