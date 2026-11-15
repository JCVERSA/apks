package com.bytedance.adsdk.sP.TKC.TKC;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.RectF;
import com.bytedance.adsdk.sP.TKC.sP.uvD;
import java.util.Collections;

public class Jcg extends Sj {
    private final sP Dq;
    private final com.bytedance.adsdk.sP.Sj.Sj.EjP Jcg;

    Jcg(com.bytedance.adsdk.sP.uA uAVar, HiB hiB, sP sPVar, com.bytedance.adsdk.sP.Jcg jcg) {
        super(uAVar, hiB);
        this.Dq = sPVar;
        com.bytedance.adsdk.sP.Sj.Sj.EjP ejP = new com.bytedance.adsdk.sP.Sj.Sj.EjP(uAVar, this, new uvD("__container", hiB.sef(), false), jcg);
        this.Jcg = ejP;
        ejP.Sj(Collections.emptyList(), Collections.emptyList());
    }

    @Override
    public void Sj(RectF rectF, Matrix matrix, boolean z10) {
        super.Sj(rectF, matrix, z10);
        this.Jcg.Sj(rectF, this.Sj, z10);
    }

    @Override
    public com.bytedance.adsdk.sP.TKC.sP.Sj TEQ() {
        com.bytedance.adsdk.sP.TKC.sP.Sj sjTEQ = super.TEQ();
        return sjTEQ != null ? sjTEQ : this.Dq.TEQ();
    }

    @Override
    public com.bytedance.adsdk.sP.HiB.TEQ Ym() {
        com.bytedance.adsdk.sP.HiB.TEQ teqYm = super.Ym();
        return teqYm != null ? teqYm : this.Dq.Ym();
    }

    @Override
    public void sP(Canvas canvas, Matrix matrix, int i10) {
        super.sP(canvas, matrix, i10);
        this.Jcg.Sj(canvas, matrix, i10);
    }
}
