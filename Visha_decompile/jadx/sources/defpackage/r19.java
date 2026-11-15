package defpackage;

import java.util.List;

public class r19 extends eg5 {
    public final t19 i;

    public r19(List list) {
        super(list);
        this.i = new t19();
    }

    @Override
    public t19 i(dg5 dg5Var, float f) {
        Object obj;
        t19 t19Var;
        Object obj2 = dg5Var.b;
        if (obj2 == null || (obj = dg5Var.c) == null) {
            throw new IllegalStateException("Missing values for keyframe.");
        }
        t19 t19Var2 = (t19) obj2;
        t19 t19Var3 = (t19) obj;
        iu5 iu5Var = this.e;
        if (iu5Var != null && (t19Var = (t19) iu5Var.b(dg5Var.g, dg5Var.h.floatValue(), t19Var2, t19Var3, f, e(), f())) != null) {
            return t19Var;
        }
        this.i.d(xp6.i(t19Var2.b(), t19Var3.b(), f), xp6.i(t19Var2.c(), t19Var3.c(), f));
        return this.i;
    }
}
