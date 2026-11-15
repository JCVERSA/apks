package com.facebook.ads.redexgen.core;

import android.view.View;

public class Y6 implements View.OnClickListener {
    public final Y9 A00;

    public Y6(Y9 y9) {
        this.A00 = y9;
    }

    @Override
    public final void onClick(View view) throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
            return;
        }
        try {
            this.A00.A0D();
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
        }
    }
}
