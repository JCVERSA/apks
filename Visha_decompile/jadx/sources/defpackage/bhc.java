package defpackage;

import java.lang.ref.WeakReference;

public final class bhc implements go8 {
    public WeakReference a;

    public bhc(Object obj) {
        this.a = obj != null ? new WeakReference(obj) : null;
    }

    @Override
    public Object getValue(Object obj, af5 af5Var) {
        y45.j(af5Var, "property");
        WeakReference weakReference = this.a;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    @Override
    public void setValue(Object obj, af5 af5Var, Object obj2) {
        y45.j(af5Var, "property");
        this.a = obj2 != null ? new WeakReference(obj2) : null;
    }
}
