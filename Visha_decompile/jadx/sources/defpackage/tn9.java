package defpackage;

public abstract class tn9 {
    public s74 a;
    public volatile Object b;

    public tn9(s74 s74Var) {
        y45.j(s74Var, "creator");
        this.a = s74Var;
    }

    public final Object a(Object obj) {
        Object objInvoke;
        Object obj2 = this.b;
        if (obj2 != null) {
            return obj2;
        }
        synchronized (this) {
            objInvoke = this.b;
            if (objInvoke == null) {
                s74 s74Var = this.a;
                y45.g(s74Var);
                objInvoke = s74Var.invoke(obj, Boolean.FALSE);
                this.b = objInvoke;
                this.a = null;
            }
        }
        return objInvoke;
    }
}
