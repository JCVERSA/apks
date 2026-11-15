package com.facebook.ads.redexgen.core;

import android.view.View;

public class ViewOnClickListenerC1387Yi implements View.OnClickListener {
    public final LV A00;

    public ViewOnClickListenerC1387Yi(LV lv) {
        this.A00 = lv;
    }

    @Override
    public final void onClick(View view) throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
            return;
        }
        try {
            this.A00.A0B.A4w();
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
        }
    }
}
