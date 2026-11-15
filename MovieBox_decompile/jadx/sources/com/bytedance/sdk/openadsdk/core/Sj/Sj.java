package com.bytedance.sdk.openadsdk.core.Sj;

import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.BuildConfig;
import com.bytedance.sdk.openadsdk.core.RiZ;
import com.bytedance.sdk.openadsdk.dNu.EjP;
import com.bytedance.sdk.openadsdk.dNu.TKC;
import com.bytedance.sdk.openadsdk.utils.JcM;
import com.bytedance.sdk.openadsdk.utils.Mts;
import com.vungle.ads.internal.b;

public class Sj implements RiZ.Sj {
    private final RiZ.Sj Sj;
    private final AdSlot sP;

    public Sj(RiZ.Sj sj2, AdSlot adSlot) {
        this.Sj = sj2;
        this.sP = adSlot;
    }

    @Override
    public void Sj(final int i10, final String str) {
        AdSlot adSlot;
        if (this.Sj != null) {
            if (JcM.vS() || !((adSlot = this.sP) == null || adSlot.getDurationSlotType() == 5 || com.bytedance.sdk.openadsdk.dx.Sj.Sj("getads_callback_async", 0) != 1)) {
                this.Sj.Sj(i10, str);
            } else {
                JcM.Sj(new Runnable() {
                    @Override
                    public void run() {
                        Sj.this.Sj.Sj(i10, str);
                    }
                });
            }
            AdSlot adSlot2 = this.sP;
            if (adSlot2 == null || adSlot2.isPreload()) {
                return;
            }
            TKC.TKC(new EjP() {
                @Override
                public com.bytedance.sdk.openadsdk.dNu.sP.Sj generatorModel() {
                    com.bytedance.sdk.openadsdk.dNu.sP.Sj sj2 = new com.bytedance.sdk.openadsdk.dNu.sP.Sj();
                    sj2.sP(b.LOAD_AD);
                    sj2.TKC(Sj.this.sP.getCodeId());
                    sj2.EjP(Mts.TKC(Sj.this.sP.getDurationSlotType()));
                    sj2.Sj(BuildConfig.VERSION_NAME);
                    sj2.Jcg(Mts.Sj(Sj.this.sP).toString());
                    return sj2;
                }
            });
        }
    }

    @Override
    public void Sj(final com.bytedance.sdk.openadsdk.core.model.Sj sj2, final com.bytedance.sdk.openadsdk.core.model.TKC tkc) {
        AdSlot adSlot;
        if (this.Sj != null) {
            if (!JcM.vS() && ((adSlot = this.sP) == null || adSlot.getDurationSlotType() == 5 || com.bytedance.sdk.openadsdk.dx.Sj.Sj("getads_callback_async", 0) != 1)) {
                JcM.Sj(new Runnable() {
                    @Override
                    public void run() {
                        Sj.this.Sj.Sj(sj2, tkc);
                    }
                });
            } else {
                this.Sj.Sj(sj2, tkc);
            }
            AdSlot adSlot2 = this.sP;
            if (adSlot2 == null || adSlot2.isPreload()) {
                return;
            }
            TKC.sP(new EjP() {
                @Override
                public com.bytedance.sdk.openadsdk.dNu.sP.Sj generatorModel() {
                    com.bytedance.sdk.openadsdk.dNu.sP.Sj sj3 = new com.bytedance.sdk.openadsdk.dNu.sP.Sj();
                    sj3.sP(b.LOAD_AD);
                    sj3.TKC(Sj.this.sP.getCodeId());
                    sj3.EjP(Mts.TKC(Sj.this.sP.getDurationSlotType()));
                    sj3.Sj(BuildConfig.VERSION_NAME);
                    sj3.Jcg(Mts.Sj(Sj.this.sP).toString());
                    return sj3;
                }
            });
        }
    }
}
