package com.facebook.ads.redexgen.core;

import android.view.View;

public class ViewOnClickListenerC1430Zz implements View.OnClickListener {
    public final KL A00;

    public ViewOnClickListenerC1430Zz(KL kl) {
        this.A00 = kl;
    }

    @Override
    public final void onClick(View view) throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
            return;
        }
        try {
            if (this.A00.A0H.getVisibility() != 8) {
                this.A00.A0U();
                this.A00.A0F.removeCallbacks(this.A00.A0V);
                this.A00.A0p(8);
            } else {
                this.A00.A0p(0);
                this.A00.A0F.postDelayed(this.A00.A0V, 1500L);
            }
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
        }
    }
}
