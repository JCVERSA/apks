package com.facebook.ads.redexgen.core;

import android.view.View;

public class ZE implements View.OnClickListener {
    public final ZH A00;

    public ZE(ZH zh) {
        this.A00 = zh;
    }

    @Override
    public final void onClick(View view) throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
            return;
        }
        try {
            if (!this.A00.A08.canGoForward()) {
                return;
            }
            this.A00.A08.goForward();
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
        }
    }
}
