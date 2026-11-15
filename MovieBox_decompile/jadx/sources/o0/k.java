package o0;

import kotlin.jvm.internal.DefaultConstructorMarker;

public final class k {

    public static final a f67409b = new a(null);

    private static final long f67410c = b(0);

    private static final long f67411d = b(9205357640488583168L);

    private final long f67412a;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    private k(long j10) {
        this.f67412a = j10;
    }

    public static final k a(long j10) {
        return new k(j10);
    }

    public static boolean c(long j10, Object obj) {
        return (obj instanceof k) && j10 == ((k) obj).h();
    }

    public static final float d(long j10) {
        return i.g(Float.intBitsToFloat((int) (j10 >> 32)));
    }

    public static final float e(long j10) {
        return i.g(Float.intBitsToFloat((int) (j10 & 4294967295L)));
    }

    public static int f(long j10) {
        return androidx.collection.s.a(j10);
    }

    public static String g(long j10) {
        if (j10 == 9205357640488583168L) {
            return "DpOffset.Unspecified";
        }
        return '(' + ((Object) i.k(d(j10))) + ", " + ((Object) i.k(e(j10))) + ')';
    }

    public boolean equals(Object obj) {
        return c(this.f67412a, obj);
    }

    public final long h() {
        return this.f67412a;
    }

    public int hashCode() {
        return f(this.f67412a);
    }

    public String toString() {
        return g(this.f67412a);
    }

    public static long b(long j10) {
        return j10;
    }
}
