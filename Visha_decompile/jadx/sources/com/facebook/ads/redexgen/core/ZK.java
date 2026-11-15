package com.facebook.ads.redexgen.core;

import android.view.View;

public class ZK implements View.OnClickListener {
    public final ZO A00;

    public ZK(ZO zo) {
        this.A00 = zo;
    }

    @Override
    public final void onClick(View view) throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
            return;
        }
        try {
            if (!this.A00.A09.canGoBack()) {
                return;
            }
            this.A00.A09.goBack();
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
        }
    }
}
