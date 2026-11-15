package o0;

import kotlin.jvm.internal.DefaultConstructorMarker;

public final class z {

    public static final a f67438b = new a(null);

    private static final long f67439c = c(0);

    private final long f67440a;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final long a() {
            return z.f67439c;
        }

        private a() {
        }
    }

    private z(long j10) {
        this.f67440a = j10;
    }

    public static final z b(long j10) {
        return new z(j10);
    }

    public static final long d(long j10, float f10, float f11) {
        return c((((long) Float.floatToRawIntBits(f10)) << 32) | (((long) Float.floatToRawIntBits(f11)) & 4294967295L));
    }

    public static long e(long j10, float f10, float f11, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f10 = Float.intBitsToFloat((int) (j10 >> 32));
        }
        if ((i10 & 2) != 0) {
            f11 = Float.intBitsToFloat((int) (4294967295L & j10));
        }
        return d(j10, f10, f11);
    }

    public static boolean f(long j10, Object obj) {
        return (obj instanceof z) && j10 == ((z) obj).n();
    }

    public static final boolean g(long j10, long j11) {
        return j10 == j11;
    }

    public static final float h(long j10) {
        return Float.intBitsToFloat((int) (j10 >> 32));
    }

    public static final float i(long j10) {
        return Float.intBitsToFloat((int) (j10 & 4294967295L));
    }

    public static int j(long j10) {
        return androidx.collection.s.a(j10);
    }

    public static final long k(long j10, long j11) {
        float fIntBitsToFloat = Float.intBitsToFloat((int) (j10 >> 32)) - Float.intBitsToFloat((int) (j11 >> 32));
        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (j10 & 4294967295L)) - Float.intBitsToFloat((int) (j11 & 4294967295L));
        return c((((long) Float.floatToRawIntBits(fIntBitsToFloat)) << 32) | (((long) Float.floatToRawIntBits(fIntBitsToFloat2)) & 4294967295L));
    }

    public static final long l(long j10, long j11) {
        float fIntBitsToFloat = Float.intBitsToFloat((int) (j10 >> 32)) + Float.intBitsToFloat((int) (j11 >> 32));
        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (j10 & 4294967295L)) + Float.intBitsToFloat((int) (j11 & 4294967295L));
        return c((((long) Float.floatToRawIntBits(fIntBitsToFloat)) << 32) | (((long) Float.floatToRawIntBits(fIntBitsToFloat2)) & 4294967295L));
    }

    public static String m(long j10) {
        return '(' + h(j10) + ", " + i(j10) + ") px/sec";
    }

    public boolean equals(Object obj) {
        return f(this.f67440a, obj);
    }

    public int hashCode() {
        return j(this.f67440a);
    }

    public final long n() {
        return this.f67440a;
    }

    public String toString() {
        return m(this.f67440a);
    }

    public static long c(long j10) {
        return j10;
    }
}
