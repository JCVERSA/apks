package com.facebook.ads.redexgen.core;

import android.view.View;

public class ViewOnClickListenerC1445aG implements View.OnClickListener {
    public final C1447aI A00;

    public ViewOnClickListenerC1445aG(C1447aI c1447aI) {
        this.A00 = c1447aI;
    }

    @Override
    public final void onClick(View view) throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
            return;
        }
        try {
            this.A00.A05();
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
        }
    }
}
