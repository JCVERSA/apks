package com.bytedance.adsdk.sP.Sj.sP;

import java.util.List;

public class vS extends Jcg<Integer> {
    public vS(List<com.bytedance.adsdk.sP.Jcg.Sj<Integer>> list) {
        super(list);
    }

    int TKC(com.bytedance.adsdk.sP.Jcg.Sj<Integer> sj2, float f10) {
        if (sj2.Sj == null || sj2.sP == null) {
            throw new IllegalStateException("Missing values for keyframe.");
        }
        if (this.TKC == null) {
            return com.bytedance.adsdk.sP.vS.HiB.Sj(sj2.Dq(), sj2.uA(), f10);
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
