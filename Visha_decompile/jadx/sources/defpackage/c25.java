package defpackage;

import java.util.List;

public class c25 extends eg5 {
    public c25(List list) {
        super(list);
    }

    public int q() {
        return r(b(), d());
    }

    public int r(dg5 dg5Var, float f) {
        Integer num;
        if (dg5Var.b == null) {
            throw new IllegalStateException("Missing values for keyframe.");
        }
        int iH = dg5Var.c == null ? dg5Var.h() : dg5Var.e();
        iu5 iu5Var = this.e;
        return (iu5Var == null || (num = (Integer) iu5Var.b(dg5Var.g, dg5Var.h.floatValue(), (Integer) dg5Var.b, Integer.valueOf(iH), f, e(), f())) == null) ? xp6.j(dg5Var.h(), iH, f) : num.intValue();
    }

    @Override
    public Integer i(dg5 dg5Var, float f) {
        return Integer.valueOf(r(dg5Var, f));
    }
}
