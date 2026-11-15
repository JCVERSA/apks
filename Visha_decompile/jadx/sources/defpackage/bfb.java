package defpackage;

import kotlin.jvm.internal.DefaultConstructorMarker;

public final class bfb implements Comparable {
    public static final a c = new a(null);
    public final short b;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public bfb(short s) {
        this.b = s;
    }

    public static final bfb a(short s) {
        return new bfb(s);
    }

    public static short b(short s) {
        return s;
    }

    public static boolean d(short s, Object obj) {
        return (obj instanceof bfb) && s == ((bfb) obj).g();
    }

    public static int e(short s) {
        return Short.hashCode(s);
    }

    public static String f(short s) {
        return String.valueOf(s & 65535);
    }

    @Override
    public int compareTo(Object obj) {
        return y45.l(g() & 65535, ((bfb) obj).g() & 65535);
    }

    public boolean equals(Object obj) {
        return d(this.b, obj);
    }

    public final short g() {
        return this.b;
    }

    public int hashCode() {
        return e(this.b);
    }

    public String toString() {
        return f(this.b);
    }
}
