package defpackage;

import androidx.media3.muxer.MuxerUtil;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class keb implements Comparable {
    public static final a c = new a(null);
    public final int b;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public keb(int i) {
        this.b = i;
    }

    public static final keb a(int i) {
        return new keb(i);
    }

    public static int b(int i) {
        return i;
    }

    public static boolean d(int i, Object obj) {
        return (obj instanceof keb) && i == ((keb) obj).g();
    }

    public static int e(int i) {
        return Integer.hashCode(i);
    }

    public static String f(int i) {
        return String.valueOf(((long) i) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
    }

    @Override
    public int compareTo(Object obj) {
        return jgb.a(g(), ((keb) obj).g());
    }

    public boolean equals(Object obj) {
        return d(this.b, obj);
    }

    public final int g() {
        return this.b;
    }

    public int hashCode() {
        return e(this.b);
    }

    public String toString() {
        return f(this.b);
    }
}
