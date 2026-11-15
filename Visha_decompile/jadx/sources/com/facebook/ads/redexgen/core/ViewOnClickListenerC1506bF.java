package com.facebook.ads.redexgen.core;

import android.view.View;

public class ViewOnClickListenerC1506bF implements View.OnClickListener {
    public final JR A00;

    public ViewOnClickListenerC1506bF(JR jr) {
        this.A00 = jr;
    }

    @Override
    public final void onClick(View view) throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
            return;
        }
        try {
            if (this.A00.A07 != null) {
                this.A00.A07.A9d();
            }
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
        }
    }
}
