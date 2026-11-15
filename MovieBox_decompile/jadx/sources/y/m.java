package y;

import androidx.collection.s;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class m {

    public static final a f76020b = new a(null);

    private static final long f76021c = d(0);

    private static final long f76022d = d(9205357640488583168L);

    private final long f76023a;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final long a() {
            return m.f76022d;
        }

        public final long b() {
            return m.f76021c;
        }

        private a() {
        }
    }

    private m(long j10) {
        this.f76023a = j10;
    }

    public static final m c(long j10) {
        return new m(j10);
    }

    public static boolean e(long j10, Object obj) {
        return (obj instanceof m) && j10 == ((m) obj).m();
    }

    public static final boolean f(long j10, long j11) {
        return j10 == j11;
    }

    public static final float g(long j10) {
        if (j10 == 9205357640488583168L) {
            d.a("Size is unspecified");
        }
        return Float.intBitsToFloat((int) (j10 & 4294967295L));
    }

    public static final float h(long j10) {
        if (j10 == 9205357640488583168L) {
            d.a("Size is unspecified");
        }
        return Math.min(Float.intBitsToFloat((int) ((j10 >> 32) & 2147483647L)), Float.intBitsToFloat((int) (j10 & 2147483647L)));
    }

    public static final float i(long j10) {
        if (j10 == 9205357640488583168L) {
            d.a("Size is unspecified");
        }
        return Float.intBitsToFloat((int) (j10 >> 32));
    }

    public static int j(long j10) {
        return s.a(j10);
    }

    public static final boolean k(long j10) {
        if (j10 == 9205357640488583168L) {
            d.a("Size is unspecified");
        }
        long j11 = j10 & (~((((-9223372034707292160L) & j10) >>> 31) * ((long) (-1))));
        return ((j11 & 4294967295L) & (j11 >>> 32)) == 0;
    }

    public static String l(long j10) {
        if (j10 == 9205357640488583168L) {
            return "Size.Unspecified";
        }
        return "Size(" + c.a(i(j10), 1) + ", " + c.a(g(j10), 1) + ')';
    }

    public boolean equals(Object obj) {
        return e(this.f76023a, obj);
    }

    public int hashCode() {
        return j(this.f76023a);
    }

    public final long m() {
        return this.f76023a;
    }

    public String toString() {
        return l(this.f76023a);
    }

    public static long d(long j10) {
        return j10;
    }
}
