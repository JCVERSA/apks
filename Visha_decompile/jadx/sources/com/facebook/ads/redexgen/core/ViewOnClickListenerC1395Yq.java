package com.facebook.ads.redexgen.core;

import android.view.View;

public class ViewOnClickListenerC1395Yq implements View.OnClickListener {
    public final LU A00;

    public ViewOnClickListenerC1395Yq(LU lu) {
        this.A00 = lu;
    }

    @Override
    public final void onClick(View view) throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
            return;
        }
        try {
            this.A00.A0B.A9U();
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
        }
    }
}
