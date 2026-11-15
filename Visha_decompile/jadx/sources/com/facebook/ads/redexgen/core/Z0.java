package com.facebook.ads.redexgen.core;

import android.view.View;

public class Z0 implements View.OnClickListener {
    public final LS A00;

    public Z0(LS ls) {
        this.A00 = ls;
    }

    @Override
    public final void onClick(View view) throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
            return;
        }
        try {
            this.A00.A0B.A9U();
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
        }
    }
}
