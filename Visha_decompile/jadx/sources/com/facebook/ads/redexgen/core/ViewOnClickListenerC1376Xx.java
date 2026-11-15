package com.facebook.ads.redexgen.core;

import android.view.View;

public class ViewOnClickListenerC1376Xx implements View.OnClickListener {
    public final C1117Nr A00;

    public ViewOnClickListenerC1376Xx(C1117Nr c1117Nr) {
        this.A00 = c1117Nr;
    }

    @Override
    public final void onClick(View view) throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
            return;
        }
        try {
            if (this.A00.A01 != null && this.A00.A02.A02()) {
                this.A00.A01.ACC(this.A00);
            }
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
        }
    }
}
