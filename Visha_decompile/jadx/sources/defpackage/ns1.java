package defpackage;

import android.content.Context;

public final class ns1 {
    public Context a;
    public Object b;
    public Class c;

    public ns1(Context context, Object obj, Class cls) {
        y45.j(context, "context");
        y45.j(cls, "output");
        this.a = context;
        this.b = obj;
        this.c = cls;
    }

    public final Context a() {
        return this.a;
    }

    public final Object b() {
        return this.b;
    }

    public final Class c() {
        return this.c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ns1)) {
            return false;
        }
        ns1 ns1Var = (ns1) obj;
        return y45.e(this.a, ns1Var.a) && y45.e(this.b, ns1Var.b) && y45.e(this.c, ns1Var.c);
    }

    public int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        Object obj = this.b;
        return ((iHashCode + (obj == null ? 0 : obj.hashCode())) * 31) + this.c.hashCode();
    }

    public String toString() {
        return "DataRequest(context=" + this.a + ", input=" + this.b + ", output=" + this.c + ")";
    }
}
