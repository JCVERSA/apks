package defpackage;

import android.graphics.PointF;
import java.util.List;

public class jc8 extends eg5 {
    public final PointF i;

    public jc8(List list) {
        super(list);
        this.i = new PointF();
    }

    @Override
    public PointF i(dg5 dg5Var, float f) {
        return j(dg5Var, f, f, f);
    }

    @Override
    public PointF j(dg5 dg5Var, float f, float f2, float f3) {
        Object obj;
        PointF pointF;
        Object obj2 = dg5Var.b;
        if (obj2 == null || (obj = dg5Var.c) == null) {
            throw new IllegalStateException("Missing values for keyframe.");
        }
        PointF pointF2 = (PointF) obj2;
        PointF pointF3 = (PointF) obj;
        iu5 iu5Var = this.e;
        if (iu5Var != null && (pointF = (PointF) iu5Var.b(dg5Var.g, dg5Var.h.floatValue(), pointF2, pointF3, f, e(), f())) != null) {
            return pointF;
        }
        PointF pointF4 = this.i;
        float f4 = pointF2.x;
        float f5 = f4 + (f2 * (pointF3.x - f4));
        float f6 = pointF2.y;
        pointF4.set(f5, f6 + (f3 * (pointF3.y - f6)));
        return this.i;
    }
}
