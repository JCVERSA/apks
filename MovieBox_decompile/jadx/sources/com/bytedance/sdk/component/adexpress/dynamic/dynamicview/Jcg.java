package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.text.TextUtils;
import android.widget.FrameLayout;
import android.widget.TextView;

public class Jcg extends vS {
    public Jcg(Context context, DynamicRootView dynamicRootView, com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2) {
        super(context, dynamicRootView, dq2);
        com.bytedance.sdk.component.adexpress.dynamic.animation.view.Sj sj2 = new com.bytedance.sdk.component.adexpress.dynamic.animation.view.Sj(context);
        this.Zq = sj2;
        sj2.setTag(Integer.valueOf(getClickArea()));
        addView(this.Zq, getWidgetLayoutParams());
    }

    @Override
    protected FrameLayout.LayoutParams getWidgetLayoutParams() {
        if (!com.bytedance.sdk.component.adexpress.EjP.sP() || !"fillButton".equals(this.Fmk.TEQ().sP())) {
            return super.getWidgetLayoutParams();
        }
        ((TextView) this.Zq).setEllipsize(TextUtils.TruncateAt.END);
        ((TextView) this.Zq).setMaxLines(1);
        FrameLayout.LayoutParams widgetLayoutParams = super.getWidgetLayoutParams();
        widgetLayoutParams.width -= this.f20273aa.TzV() * 2;
        widgetLayoutParams.height -= this.f20273aa.TzV() * 2;
        widgetLayoutParams.topMargin += this.f20273aa.TzV();
        int iTzV = widgetLayoutParams.leftMargin + this.f20273aa.TzV();
        widgetLayoutParams.leftMargin = iTzV;
        widgetLayoutParams.setMarginStart(iTzV);
        widgetLayoutParams.setMarginEnd(widgetLayoutParams.rightMargin);
        return widgetLayoutParams;
    }

    @Override
    public boolean uA() {
        super.uA();
        if (TextUtils.equals("download-progress-button", this.Fmk.TEQ().sP()) && TextUtils.isEmpty(this.f20273aa.TEQ())) {
            this.Zq.setVisibility(4);
            return true;
        }
        this.Zq.setTextAlignment(this.f20273aa.Dq());
        ((TextView) this.Zq).setText(this.f20273aa.TEQ());
        ((TextView) this.Zq).setTextColor(this.f20273aa.Jcg());
        ((TextView) this.Zq).setTextSize(this.f20273aa.HiB());
        ((TextView) this.Zq).setGravity(17);
        ((TextView) this.Zq).setIncludeFontPadding(false);
        if ("fillButton".equals(this.Fmk.TEQ().sP())) {
            this.Zq.setPadding(0, 0, 0, 0);
        } else {
            this.Zq.setPadding(this.f20273aa.TKC(), this.f20273aa.sP(), this.f20273aa.EjP(), this.f20273aa.Sj());
        }
        return true;
    }
}
