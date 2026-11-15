package com.facebook.ads.redexgen.core;

import android.view.View;

public class ZD implements View.OnClickListener {
    public final ZH A00;

    public ZD(ZH zh) {
        this.A00 = zh;
    }

    @Override
    public final void onClick(View view) throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
            return;
        }
        try {
            if (!this.A00.A08.canGoBack()) {
                return;
            }
            this.A00.A08.goBack();
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
        }
    }
}
