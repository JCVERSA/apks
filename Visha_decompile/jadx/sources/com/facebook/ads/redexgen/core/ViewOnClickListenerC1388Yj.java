package com.facebook.ads.redexgen.core;

import android.view.View;

public class ViewOnClickListenerC1388Yj implements View.OnClickListener {
    public final LV A00;

    public ViewOnClickListenerC1388Yj(LV lv) {
        this.A00 = lv;
    }

    @Override
    public final void onClick(View view) throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
            return;
        }
        try {
            this.A00.A0B.AEC(O4.A04);
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
        }
    }
}
