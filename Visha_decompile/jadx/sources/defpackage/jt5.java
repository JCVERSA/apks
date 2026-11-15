package defpackage;

import java.util.Arrays;

public final class jt5 {
    public final Object a;
    public final Throwable b;

    public jt5(Object obj) {
        this.a = obj;
        this.b = null;
    }

    public Throwable a() {
        return this.b;
    }

    public Object b() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof jt5)) {
            return false;
        }
        jt5 jt5Var = (jt5) obj;
        if (b() != null && b().equals(jt5Var.b())) {
            return true;
        }
        if (a() == null || jt5Var.a() == null) {
            return false;
        }
        return a().toString().equals(a().toString());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{b(), a()});
    }

    public jt5(Throwable th) {
        this.b = th;
        this.a = null;
    }
}
