package com.facebook.ads.redexgen.core;

import android.view.View;

public class ViewOnClickListenerC1396Yr implements View.OnClickListener {
    public final O6 A00;
    public final C1386Yh A01;
    public final LU A02;

    public ViewOnClickListenerC1396Yr(LU lu, C1386Yh c1386Yh, O6 o6) {
        this.A02 = lu;
        this.A01 = c1386Yh;
        this.A00 = o6;
    }

    @Override
    public final void onClick(View view) throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
            return;
        }
        try {
            this.A01.A01();
            this.A02.A0B.AEP(this.A00);
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
        }
    }
}
