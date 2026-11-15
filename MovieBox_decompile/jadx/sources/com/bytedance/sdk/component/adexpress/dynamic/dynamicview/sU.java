package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;

public class sU extends Jcg implements com.bytedance.sdk.component.adexpress.dynamic.TKC {
    public sU(Context context, DynamicRootView dynamicRootView, com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2) {
        super(context, dynamicRootView, dq2);
        dynamicRootView.setTimeOutListener(this);
    }

    @Override
    public void Sj(CharSequence charSequence, boolean z10, int i10, boolean z11) {
        if (i10 != 0) {
            ((TextView) this.Zq).setText(" | " + String.format(com.bytedance.sdk.component.utils.ib.Sj(com.bytedance.sdk.component.adexpress.EjP.Sj(), "tt_reward_full_skip_count_down"), Integer.valueOf(i10)));
        } else if (getParent() != null) {
            ((ViewGroup) getParent()).removeView(this);
        }
        requestLayout();
    }

    @Override
    protected FrameLayout.LayoutParams getWidgetLayoutParams() {
        return new FrameLayout.LayoutParams(-2, -2);
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        if (TextUtils.isEmpty(((TextView) this.Zq).getText())) {
            setMeasuredDimension(0, this.Dq);
        }
    }

    @Override
    public void vS() {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(this.Jcg, this.Dq);
        int i10 = this.uA;
        layoutParams.leftMargin = i10;
        layoutParams.gravity = 16;
        layoutParams.setMarginStart(i10);
        layoutParams.setMarginEnd(layoutParams.rightMargin);
        setLayoutParams(layoutParams);
    }
}
