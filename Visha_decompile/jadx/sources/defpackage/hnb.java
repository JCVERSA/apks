package defpackage;

import java.util.Collections;

public class hnb extends ab0 {
    public final Object i;

    public hnb(iu5 iu5Var) {
        this(iu5Var, null);
    }

    @Override
    public float c() {
        return 1.0f;
    }

    @Override
    public Object h() {
        iu5 iu5Var = this.e;
        Object obj = this.i;
        return iu5Var.b(0.0f, 0.0f, obj, obj, f(), f(), f());
    }

    @Override
    public Object i(dg5 dg5Var, float f) {
        return h();
    }

    @Override
    public void l() {
        if (this.e != null) {
            super.l();
        }
    }

    @Override
    public void n(float f) {
        this.d = f;
    }

    public hnb(iu5 iu5Var, Object obj) {
        super(Collections.emptyList());
        o(iu5Var);
        this.i = obj;
    }
}
