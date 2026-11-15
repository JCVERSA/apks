package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.annotation.SuppressLint;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;

public class dx extends Jcg implements com.bytedance.sdk.component.adexpress.dynamic.TKC {
    private int[] Sj;
    private int sP;
    private int sU;

    public dx(Context context, DynamicRootView dynamicRootView, com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2) {
        super(context, dynamicRootView, dq2);
        dynamicRootView.setTimeOutListener(this);
    }

    @Override
    @SuppressLint({"SetTextI18n"})
    public void Sj(CharSequence charSequence, boolean z10, int i10, boolean z11) {
        String strSj = com.bytedance.sdk.component.utils.ib.Sj(com.bytedance.sdk.component.adexpress.EjP.Sj(), "tt_reward_screen_skip_tx");
        if (i10 == 0) {
            this.Zq.setVisibility(0);
            ((TextView) this.Zq).setText("| ".concat(String.valueOf(strSj)));
            this.Zq.measure(-2, -2);
            this.Sj = new int[]{this.Zq.getMeasuredWidth() + 1, this.Zq.getMeasuredHeight()};
            View view = this.Zq;
            int[] iArr = this.Sj;
            view.setLayoutParams(new FrameLayout.LayoutParams(iArr[0], iArr[1]));
            ((TextView) this.Zq).setGravity(17);
            ((TextView) this.Zq).setIncludeFontPadding(false);
            Sj();
            this.Zq.setPadding(this.f20273aa.TKC(), this.sP, this.f20273aa.EjP(), this.sU);
        }
        requestLayout();
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        if (TextUtils.isEmpty(((TextView) this.Zq).getText())) {
            setMeasuredDimension(0, this.Dq);
        } else {
            setMeasuredDimension(this.Jcg, this.Dq);
        }
    }

    @Override
    public boolean uA() {
        super.uA();
        ((TextView) this.Zq).setText("");
        return true;
    }

    @Override
    public void vS() {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(this.Jcg, this.Dq);
        layoutParams.gravity = 8388629;
        layoutParams.setMarginStart(layoutParams.leftMargin);
        layoutParams.setMarginEnd(layoutParams.rightMargin);
        setLayoutParams(layoutParams);
    }

    private void Sj() {
        int iSj = (int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(this.Ym, this.f20273aa.HiB());
        this.sP = ((this.Dq - iSj) / 2) - this.f20273aa.Sj();
        this.sU = 0;
    }
}
