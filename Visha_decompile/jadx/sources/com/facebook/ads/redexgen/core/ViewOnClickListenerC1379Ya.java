package com.facebook.ads.redexgen.core;

import android.view.View;

public class ViewOnClickListenerC1379Ya implements View.OnClickListener {
    public final C1381Yc A00;

    public ViewOnClickListenerC1379Ya(C1381Yc c1381Yc) {
        this.A00 = c1381Yc;
    }

    @Override
    public final void onClick(View view) throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
            return;
        }
        try {
            this.A00.A04.AAg();
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
        }
    }
}
