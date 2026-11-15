package defpackage;

import android.graphics.Path;
import android.graphics.PointF;

public class cy7 extends dg5 {
    public Path q;
    public final dg5 r;

    public cy7(ur5 ur5Var, dg5 dg5Var) {
        super(ur5Var, (PointF) dg5Var.b, (PointF) dg5Var.c, dg5Var.d, dg5Var.e, dg5Var.f, dg5Var.g, dg5Var.h);
        this.r = dg5Var;
        j();
    }

    public void j() {
        Object obj;
        Object obj2;
        Object obj3 = this.c;
        boolean z = (obj3 == null || (obj2 = this.b) == null || !((PointF) obj2).equals(((PointF) obj3).x, ((PointF) obj3).y)) ? false : true;
        Object obj4 = this.b;
        if (obj4 == null || (obj = this.c) == null || z) {
            return;
        }
        dg5 dg5Var = this.r;
        this.q = plb.d((PointF) obj4, (PointF) obj, dg5Var.o, dg5Var.p);
    }

    public Path k() {
        return this.q;
    }
}
