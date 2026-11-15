package com.facebook.ads.redexgen.core;

import android.view.View;

public class ZJ implements View.OnClickListener {
    public final ZO A00;

    public ZJ(ZO zo) {
        this.A00 = zo;
    }

    @Override
    public final void onClick(View view) throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
            return;
        }
        try {
            this.A00.A0A.A0F().A9o();
            if (this.A00.A05 == null) {
                return;
            }
            this.A00.A05.ACl();
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
        }
    }
}
