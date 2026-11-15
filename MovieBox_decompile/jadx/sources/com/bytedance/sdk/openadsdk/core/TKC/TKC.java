package com.bytedance.sdk.openadsdk.core.TKC;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.api.PAGExpressAdWrapperListener;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdWrapperListener;
import com.bytedance.sdk.openadsdk.core.Dq.RiZ;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.uA;
import com.bytedance.sdk.openadsdk.utils.FPG;

public class TKC extends com.bytedance.sdk.openadsdk.core.HiB.TKC {
    protected AdSlot EjP;
    protected PAGBannerAdWrapperListener HiB;
    protected final Context Sj;
    protected sU TKC;
    protected RiZ sP;
    protected String vS;

    public TKC(@NonNull Context context, sU sUVar, AdSlot adSlot) {
        super(context);
        this.vS = "banner_ad";
        if (sUVar != null && sUVar.ley() != 2) {
            sUVar.aa(1);
        }
        this.Sj = context;
        this.TKC = sUVar;
        this.EjP = adSlot;
        Sj();
        AdSlot adSlot2 = this.EjP;
        if (adSlot2 != null) {
            Sj(adSlot2.getExpressViewAcceptedWidth(), this.EjP.getExpressViewAcceptedHeight());
        }
    }

    protected void Sj() {
        RiZ riZ = new RiZ(this.Sj, this.TKC, this.EjP, this.vS);
        this.sP = riZ;
        addView(riZ, new ViewGroup.LayoutParams(-1, -1));
        PAGBannerAdWrapperListener pAGBannerAdWrapperListener = this.HiB;
        if (pAGBannerAdWrapperListener != null) {
            setExpressInteractionListener(pAGBannerAdWrapperListener);
        }
    }

    public void TKC() {
        if (this.sP != null) {
            uA.sP().vS(this.sP.getClosedListenerKey());
            removeView(this.sP);
            this.sP.Ym();
            this.sP = null;
        }
        uA.sP().ib();
    }

    public RiZ getCurView() {
        return this.sP;
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.sP == null) {
            Sj();
        }
        com.bytedance.sdk.openadsdk.utils.EjP.Sj(this, this.TKC);
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    public void sP() {
        RiZ riZ = this.sP;
        if (riZ != null) {
            riZ.uA();
        }
    }

    public void setExpressInteractionListener(PAGBannerAdWrapperListener pAGBannerAdWrapperListener) {
        this.HiB = pAGBannerAdWrapperListener;
        RiZ riZ = this.sP;
        if (riZ != null) {
            riZ.setJsbLandingPageOpenListener(new com.bytedance.sdk.openadsdk.core.widget.HiB() {
                @Override
                public void Sj() {
                    TKC.this.HiB.onAdClicked();
                }
            });
            this.sP.setExpressInteractionListener(new PAGExpressAdWrapperListener() {
                @Override
                public void onAdClicked() {
                    PAGBannerAdWrapperListener pAGBannerAdWrapperListener2;
                    sU sUVar = TKC.this.TKC;
                    if (sUVar == null || !sUVar.hzV() || (pAGBannerAdWrapperListener2 = TKC.this.HiB) == null) {
                        return;
                    }
                    pAGBannerAdWrapperListener2.onAdClicked();
                }

                @Override
                public void onRenderFail(View view, String str, int i10) {
                    TKC tkc = TKC.this;
                    PAGBannerAdWrapperListener pAGBannerAdWrapperListener2 = tkc.HiB;
                    if (pAGBannerAdWrapperListener2 != null) {
                        pAGBannerAdWrapperListener2.onRenderFail(tkc, str, i10);
                    }
                }

                @Override
                public void onRenderSuccess(View view, float f10, float f11) {
                    RiZ riZ2 = TKC.this.sP;
                    if (riZ2 != null) {
                        riZ2.setSoundMute(true);
                    }
                    RiZ riZ3 = TKC.this.sP;
                    if (riZ3 != null && !com.bytedance.sdk.openadsdk.core.TEQ.EjP.Sj(riZ3.getDynamicShowType())) {
                        TKC.this.Sj(f10, f11);
                    }
                    TKC tkc = TKC.this;
                    PAGBannerAdWrapperListener pAGBannerAdWrapperListener2 = tkc.HiB;
                    if (pAGBannerAdWrapperListener2 != null) {
                        pAGBannerAdWrapperListener2.onRenderSuccess(tkc, f10, f11);
                    }
                }

                @Override
                public void onAdDismissed() {
                }

                @Override
                public void onAdShow(View view, int i10) {
                }
            });
        }
    }

    protected void Sj(float f10, float f11) {
        int iSP = FPG.sP(this.Sj, f10);
        int iSP2 = FPG.sP(this.Sj, f11);
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new ViewGroup.LayoutParams(iSP, iSP2);
        }
        layoutParams.width = iSP;
        layoutParams.height = iSP2;
        setLayoutParams(layoutParams);
    }
}
