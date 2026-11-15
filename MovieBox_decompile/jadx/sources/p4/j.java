package p4;

import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import java.util.List;

public class j extends g {

    private final PointF f69035i;

    private final float[] f69036j;

    private final float[] f69037k;

    private final PathMeasure f69038l;

    private i f69039m;

    public j(List list) {
        super(list);
        this.f69035i = new PointF();
        this.f69036j = new float[2];
        this.f69037k = new float[2];
        this.f69038l = new PathMeasure();
    }

    @Override
    public PointF i(y4.a aVar, float f10) {
        PointF pointF;
        i iVar = (i) aVar;
        Path pathK = iVar.k();
        if (pathK == null) {
            return (PointF) aVar.f76135b;
        }
        y4.c cVar = this.f69005e;
        if (cVar != null && (pointF = (PointF) cVar.b(iVar.f76140g, iVar.f76141h.floatValue(), (PointF) iVar.f76135b, (PointF) iVar.f76136c, e(), f10, f())) != null) {
            return pointF;
        }
        if (this.f69039m != iVar) {
            this.f69038l.setPath(pathK, false);
            this.f69039m = iVar;
        }
        float length = this.f69038l.getLength();
        float f11 = f10 * length;
        this.f69038l.getPosTan(f11, this.f69036j, this.f69037k);
        PointF pointF2 = this.f69035i;
        float[] fArr = this.f69036j;
        pointF2.set(fArr[0], fArr[1]);
        if (f11 < 0.0f) {
            PointF pointF3 = this.f69035i;
            float[] fArr2 = this.f69037k;
            pointF3.offset(fArr2[0] * f11, fArr2[1] * f11);
        } else if (f11 > length) {
            PointF pointF4 = this.f69035i;
            float[] fArr3 = this.f69037k;
            float f12 = f11 - length;
            pointF4.offset(fArr3[0] * f12, fArr3[1] * f12);
        }
        return this.f69035i;
    }
}
