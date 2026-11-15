package o0;

import kotlin.jvm.internal.DefaultConstructorMarker;

public final class t {

    public static final a f67425b = new a(null);

    private static final long f67426c = c(0);

    private final long f67427a;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final long a() {
            return t.f67426c;
        }

        private a() {
        }
    }

    private t(long j10) {
        this.f67427a = j10;
    }

    public static final t b(long j10) {
        return new t(j10);
    }

    public static boolean d(long j10, Object obj) {
        return (obj instanceof t) && j10 == ((t) obj).j();
    }

    public static final boolean e(long j10, long j11) {
        return j10 == j11;
    }

    public static final int f(long j10) {
        return (int) (j10 & 4294967295L);
    }

    public static final int g(long j10) {
        return (int) (j10 >> 32);
    }

    public static int h(long j10) {
        return androidx.collection.s.a(j10);
    }

    public static String i(long j10) {
        return g(j10) + " x " + f(j10);
    }

    public boolean equals(Object obj) {
        return d(this.f67427a, obj);
    }

    public int hashCode() {
        return h(this.f67427a);
    }

    public final long j() {
        return this.f67427a;
    }

    public String toString() {
        return i(this.f67427a);
    }

    public static long c(long j10) {
        return j10;
    }
}
