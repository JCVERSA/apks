package com.facebook.ads.redexgen.core;

import android.view.View;

public class ViewOnClickListenerC1503bC implements View.OnClickListener {
    public final JS A00;

    public ViewOnClickListenerC1503bC(JS js) {
        this.A00 = js;
    }

    @Override
    public final void onClick(View view) throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
            return;
        }
        try {
            if (this.A00.A02 != null) {
                this.A00.A02.AJF();
            }
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
        }
    }
}
