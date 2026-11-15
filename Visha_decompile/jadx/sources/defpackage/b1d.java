package defpackage;

import freemarker.ext.beans.b;

public class b1d {
    public static final ThreadLocal b = new ThreadLocal();
    public b a;

    public static b1d a() {
        Object obj = b.get();
        return obj != null ? (b1d) obj : new b1d();
    }

    public b b() {
        if (this.a == null) {
            this.a = new b(xe1.h0);
        }
        return this.a;
    }
}
