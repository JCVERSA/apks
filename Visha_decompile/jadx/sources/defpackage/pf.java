package defpackage;

import android.view.View;

public final class pf implements go8 {
    public Object a;
    public final e74 b;

    public pf(Object obj, e74 e74Var) {
        this.a = obj;
        this.b = e74Var;
    }

    @Override
    public Object getValue(View view, af5 af5Var) {
        y45.j(view, "thisRef");
        y45.j(af5Var, "property");
        return this.a;
    }

    @Override
    public void setValue(View view, af5 af5Var, Object obj) {
        Object objInvoke;
        y45.j(view, "thisRef");
        y45.j(af5Var, "property");
        e74 e74Var = this.b;
        if (e74Var != null && (objInvoke = e74Var.invoke(obj)) != null) {
            obj = objInvoke;
        }
        if (y45.e(this.a, obj)) {
            return;
        }
        this.a = obj;
        view.invalidate();
    }
}
