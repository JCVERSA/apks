package com.facebook.ads.redexgen.core;

import android.view.View;

public class ZC implements View.OnClickListener {
    public final ZH A00;

    public ZC(ZH zh) {
        this.A00 = zh;
    }

    @Override
    public final void onClick(View view) throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
            return;
        }
        try {
            this.A00.A09.A0F().A9o();
            if (this.A00.A04 == null) {
                return;
            }
            this.A00.A04.ACl();
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
        }
    }
}
