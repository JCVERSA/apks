package com.facebook.ads.redexgen.core;

import android.view.View;

public class ViewOnClickListenerC1505bE implements View.OnClickListener {
    public final JR A00;

    public ViewOnClickListenerC1505bE(JR jr) {
        this.A00 = jr;
    }

    @Override
    public final void onClick(View view) throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
            return;
        }
        try {
            if (this.A00.A03 == null || this.A00.A03.getVisibility() != 8) {
                this.A00.A0O();
                this.A00.A0A.removeCallbacks(this.A00.A0U);
                this.A00.A0S(8);
            } else {
                this.A00.A0S(0);
                this.A00.A0A.postDelayed(this.A00.A0U, 1500L);
            }
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
        }
    }
}
