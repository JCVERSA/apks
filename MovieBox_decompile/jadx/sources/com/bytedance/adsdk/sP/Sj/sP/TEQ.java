package com.bytedance.adsdk.sP.Sj.sP;

import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import java.util.List;

public class TEQ extends Jcg<PointF> {
    private final PointF EjP;
    private final float[] HiB;
    private uA Jcg;
    private final PathMeasure vS;

    public TEQ(List<? extends com.bytedance.adsdk.sP.Jcg.Sj<PointF>> list) {
        super(list);
        this.EjP = new PointF();
        this.HiB = new float[2];
        this.vS = new PathMeasure();
    }

    @Override
    public PointF Sj(com.bytedance.adsdk.sP.Jcg.Sj<PointF> sj2, float f10) {
        uA uAVar = (uA) sj2;
        Path pathSP = uAVar.sP();
        if (pathSP == null) {
            return sj2.Sj;
        }
        if (this.TKC != null) {
            uAVar.Jcg.floatValue();
            EjP();
            Dq();
            throw null;
        }
        if (this.Jcg != uAVar) {
            this.vS.setPath(pathSP, false);
            this.Jcg = uAVar;
        }
        PathMeasure pathMeasure = this.vS;
        pathMeasure.getPosTan(f10 * pathMeasure.getLength(), this.HiB, null);
        PointF pointF = this.EjP;
        float[] fArr = this.HiB;
        pointF.set(fArr[0], fArr[1]);
        return this.EjP;
    }
}
