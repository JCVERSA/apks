package com.bytedance.sdk.openadsdk.core.TEQ.sP.Sj;

import android.content.Context;
import com.bytedance.adsdk.sP.vS;
import com.bytedance.adsdk.ugeno.EjP;

public class sP extends vS {
    private EjP Sj;

    public sP(Context context) {
        super(context);
    }

    public void Sj(EjP ejP) {
        this.Sj = ejP;
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        EjP ejP = this.Sj;
        if (ejP != null) {
            ejP.Jcg();
        }
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        EjP ejP = this.Sj;
        if (ejP != null) {
            ejP.Dq();
        }
    }
}
