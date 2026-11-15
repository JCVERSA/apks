package o0;

import kotlin.jvm.internal.DefaultConstructorMarker;

public final class w {

    public static final a f67429b = new a(null);

    private static final y[] f67430c;

    private static final long f67431d;

    private final long f67432a;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final long a() {
            return w.f67431d;
        }

        private a() {
        }
    }

    static {
        y.a aVar = y.f67433b;
        f67430c = new y[]{y.d(aVar.c()), y.d(aVar.b()), y.d(aVar.a())};
        f67431d = x.e(0L, Float.NaN);
    }

    private w(long j10) {
        this.f67432a = j10;
    }

    public static final w b(long j10) {
        return new w(j10);
    }

    public static boolean d(long j10, Object obj) {
        return (obj instanceof w) && j10 == ((w) obj).k();
    }

    public static final boolean e(long j10, long j11) {
        return j10 == j11;
    }

    public static final long f(long j10) {
        return j10 & 1095216660480L;
    }

    public static final long g(long j10) {
        return f67430c[(int) (f(j10) >>> 32)].j();
    }

    public static final float h(long j10) {
        return Float.intBitsToFloat((int) (j10 & 4294967295L));
    }

    public static int i(long j10) {
        return androidx.collection.s.a(j10);
    }

    public static String j(long j10) {
        long jG = g(j10);
        y.a aVar = y.f67433b;
        if (y.g(jG, aVar.c())) {
            return "Unspecified";
        }
        if (y.g(jG, aVar.b())) {
            return h(j10) + ".sp";
        }
        if (!y.g(jG, aVar.a())) {
            return "Invalid";
        }
        return h(j10) + ".em";
    }

    public boolean equals(Object obj) {
        return d(this.f67432a, obj);
    }

    public int hashCode() {
        return i(this.f67432a);
    }

    public final long k() {
        return this.f67432a;
    }

    public String toString() {
        return j(this.f67432a);
    }

    public static long c(long j10) {
        return j10;
    }
}
