package defpackage;

import java.util.List;

public class x81 extends eg5 {
    public x81(List list) {
        super(list);
    }

    public int q() {
        return r(b(), d());
    }

    public int r(dg5 dg5Var, float f) {
        Float f2;
        Integer num;
        if (dg5Var.b == null || dg5Var.c == null) {
            throw new IllegalStateException("Missing values for keyframe.");
        }
        iu5 iu5Var = this.e;
        return (iu5Var == null || (f2 = dg5Var.h) == null || (num = (Integer) iu5Var.b(dg5Var.g, f2.floatValue(), (Integer) dg5Var.b, (Integer) dg5Var.c, f, e(), f())) == null) ? dd4.c(xp6.b(f, 0.0f, 1.0f), ((Integer) dg5Var.b).intValue(), ((Integer) dg5Var.c).intValue()) : num.intValue();
    }

    @Override
    public Integer i(dg5 dg5Var, float f) {
        return Integer.valueOf(r(dg5Var, f));
    }
}
