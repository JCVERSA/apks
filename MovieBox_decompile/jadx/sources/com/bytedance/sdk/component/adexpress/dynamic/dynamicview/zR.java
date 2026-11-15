package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.widget.FrameLayout;
import java.util.List;

public class zR extends vS implements com.bytedance.sdk.component.adexpress.dynamic.TKC {
    private int Sj;
    private int sP;
    private int sU;

    public zR(Context context, DynamicRootView dynamicRootView, com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2) {
        super(context, dynamicRootView, dq2);
        setTag(Integer.valueOf(getClickArea()));
        dynamicRootView.setTimeOutListener(this);
        Sj();
    }

    @Override
    public void Sj(CharSequence charSequence, boolean z10, int i10, boolean z11) {
        this.sU = i10;
    }

    @Override
    protected FrameLayout.LayoutParams getWidgetLayoutParams() {
        return new FrameLayout.LayoutParams(-2, -2);
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        if (this.sU == 0) {
            setMeasuredDimension(this.sP, this.Dq);
        } else {
            setMeasuredDimension(this.Sj, this.Dq);
        }
    }

    @Override
    public boolean uA() {
        setBackground(getBackgroundDrawable());
        setPadding((int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(com.bytedance.sdk.component.adexpress.EjP.Sj(), this.f20273aa.TKC()), (int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(com.bytedance.sdk.component.adexpress.EjP.Sj(), this.f20273aa.sP()), (int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(com.bytedance.sdk.component.adexpress.EjP.Sj(), this.f20273aa.EjP()), (int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(com.bytedance.sdk.component.adexpress.EjP.Sj(), this.f20273aa.Sj()));
        return true;
    }

    @Override
    public void vS() {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        int i10 = this.uA;
        layoutParams.leftMargin = i10;
        layoutParams.topMargin = this.TEQ;
        layoutParams.setMarginStart(i10);
        layoutParams.setMarginEnd(layoutParams.rightMargin);
        setLayoutParams(layoutParams);
    }

    private void Sj() {
        List<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq> listYm = this.Fmk.Ym();
        if (listYm == null || listYm.size() <= 0) {
            return;
        }
        for (com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2 : listYm) {
            if (dq2.TEQ().Sj() == 21) {
                this.Sj = (int) (this.Jcg - com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(this.Ym, dq2.Dq()));
            }
            if (dq2.TEQ().Sj() == 20) {
                this.sP = (int) (this.Jcg - com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(this.Ym, dq2.Dq()));
            }
        }
    }
}
