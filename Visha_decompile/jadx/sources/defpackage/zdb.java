package defpackage;

import kotlin.jvm.internal.DefaultConstructorMarker;

public final class zdb implements Comparable {
    public static final a c = new a(null);
    public final byte b;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public zdb(byte b) {
        this.b = b;
    }

    public static final zdb a(byte b) {
        return new zdb(b);
    }

    public static byte b(byte b) {
        return b;
    }

    public static boolean d(byte b, Object obj) {
        return (obj instanceof zdb) && b == ((zdb) obj).g();
    }

    public static int e(byte b) {
        return Byte.hashCode(b);
    }

    public static String f(byte b) {
        return String.valueOf(b & 255);
    }

    @Override
    public int compareTo(Object obj) {
        return y45.l(g() & 255, ((zdb) obj).g() & 255);
    }

    public boolean equals(Object obj) {
        return d(this.b, obj);
    }

    public final byte g() {
        return this.b;
    }

    public int hashCode() {
        return e(this.b);
    }

    public String toString() {
        return f(this.b);
    }
}
