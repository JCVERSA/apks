package com.bytedance.sdk.openadsdk.Sj.sP;

import android.content.Context;
import android.util.Pair;
import android.view.View;
import androidx.annotation.NonNull;
import com.bytedance.sdk.component.utils.TzV;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.ApmHelper;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.uvD;
import com.bytedance.sdk.openadsdk.utils.Mts;
import com.iab.omid.library.bytedance2.adsession.FriendlyObstructionPurpose;
import java.util.List;
import w5.b;

public class sP extends Dq implements b.a, b.c, com.bytedance.sdk.openadsdk.multipro.sP.Sj.InterfaceC0265Sj {
    private TKC Dq;
    private long Fmk;
    private boolean TEQ;
    private boolean Ym;

    private AdSlot f20330aa;
    private final com.bytedance.sdk.openadsdk.multipro.sP.Sj uA;

    public sP(@NonNull Context context, @NonNull sU sUVar, int i10, AdSlot adSlot) {
        super(context, sUVar, i10, true);
        this.TEQ = false;
        this.Ym = true;
        this.HiB = i10;
        this.f20330aa = adSlot;
        this.uA = new com.bytedance.sdk.openadsdk.multipro.sP.Sj();
        Sj(this.vS);
        Sj("embeded_ad");
        this.EjP.Sj(this);
    }

    public View HiB() {
        com.bytedance.sdk.openadsdk.core.aa.sP.vS vSVar;
        sU sUVar = this.sP;
        if (sUVar != null && this.TKC != null) {
            if (sU.HiB(sUVar)) {
                try {
                    vSVar = new com.bytedance.sdk.openadsdk.core.aa.sP.vS(this.TKC, this.sP, this.Sj.Sj());
                    sU sUVar2 = this.sP;
                    if (sUVar2 != null && sUVar2.Ph()) {
                        com.bytedance.sdk.openadsdk.core.Ym.vS vSVarSj = vSVar.Sj((List<Pair<View, FriendlyObstructionPurpose>>) null);
                        Sj sj2 = this.EjP;
                        if (sj2 != null) {
                            sj2.Sj(vSVarSj);
                        }
                    }
                    this.Sj.Sj(vSVar.getNativeVideoController());
                    Sj sj3 = this.EjP;
                    if (sj3 != null) {
                        sj3.Sj(vSVar);
                    }
                    vSVar.setVideoAdClickListenerTTNativeAd(this);
                    vSVar.setAdCreativeClickListener(new com.bytedance.sdk.openadsdk.core.aa.sP.vS.Sj() {
                        @Override
                        public void Sj(View view, int i10) {
                            uvD uvd = sP.this.Sj;
                            if (uvd != null) {
                                uvd.Sj(view, i10);
                            }
                        }
                    });
                    vSVar.setControllerStatusCallBack(new com.bytedance.sdk.openadsdk.core.aa.sP.vS.sP() {
                        @Override
                        public void Sj(boolean z10, long j10, long j11, long j12, boolean z11) {
                            sP.this.uA.Sj = z10;
                            sP.this.uA.HiB = j10;
                            sP.this.uA.vS = j11;
                            sP.this.uA.Jcg = j12;
                            sP.this.uA.EjP = z11;
                        }
                    });
                    vSVar.setVideoAdLoadListener(this);
                    vSVar.setVideoAdInteractionListener(this);
                    if (5 == this.HiB) {
                        vSVar.setIsAutoPlay(this.TEQ ? this.f20330aa.isAutoPlay() : this.Ym);
                    } else {
                        vSVar.setIsAutoPlay(this.Ym);
                    }
                    vSVar.Sj(dNu.EjP().TKC(String.valueOf(this.vS)), "feedGetAdView");
                } catch (Exception e10) {
                    ApmHelper.reportCustomError("", "getAdView null", e10);
                    vSVar = null;
                }
            } else {
                vSVar = null;
            }
            if (sU.HiB(this.sP) && vSVar != null && vSVar.Sj(0L, true, false)) {
                return vSVar;
            }
            ApmHelper.reportCustomError(this.sP.HcZ() + "," + vSVar, "getAdView null", new RuntimeException());
        }
        return null;
    }

    @Override
    public void d_() {
        TKC tkc = this.Dq;
        if (tkc != null) {
            tkc.Sj(this);
        }
    }

    @Override
    public void g_() {
        TKC tkc = this.Dq;
        if (tkc != null) {
            tkc.sP(this);
        }
    }

    @Override
    public void i_() {
        TKC tkc = this.Dq;
        if (tkc != null) {
            tkc.TKC(this);
        }
    }

    @Override
    public void showPrivacyActivity() {
        Sj sj2 = this.EjP;
        if (sj2 != null) {
            sj2.aa();
        }
    }

    @Override
    public com.bytedance.sdk.openadsdk.multipro.sP.Sj vS() {
        return this.uA;
    }

    private void Sj(int i10) {
        int iSP = dNu.EjP().sP(i10);
        int iTKC = TzV.TKC(dNu.Sj());
        if (3 == iSP) {
            this.TEQ = false;
            this.Ym = false;
        } else {
            if (1 == iSP && Mts.EjP(iTKC)) {
                this.TEQ = false;
            } else if (2 == iSP) {
                if (Mts.HiB(iTKC) || Mts.EjP(iTKC) || Mts.vS(iTKC)) {
                    this.TEQ = false;
                }
            } else if (4 == iSP) {
                this.TEQ = true;
            } else if (5 == iSP && (Mts.EjP(iTKC) || Mts.vS(iTKC))) {
            }
            this.Ym = true;
        }
        Sj sj2 = this.EjP;
        if (sj2 != null) {
            sj2.Sj(this.TEQ);
        }
    }

    public sP(@NonNull Context context, @NonNull sU sUVar, int i10, AdSlot adSlot, Sj sj2, uvD uvd) {
        super(context, sUVar, i10, false);
        this.TEQ = false;
        this.Ym = true;
        this.EjP = sj2;
        this.Sj = uvd;
        this.HiB = i10;
        this.f20330aa = adSlot;
        this.uA = new com.bytedance.sdk.openadsdk.multipro.sP.Sj();
        Sj(this.vS);
        Sj("embeded_ad");
        sj2.Sj(this);
    }

    public void Sj(TKC tkc) {
        this.Dq = tkc;
    }

    @Override
    public void Sj(int i10, int i11) {
        TKC tkc = this.Dq;
        if (tkc != null) {
            tkc.Sj(i10, i11);
        }
    }

    @Override
    public void Sj(long j10, long j11) {
        this.Fmk = j10;
    }

    @Override
    public void h_() {
    }

    @Override
    protected void Sj(String str) {
        super.Sj(str);
    }
}
