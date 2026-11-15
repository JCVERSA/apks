package androidx.compose.ui.text;

import kotlin.jvm.internal.DefaultConstructorMarker;

public final class b0 {

    public static final a f5774b = new a(null);

    private static final long f5775c = c0.a(0);

    private final long f5776a;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final long a() {
            return b0.f5775c;
        }

        private a() {
        }
    }

    private b0(long j10) {
        this.f5776a = j10;
    }

    public static final b0 b(long j10) {
        return new b0(j10);
    }

    public static boolean d(long j10, Object obj) {
        return (obj instanceof b0) && j10 == ((b0) obj).n();
    }

    public static final boolean e(long j10, long j11) {
        return j10 == j11;
    }

    public static final boolean f(long j10) {
        return k(j10) == g(j10);
    }

    public static final int g(long j10) {
        return (int) (j10 & 4294967295L);
    }

    public static final int h(long j10) {
        return i(j10) - j(j10);
    }

    public static final int i(long j10) {
        return k(j10) > g(j10) ? k(j10) : g(j10);
    }

    public static final int j(long j10) {
        return k(j10) > g(j10) ? g(j10) : k(j10);
    }

    public static final int k(long j10) {
        return (int) (j10 >> 32);
    }

    public static int l(long j10) {
        return androidx.collection.s.a(j10);
    }

    public static String m(long j10) {
        return "TextRange(" + k(j10) + ", " + g(j10) + ')';
    }

    public boolean equals(Object obj) {
        return d(this.f5776a, obj);
    }

    public int hashCode() {
        return l(this.f5776a);
    }

    public final long n() {
        return this.f5776a;
    }

    public String toString() {
        return m(this.f5776a);
    }

    public static long c(long j10) {
        return j10;
    }
}
