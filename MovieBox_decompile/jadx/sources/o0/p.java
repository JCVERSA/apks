package o0;

import kotlin.jvm.internal.DefaultConstructorMarker;

public final class p {

    public static final a f67416b = new a(null);

    private static final long f67417c = c(0);

    private final long f67418a;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final long a() {
            return p.f67417c;
        }

        private a() {
        }
    }

    private p(long j10) {
        this.f67418a = j10;
    }

    public static final p b(long j10) {
        return new p(j10);
    }

    public static final long d(long j10, int i10, int i11) {
        return c((((long) i10) << 32) | (((long) i11) & 4294967295L));
    }

    public static long e(long j10, int i10, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = (int) (j10 >> 32);
        }
        if ((i12 & 2) != 0) {
            i11 = (int) (4294967295L & j10);
        }
        return d(j10, i10, i11);
    }

    public static boolean f(long j10, Object obj) {
        return (obj instanceof p) && j10 == ((p) obj).n();
    }

    public static final boolean g(long j10, long j11) {
        return j10 == j11;
    }

    public static final int h(long j10) {
        return (int) (j10 >> 32);
    }

    public static final int i(long j10) {
        return (int) (j10 & 4294967295L);
    }

    public static int j(long j10) {
        return androidx.collection.s.a(j10);
    }

    public static final long k(long j10, long j11) {
        return c((((long) (((int) (j10 >> 32)) - ((int) (j11 >> 32)))) << 32) | (((long) (((int) (j10 & 4294967295L)) - ((int) (j11 & 4294967295L)))) & 4294967295L));
    }

    public static final long l(long j10, long j11) {
        return c((((long) (((int) (j10 >> 32)) + ((int) (j11 >> 32)))) << 32) | (((long) (((int) (j10 & 4294967295L)) + ((int) (j11 & 4294967295L)))) & 4294967295L));
    }

    public static String m(long j10) {
        return '(' + h(j10) + ", " + i(j10) + ')';
    }

    public boolean equals(Object obj) {
        return f(this.f67418a, obj);
    }

    public int hashCode() {
        return j(this.f67418a);
    }

    public final long n() {
        return this.f67418a;
    }

    public String toString() {
        return m(this.f67418a);
    }

    public static long c(long j10) {
        return j10;
    }
}
