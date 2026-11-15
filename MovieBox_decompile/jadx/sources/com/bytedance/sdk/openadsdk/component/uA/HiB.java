package com.bytedance.sdk.openadsdk.component.uA;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.widget.PAGLogoView;
import com.bytedance.sdk.openadsdk.core.widget.Zq;
import com.bytedance.sdk.openadsdk.utils.FPG;

public class HiB extends TKC {
    Sj Fmk;

    public interface Sj {
        void Sj(View view, int i10);
    }

    public HiB(Context context, sU sUVar) {
        super(context);
        Sj(context, sUVar);
    }

    private void Sj(Context context, sU sUVar) {
        com.bytedance.sdk.openadsdk.core.Dq.HiB hiB = new com.bytedance.sdk.openadsdk.core.Dq.HiB(context);
        com.bytedance.sdk.openadsdk.core.Dq.EjP.Sj().TKC(hiB);
        hiB.Sj(sUVar, new com.bytedance.sdk.openadsdk.core.Dq.HiB.sP() {
            @Override
            public void Sj(int i10, int i11) {
            }

            @Override
            public View sP() {
                return HiB.this;
            }

            @Override
            public View Sj() {
                Jcg jcg = HiB.this.Dq;
                if (jcg != null) {
                    return jcg.getTopDislike();
                }
                return null;
            }

            @Override
            public void Sj(View view, int i10) {
                Sj sj2 = HiB.this.Fmk;
                if (sj2 != null) {
                    sj2.Sj(view, i10);
                }
            }

            @Override
            public void e_() {
            }
        }, "open_ad");
        addView(hiB, new ViewGroup.LayoutParams(-1, -1));
        hiB.sU();
        int iSP = FPG.sP(context, 9.0f);
        int iSP2 = FPG.sP(context, 10.0f);
        this.EjP = PAGLogoView.createPAGLogoViewByMaterial(context, sUVar);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, FPG.sP(context, 14.0f));
        layoutParams.leftMargin = iSP2;
        layoutParams.bottomMargin = iSP2;
        layoutParams.addRule(12);
        layoutParams.addRule(9);
        addView(this.EjP, layoutParams);
        com.bytedance.sdk.openadsdk.core.widget.TKC tkc = new com.bytedance.sdk.openadsdk.core.widget.TKC(context);
        this.f20396aa = tkc;
        tkc.setPadding(iSP, 0, iSP, 0);
        this.f20396aa.setScaleType(ImageView.ScaleType.FIT_CENTER);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(FPG.sP(context, 32.0f), FPG.sP(context, 14.0f));
        layoutParams2.addRule(12);
        layoutParams2.addRule(11);
        layoutParams2.setMargins(0, 0, iSP2, iSP2);
        addView(this.f20396aa, layoutParams2);
        View view = this.Dq;
        if (view != null) {
            addView(view);
        }
    }

    @Override
    public com.bytedance.sdk.openadsdk.core.HiB.EjP getAdIconView() {
        return null;
    }

    @Override
    public com.bytedance.sdk.openadsdk.core.HiB.Dq getAdTitleTextView() {
        return null;
    }

    @Override
    public Zq getScoreBar() {
        return null;
    }

    @Override
    public View getUserInfo() {
        return null;
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.Fmk = null;
    }

    public void setRenderListener(Sj sj2) {
        this.Fmk = sj2;
    }
}
