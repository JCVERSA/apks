package com.bytedance.adsdk.sP.Sj.sP;

import java.util.List;

public class sP extends Jcg<Integer> {
    public sP(List<com.bytedance.adsdk.sP.Jcg.Sj<Integer>> list) {
        super(list);
    }

    public int TKC(com.bytedance.adsdk.sP.Jcg.Sj<Integer> sj2, float f10) {
        if (sj2.Sj == null || sj2.sP == null) {
            throw new IllegalStateException("Missing values for keyframe.");
        }
        if (this.TKC == null) {
            return com.bytedance.adsdk.sP.vS.sP.Sj(com.bytedance.adsdk.sP.vS.HiB.sP(f10, 0.0f, 1.0f), sj2.Sj.intValue(), sj2.sP.intValue());
        }
        sj2.Jcg.floatValue();
        EjP();
        Dq();
        throw null;
    }

    @Override
    public Integer Sj(com.bytedance.adsdk.sP.Jcg.Sj<Integer> sj2, float f10) {
        return Integer.valueOf(TKC(sj2, f10));
    }

    public int uA() {
        return TKC(TKC(), HiB());
    }
}
