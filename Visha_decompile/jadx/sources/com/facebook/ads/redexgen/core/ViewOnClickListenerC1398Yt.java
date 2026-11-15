package com.facebook.ads.redexgen.core;

import android.view.View;

public class ViewOnClickListenerC1398Yt implements View.OnClickListener {
    public final C1400Yv A00;

    public ViewOnClickListenerC1398Yt(C1400Yv c1400Yv) {
        this.A00 = c1400Yv;
    }

    @Override
    public final void onClick(View view) throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
            return;
        }
        try {
            this.A00.A02.A9U();
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
        }
    }
}
