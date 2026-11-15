package com.bytedance.adsdk.sP.Sj.sP;

import android.graphics.PointF;
import java.util.List;

public class Ym extends Jcg<PointF> {
    private final PointF EjP;

    public Ym(List<com.bytedance.adsdk.sP.Jcg.Sj<PointF>> list) {
        super(list);
        this.EjP = new PointF();
    }

    @Override
    public PointF Sj(com.bytedance.adsdk.sP.Jcg.Sj<PointF> sj2, float f10) {
        return Sj(sj2, f10, f10, f10);
    }

    @Override
    public PointF Sj(com.bytedance.adsdk.sP.Jcg.Sj<PointF> sj2, float f10, float f11, float f12) {
        PointF pointF;
        PointF pointF2 = sj2.Sj;
        if (pointF2 == null || (pointF = sj2.sP) == null) {
            throw new IllegalStateException("Missing values for keyframe.");
        }
        PointF pointF3 = pointF2;
        PointF pointF4 = pointF;
        if (this.TKC != null) {
            sj2.Jcg.floatValue();
            EjP();
            Dq();
            throw null;
        }
        PointF pointF5 = this.EjP;
        float f13 = pointF3.x;
        float f14 = f13 + (f11 * (pointF4.x - f13));
        float f15 = pointF3.y;
        pointF5.set(f14, f15 + (f12 * (pointF4.y - f15)));
        return this.EjP;
    }
}
