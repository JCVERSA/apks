package defpackage;

import java.util.List;

public class xy3 extends eg5 {
    public xy3(List list) {
        super(list);
    }

    public float q() {
        return r(b(), d());
    }

    public float r(dg5 dg5Var, float f) {
        Float f2;
        if (dg5Var.b == null || dg5Var.c == null) {
            throw new IllegalStateException("Missing values for keyframe.");
        }
        iu5 iu5Var = this.e;
        return (iu5Var == null || (f2 = (Float) iu5Var.b(dg5Var.g, dg5Var.h.floatValue(), (Float) dg5Var.b, (Float) dg5Var.c, f, e(), f())) == null) ? xp6.i(dg5Var.g(), dg5Var.d(), f) : f2.floatValue();
    }

    @Override
    public Float i(dg5 dg5Var, float f) {
        return Float.valueOf(r(dg5Var, f));
    }
}
