package com.bytedance.adsdk.sP.Sj.sP;

import java.util.List;

public class EjP extends Jcg<Float> {
    public EjP(List<com.bytedance.adsdk.sP.Jcg.Sj<Float>> list) {
        super(list);
    }

    float TKC(com.bytedance.adsdk.sP.Jcg.Sj<Float> sj2, float f10) {
        if (sj2.Sj == null || sj2.sP == null) {
            throw new IllegalStateException("Missing values for keyframe.");
        }
        if (this.TKC == null) {
            return com.bytedance.adsdk.sP.vS.HiB.Sj(sj2.vS(), sj2.Jcg(), f10);
        }
        sj2.Jcg.floatValue();
        EjP();
        Dq();
        throw null;
    }

    @Override
    public Float Sj(com.bytedance.adsdk.sP.Jcg.Sj<Float> sj2, float f10) {
        return Float.valueOf(TKC(sj2, f10));
    }

    public float uA() {
        return TKC(TKC(), HiB());
    }
}
