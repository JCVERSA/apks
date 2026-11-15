package defpackage;

import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import java.util.List;

public class dy7 extends eg5 {
    public final PointF i;
    public final float[] j;
    public final float[] k;
    public final PathMeasure l;
    public cy7 m;

    public dy7(List list) {
        super(list);
        this.i = new PointF();
        this.j = new float[2];
        this.k = new float[2];
        this.l = new PathMeasure();
    }

    @Override
    public PointF i(dg5 dg5Var, float f) {
        PointF pointF;
        cy7 cy7Var = (cy7) dg5Var;
        Path pathK = cy7Var.k();
        iu5 iu5Var = this.e;
        if (iu5Var != null && dg5Var.h != null && (pointF = (PointF) iu5Var.b(cy7Var.g, cy7Var.h.floatValue(), (PointF) cy7Var.b, (PointF) cy7Var.c, e(), f, f())) != null) {
            return pointF;
        }
        if (pathK == null) {
            return (PointF) dg5Var.b;
        }
        if (this.m != cy7Var) {
            this.l.setPath(pathK, false);
            this.m = cy7Var;
        }
        float length = this.l.getLength();
        float f2 = f * length;
        this.l.getPosTan(f2, this.j, this.k);
        PointF pointF2 = this.i;
        float[] fArr = this.j;
        pointF2.set(fArr[0], fArr[1]);
        if (f2 < 0.0f) {
            PointF pointF3 = this.i;
            float[] fArr2 = this.k;
            pointF3.offset(fArr2[0] * f2, fArr2[1] * f2);
        } else if (f2 > length) {
            PointF pointF4 = this.i;
            float[] fArr3 = this.k;
            float f3 = f2 - length;
            pointF4.offset(fArr3[0] * f3, fArr3[1] * f3);
        }
        return this.i;
    }
}
