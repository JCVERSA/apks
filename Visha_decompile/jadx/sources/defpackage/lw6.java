package defpackage;

import java.lang.ref.SoftReference;

public final class lw6 {
    public volatile SoftReference a = new SoftReference(null);

    public final synchronized Object a(c74 c74Var) {
        y45.j(c74Var, "factory");
        Object obj = this.a.get();
        if (obj != null) {
            return obj;
        }
        Object objInvoke = c74Var.invoke();
        this.a = new SoftReference(objInvoke);
        return objInvoke;
    }
}
