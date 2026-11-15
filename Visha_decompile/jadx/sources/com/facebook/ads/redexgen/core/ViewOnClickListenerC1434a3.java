package com.facebook.ads.redexgen.core;

import android.view.View;

public class ViewOnClickListenerC1434a3 implements View.OnClickListener {
    public final KG A00;

    public ViewOnClickListenerC1434a3(KG kg) {
        this.A00 = kg;
    }

    @Override
    public final void onClick(View view) throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
            return;
        }
        try {
            this.A00.A02();
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
        }
    }
}
