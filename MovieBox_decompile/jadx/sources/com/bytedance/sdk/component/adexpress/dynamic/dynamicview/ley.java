package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import java.util.List;

public class ley extends vS implements com.bytedance.sdk.component.adexpress.dynamic.TKC {
    int Sj;

    private int f20279dx;
    boolean sP;
    private int sU;
    private boolean zR;

    public ley(Context context, DynamicRootView dynamicRootView, com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2) {
        super(context, dynamicRootView, dq2);
        this.f20279dx = 0;
        setTag(Integer.valueOf(getClickArea()));
        Sj();
        dynamicRootView.setTimeOutListener(this);
        if (dynamicRootView.getRenderRequest() == null || dynamicRootView.getRenderRequest().uP()) {
            return;
        }
        View view = this.Zq;
        if (view != null) {
            view.setVisibility(8);
        }
        setVisibility(8);
    }

    private void Sj() {
        List<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq> listYm = this.Fmk.Ym();
        if (listYm == null || listYm.size() <= 0) {
            return;
        }
        for (com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2 : listYm) {
            if (TextUtils.equals("skip-with-time-skip-btn", dq2.TEQ().sP())) {
                int iSj = (int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(this.Ym, dq2.Dq() + (com.bytedance.sdk.component.adexpress.EjP.sP() ? dq2.Fmk() : 0));
                this.sU = iSj;
                this.Sj = this.Jcg - iSj;
                break;
            }
        }
        this.f20279dx = this.Jcg - this.Sj;
    }

    @Override
    protected FrameLayout.LayoutParams getWidgetLayoutParams() {
        return new FrameLayout.LayoutParams(-2, -2);
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        if (this.zR && this.f20273aa != null) {
            setMeasuredDimension(this.sU + ((int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(com.bytedance.sdk.component.adexpress.EjP.Sj(), this.f20273aa.TKC())) + ((int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(com.bytedance.sdk.component.adexpress.EjP.Sj(), this.f20273aa.EjP())), this.Dq);
        } else if (this.sP) {
            setMeasuredDimension(this.Jcg, this.Dq);
        } else {
            setMeasuredDimension(this.Sj, this.Dq);
        }
    }

    @Override
    public boolean uA() {
        if (com.bytedance.sdk.component.adexpress.EjP.vS.sP(this.sef.getRenderRequest().EjP())) {
            return true;
        }
        super.uA();
        setPadding((int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(com.bytedance.sdk.component.adexpress.EjP.Sj(), this.f20273aa.TKC()), (int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(com.bytedance.sdk.component.adexpress.EjP.Sj(), this.f20273aa.sP()), (int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(com.bytedance.sdk.component.adexpress.EjP.Sj(), this.f20273aa.EjP()), (int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(com.bytedance.sdk.component.adexpress.EjP.Sj(), this.f20273aa.Sj()));
        return true;
    }

    @Override
    public void vS() {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        if (this.sP) {
            layoutParams.leftMargin = this.uA;
        } else {
            layoutParams.leftMargin = this.uA + this.f20279dx;
        }
        if (this.zR && this.f20273aa != null) {
            layoutParams.leftMargin = ((this.uA + this.f20279dx) - ((int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(com.bytedance.sdk.component.adexpress.EjP.Sj(), this.f20273aa.TKC()))) - ((int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(com.bytedance.sdk.component.adexpress.EjP.Sj(), this.f20273aa.EjP()));
        }
        if (com.bytedance.sdk.component.adexpress.EjP.sP()) {
            layoutParams.topMargin = this.TEQ - ((int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(com.bytedance.sdk.component.adexpress.EjP.Sj(), this.f20273aa.sP()));
        } else {
            layoutParams.topMargin = this.TEQ;
        }
        layoutParams.setMarginStart(layoutParams.leftMargin);
        layoutParams.setMarginEnd(layoutParams.rightMargin);
        setLayoutParams(layoutParams);
    }

    @Override
    public void Sj(CharSequence charSequence, boolean z10, int i10, boolean z11) {
        if (z11 && this.zR != z11) {
            this.zR = z11;
            vS();
            return;
        }
        if (z10 && this.sP != z10) {
            this.sP = z10;
            vS();
        }
        this.sP = z10;
    }
}
