package defpackage;

import kotlin.jvm.internal.DefaultConstructorMarker;

public final class qeb implements Comparable {
    public static final a c = new a(null);
    public final long b;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public qeb(long j) {
        this.b = j;
    }

    public static final qeb a(long j) {
        return new qeb(j);
    }

    public static long b(long j) {
        return j;
    }

    public static boolean d(long j, Object obj) {
        return (obj instanceof qeb) && j == ((qeb) obj).g();
    }

    public static int e(long j) {
        return Long.hashCode(j);
    }

    public static String f(long j) {
        return jgb.c(j, 10);
    }

    @Override
    public int compareTo(Object obj) {
        return jgb.b(g(), ((qeb) obj).g());
    }

    public boolean equals(Object obj) {
        return d(this.b, obj);
    }

    public final long g() {
        return this.b;
    }

    public int hashCode() {
        return e(this.b);
    }

    public String toString() {
        return f(this.b);
    }
}
