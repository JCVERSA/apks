package p4;

import android.graphics.PointF;
import java.util.List;

public class k extends g {

    private final PointF f69040i;

    public k(List list) {
        super(list);
        this.f69040i = new PointF();
    }

    @Override
    public PointF i(y4.a aVar, float f10) {
        return j(aVar, f10, f10, f10);
    }

    @Override
    public PointF j(y4.a aVar, float f10, float f11, float f12) {
        Object obj;
        PointF pointF;
        Object obj2 = aVar.f76135b;
        if (obj2 == null || (obj = aVar.f76136c) == null) {
            throw new IllegalStateException("Missing values for keyframe.");
        }
        PointF pointF2 = (PointF) obj2;
        PointF pointF3 = (PointF) obj;
        y4.c cVar = this.f69005e;
        if (cVar != null && (pointF = (PointF) cVar.b(aVar.f76140g, aVar.f76141h.floatValue(), pointF2, pointF3, f10, e(), f())) != null) {
            return pointF;
        }
        PointF pointF4 = this.f69040i;
        float f13 = pointF2.x;
        float f14 = f13 + (f11 * (pointF3.x - f13));
        float f15 = pointF2.y;
        pointF4.set(f14, f15 + (f12 * (pointF3.y - f15)));
        return this.f69040i;
    }
}
