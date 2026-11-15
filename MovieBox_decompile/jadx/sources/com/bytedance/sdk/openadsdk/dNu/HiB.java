package com.bytedance.sdk.openadsdk.dNu;

import com.bytedance.sdk.openadsdk.BuildConfig;
import com.bytedance.sdk.openadsdk.core.sef;
import com.bytedance.sdk.openadsdk.core.uA;

class HiB implements EjP {
    private int EjP;
    private int HiB;
    long Sj = System.currentTimeMillis();
    private int TKC;
    private EjP sP;

    public HiB(EjP ejP, int i10, int i11, int i12) {
        this.sP = ejP;
        this.TKC = i10;
        this.EjP = i11;
        this.HiB = i12;
    }

    @Override
    public com.bytedance.sdk.openadsdk.dNu.sP.Sj generatorModel() {
        com.bytedance.sdk.openadsdk.dNu.sP.Sj sjGeneratorModel = this.sP.generatorModel();
        sjGeneratorModel.Sj(BuildConfig.VERSION_NAME);
        sjGeneratorModel.Sj(this.TKC);
        sjGeneratorModel.sP(this.EjP);
        sjGeneratorModel.TKC(this.HiB);
        sjGeneratorModel.sP(this.Sj);
        sjGeneratorModel.vS(uA.sP().Jcg());
        sjGeneratorModel.EjP(sef.EjP());
        return sjGeneratorModel;
    }
}
