package com.bytedance.adsdk.sP.Sj.sP;

import java.util.List;

public class HiB extends Jcg<com.bytedance.adsdk.sP.TKC.sP.EjP> {
    private final com.bytedance.adsdk.sP.TKC.sP.EjP EjP;

    public HiB(List<com.bytedance.adsdk.sP.Jcg.Sj<com.bytedance.adsdk.sP.TKC.sP.EjP>> list) {
        super(list);
        com.bytedance.adsdk.sP.TKC.sP.EjP ejP = list.get(0).Sj;
        int iTKC = ejP != null ? ejP.TKC() : 0;
        this.EjP = new com.bytedance.adsdk.sP.TKC.sP.EjP(new float[iTKC], new int[iTKC]);
    }

    @Override
    public com.bytedance.adsdk.sP.TKC.sP.EjP Sj(com.bytedance.adsdk.sP.Jcg.Sj<com.bytedance.adsdk.sP.TKC.sP.EjP> sj2, float f10) {
        this.EjP.Sj(sj2.Sj, sj2.sP, f10);
        return this.EjP;
    }
}
