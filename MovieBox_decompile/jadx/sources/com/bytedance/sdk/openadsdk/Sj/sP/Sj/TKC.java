package com.bytedance.sdk.openadsdk.Sj.sP.Sj;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.Sj.sP.Dq;
import com.bytedance.sdk.openadsdk.api.PAGExpressAdWrapperListener;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGMediaView;
import com.bytedance.sdk.openadsdk.core.Dq.RiZ;
import com.bytedance.sdk.openadsdk.core.Dq.TzV;
import com.bytedance.sdk.openadsdk.core.TEQ.EjP;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.utils.FPG;

public class TKC extends Dq {
    protected final Context Dq;
    protected RiZ TEQ;
    protected String Ym;

    private boolean f20329aa;
    protected AdSlot uA;

    public TKC(@NonNull Context context, sU sUVar, AdSlot adSlot) {
        super(context, sUVar, 5, true);
        this.Ym = "embeded_ad";
        this.f20329aa = false;
        this.sP.aa(1);
        this.EjP.Sj(this);
        this.Dq = context;
        this.uA = adSlot;
        Sj();
        sP();
    }

    private void sP() {
        RiZ riZ = this.TEQ;
        if (riZ != null) {
            riZ.setBackupListener(new com.bytedance.sdk.component.adexpress.sP.TKC() {
                @Override
                public boolean Sj(ViewGroup viewGroup, int i10) {
                    Sj sj2 = new Sj(TKC.this.TEQ.getContext());
                    sj2.setExtraFuncationHelper(((Dq) TKC.this).EjP);
                    sj2.Sj(TKC.this.TEQ);
                    return true;
                }
            });
        }
    }

    public RiZ EjP() {
        return this.TEQ;
    }

    public void HiB() {
        RiZ riZ = this.TEQ;
        if (riZ != null) {
            riZ.uA();
        }
    }

    protected void TKC() {
        RiZ riZ = this.TEQ;
        if (riZ != null) {
            riZ.setExpressInteractionListener(new PAGExpressAdWrapperListener() {
                @Override
                public void onRenderSuccess(View view, float f10, float f11) {
                    if (!TKC.this.TEQ.Fmk()) {
                        TKC.this.Sj(f10, f11);
                        if (TKC.this.f20329aa) {
                            TKC.this.TEQ.Dq();
                            return;
                        }
                        return;
                    }
                    TKC tkc = TKC.this;
                    Context context = tkc.Dq;
                    sU sUVar = ((Dq) tkc).sP;
                    TKC tkc2 = TKC.this;
                    com.bytedance.sdk.openadsdk.Sj.sP.sP sPVar = new com.bytedance.sdk.openadsdk.Sj.sP.sP(context, sUVar, 5, tkc2.uA, ((Dq) tkc2).EjP, ((Dq) TKC.this).Sj);
                    TKC tkc3 = TKC.this;
                    if (tkc3 instanceof sP) {
                        sPVar.Sj(((TzV) tkc3.EjP()).getVideoAdListener());
                    }
                    ((Dq) TKC.this).EjP.Sj((com.bytedance.sdk.openadsdk.core.sP.Sj) TKC.this.TEQ.getClickCreativeListener());
                    PAGMediaView pAGMediaViewUA = ((Dq) TKC.this).EjP.uA();
                    if (pAGMediaViewUA == null) {
                        pAGMediaViewUA = new PAGMediaView(TKC.this.Dq);
                    }
                    TKC.this.TEQ.addView(pAGMediaViewUA);
                }

                @Override
                public void onAdClicked() {
                }

                @Override
                public void onAdDismissed() {
                }

                @Override
                public void onAdShow(View view, int i10) {
                }

                @Override
                public void onRenderFail(View view, String str, int i10) {
                }
            });
        }
    }

    protected void Sj() {
        this.TEQ = new RiZ(this.Dq, this.sP, this.uA, this.Ym);
        TKC();
    }

    public void Sj(float f10, float f11) {
        RiZ riZ = this.TEQ;
        if (riZ != null && EjP.Sj(riZ.getDynamicShowType())) {
            ViewGroup.LayoutParams layoutParams = this.TEQ.getLayoutParams();
            if (layoutParams == null) {
                layoutParams = new ViewGroup.LayoutParams(-1, -1);
            } else {
                layoutParams.width = -1;
                layoutParams.height = -1;
            }
            this.TEQ.setLayoutParams(layoutParams);
            return;
        }
        int iSP = FPG.sP(this.Dq, f10);
        int iSP2 = FPG.sP(this.Dq, f11);
        ViewGroup.LayoutParams layoutParams2 = this.TEQ.getLayoutParams();
        if (layoutParams2 == null) {
            layoutParams2 = new ViewGroup.LayoutParams(iSP, iSP2);
        } else {
            layoutParams2.width = iSP;
            layoutParams2.height = iSP2;
        }
        this.TEQ.setLayoutParams(layoutParams2);
    }

    public void Sj(boolean z10) {
        this.f20329aa = z10;
    }
}
