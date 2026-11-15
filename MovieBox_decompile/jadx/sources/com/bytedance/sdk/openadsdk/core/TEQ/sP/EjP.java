package com.bytedance.sdk.openadsdk.core.TEQ.sP;

import android.content.Context;
import android.widget.FrameLayout;
import com.bytedance.sdk.openadsdk.core.widget.PAGLogoView;

public class EjP extends com.bytedance.adsdk.ugeno.sP.TKC<FrameLayout> {
    public EjP(Context context) {
        super(context);
    }

    @Override
    public FrameLayout Sj() {
        FrameLayout frameLayout = new FrameLayout(this.sP);
        com.bytedance.sdk.openadsdk.core.model.sP sPVar = new com.bytedance.sdk.openadsdk.core.model.sP();
        sPVar.Sj(true);
        PAGLogoView pAGLogoView = new PAGLogoView(this.sP);
        pAGLogoView.initData(sPVar);
        frameLayout.addView(pAGLogoView);
        return frameLayout;
    }

    @Override
    public void sP() {
        super.sP();
    }
}
