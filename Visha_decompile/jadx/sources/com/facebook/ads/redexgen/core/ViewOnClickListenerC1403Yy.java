package com.facebook.ads.redexgen.core;

import android.view.View;

public class ViewOnClickListenerC1403Yy implements View.OnClickListener {
    public final C1386Yh A00;
    public final LS A01;

    public ViewOnClickListenerC1403Yy(LS ls, C1386Yh c1386Yh) {
        this.A01 = ls;
        this.A00 = c1386Yh;
    }

    @Override
    public final void onClick(View view) throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
            return;
        }
        try {
            this.A00.A01();
            this.A01.A0B.AEC(O4.A06);
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
        }
    }
}
