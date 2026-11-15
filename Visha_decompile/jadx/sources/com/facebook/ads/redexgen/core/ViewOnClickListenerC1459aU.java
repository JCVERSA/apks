package com.facebook.ads.redexgen.core;

import android.view.View;

public class ViewOnClickListenerC1459aU implements View.OnClickListener {
    public final KE A00;
    public final String A01;

    public ViewOnClickListenerC1459aU(KE ke, String str) {
        this.A00 = ke;
        this.A01 = str;
    }

    @Override
    public final void onClick(View view) throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
            return;
        }
        try {
            this.A00.A0E(this.A01);
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
        }
    }
}
