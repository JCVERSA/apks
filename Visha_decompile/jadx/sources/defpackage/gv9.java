package defpackage;

import android.graphics.PointF;
import java.util.Collections;

public class gv9 extends ab0 {
    public final PointF i;
    public final PointF j;
    public final ab0 k;
    public final ab0 l;
    public iu5 m;
    public iu5 n;

    public gv9(ab0 ab0Var, ab0 ab0Var2) {
        super(Collections.emptyList());
        this.i = new PointF();
        this.j = new PointF();
        this.k = ab0Var;
        this.l = ab0Var2;
        n(f());
    }

    @Override
    public void n(float f) {
        this.k.n(f);
        this.l.n(f);
        this.i.set(((Float) this.k.h()).floatValue(), ((Float) this.l.h()).floatValue());
        for (int i = 0; i < this.a.size(); i++) {
            ((ab0.b) this.a.get(i)).e();
        }
    }

    @Override
    public PointF h() {
        return i(null, 0.0f);
    }

    @Override
    public PointF i(dg5 dg5Var, float f) {
        Float f2;
        dg5 dg5VarB;
        dg5 dg5VarB2;
        Float f3 = null;
        if (this.m == null || (dg5VarB2 = this.k.b()) == null) {
            f2 = null;
        } else {
            Float f4 = dg5VarB2.h;
            iu5 iu5Var = this.m;
            float f5 = dg5VarB2.g;
            f2 = (Float) iu5Var.b(f5, f4 == null ? f5 : f4.floatValue(), (Float) dg5VarB2.b, (Float) dg5VarB2.c, this.k.d(), this.k.e(), this.k.f());
        }
        if (this.n != null && (dg5VarB = this.l.b()) != null) {
            Float f6 = dg5VarB.h;
            iu5 iu5Var2 = this.n;
            float f7 = dg5VarB.g;
            f3 = (Float) iu5Var2.b(f7, f6 == null ? f7 : f6.floatValue(), (Float) dg5VarB.b, (Float) dg5VarB.c, this.l.d(), this.l.e(), this.l.f());
        }
        if (f2 == null) {
            this.j.set(this.i.x, 0.0f);
        } else {
            this.j.set(f2.floatValue(), 0.0f);
        }
        if (f3 == null) {
            PointF pointF = this.j;
            pointF.set(pointF.x, this.i.y);
        } else {
            PointF pointF2 = this.j;
            pointF2.set(pointF2.x, f3.floatValue());
        }
        return this.j;
    }

    public void s(iu5 iu5Var) {
        iu5 iu5Var2 = this.m;
        if (iu5Var2 != null) {
            iu5Var2.c(null);
        }
        this.m = iu5Var;
        if (iu5Var != null) {
            iu5Var.c(this);
        }
    }

    public void t(iu5 iu5Var) {
        iu5 iu5Var2 = this.n;
        if (iu5Var2 != null) {
            iu5Var2.c(null);
        }
        this.n = iu5Var;
        if (iu5Var != null) {
            iu5Var.c(this);
        }
    }
}
