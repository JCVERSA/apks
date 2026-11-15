package androidx.compose.foundation.lazy.grid;

import androidx.collection.s;

public final class a {

    private final long f2641a;

    private a(long j10) {
        this.f2641a = j10;
    }

    public static final a a(long j10) {
        return new a(j10);
    }

    public static boolean b(long j10, Object obj) {
        return (obj instanceof a) && j10 == ((a) obj).e();
    }

    public static int c(long j10) {
        return s.a(j10);
    }

    public static String d(long j10) {
        return "GridItemSpan(packedValue=" + j10 + ')';
    }

    public final long e() {
        return this.f2641a;
    }

    public boolean equals(Object obj) {
        return b(this.f2641a, obj);
    }

    public int hashCode() {
        return c(this.f2641a);
    }

    public String toString() {
        return d(this.f2641a);
    }
}
