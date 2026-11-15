package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.widget.FrameLayout;

public class kF extends vS {
    private int Sj;

    public kF(Context context, DynamicRootView dynamicRootView, com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2) {
        super(context, dynamicRootView, dq2);
        this.Sj = 0;
        com.bytedance.sdk.component.adexpress.vS.kF kFVar = new com.bytedance.sdk.component.adexpress.vS.kF(context, null);
        this.Zq = kFVar;
        kFVar.setTag(Integer.valueOf(getClickArea()));
        addView(this.Zq, getWidgetLayoutParams());
    }

    @Override
    protected FrameLayout.LayoutParams getWidgetLayoutParams() {
        int iSj = (int) ((com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(com.bytedance.sdk.component.adexpress.EjP.Sj(), this.f20273aa.HiB()) * 5.0f) + com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(com.bytedance.sdk.component.adexpress.EjP.Sj(), this.f20273aa.TKC() + com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(com.bytedance.sdk.component.adexpress.EjP.Sj(), this.f20273aa.EjP())));
        if (this.Jcg > iSj && 4 == this.f20273aa.Dq()) {
            this.Sj = (this.Jcg - iSj) / 2;
        }
        this.Jcg = iSj;
        return new FrameLayout.LayoutParams(this.Jcg, this.Dq);
    }

    @Override
    public boolean uA() {
        DynamicRootView dynamicRootView;
        super.uA();
        double dFmk = this.f20273aa.Fmk();
        if (com.bytedance.sdk.component.adexpress.EjP.sP() && (dFmk < 0.0d || dFmk > 5.0d || ((dynamicRootView = this.sef) != null && dynamicRootView.getRenderRequest() != null && this.sef.getRenderRequest().TEQ() != 4))) {
            this.Zq.setVisibility(8);
            return true;
        }
        double d10 = (dFmk < 0.0d || dFmk > 5.0d) ? 5.0d : dFmk;
        this.Zq.setVisibility(0);
        ((com.bytedance.sdk.component.adexpress.vS.kF) this.Zq).Sj(d10, this.f20273aa.Jcg(), (int) this.f20273aa.HiB(), ((int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(this.Ym, this.f20273aa.sP())) + ((int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(this.Ym, this.f20273aa.Sj())) + ((int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(this.Ym, this.f20273aa.HiB())));
        return true;
    }

    @Override
    public void vS() {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(this.Jcg, this.Dq);
        layoutParams.topMargin = this.TEQ;
        int i10 = this.uA + this.Sj;
        layoutParams.leftMargin = i10;
        layoutParams.setMarginStart(i10);
        layoutParams.setMarginEnd(layoutParams.rightMargin);
        setLayoutParams(layoutParams);
    }
}
