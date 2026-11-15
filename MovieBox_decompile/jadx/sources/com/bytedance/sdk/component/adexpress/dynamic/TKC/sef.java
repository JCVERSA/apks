package com.bytedance.sdk.component.adexpress.dynamic.TKC;

import android.content.Context;
import android.widget.FrameLayout;

public class sef implements Jcg<com.bytedance.sdk.component.adexpress.vS.uvD> {
    private com.bytedance.sdk.component.adexpress.vS.uvD Sj;

    public sef(Context context, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.HiB hiB, com.bytedance.sdk.component.adexpress.dynamic.EjP.Jcg jcg) {
        this.Sj = new com.bytedance.sdk.component.adexpress.vS.uvD(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(context, 180.0f), (int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(context, 180.0f));
        layoutParams.gravity = 17;
        layoutParams.leftMargin = (int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(context, 20.0f);
        this.Sj.setLayoutParams(layoutParams);
        this.Sj.setGuideText(jcg.sdp());
    }

    @Override
    public com.bytedance.sdk.component.adexpress.vS.uvD TKC() {
        return this.Sj;
    }

    @Override
    public void Sj() {
        this.Sj.Sj();
    }

    @Override
    public void sP() {
        this.Sj.sP();
    }
}
