package com.bytedance.sdk.component.adexpress.dynamic.TKC;

import android.content.Context;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.adexpress.vS.zR;

public class EjP extends dNu<com.bytedance.sdk.component.adexpress.vS.Jcg> {
    public EjP(Context context, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.HiB hiB, com.bytedance.sdk.component.adexpress.dynamic.EjP.Jcg jcg) {
        super(context, hiB, jcg);
        Sj(jcg);
    }

    private void Sj(com.bytedance.sdk.component.adexpress.dynamic.EjP.Jcg jcg) {
        this.Sj = new com.bytedance.sdk.component.adexpress.vS.Jcg(this.sP);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        layoutParams.gravity = 81;
        layoutParams.bottomMargin = (int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(this.sP, jcg.ndK());
        this.Sj.setLayoutParams(layoutParams);
        this.Sj.setSlideText(this.EjP.sdp());
        zR zRVar = this.Sj;
        if (zRVar instanceof com.bytedance.sdk.component.adexpress.vS.Jcg) {
            ((com.bytedance.sdk.component.adexpress.vS.Jcg) zRVar).setButtonText(this.EjP.TEQ());
        }
    }

    @Override
    public void sP() {
        this.Sj.sP();
    }

    @Override
    public void Sj() {
        this.Sj.Sj();
    }

    @Override
    protected void EjP() {
    }
}
