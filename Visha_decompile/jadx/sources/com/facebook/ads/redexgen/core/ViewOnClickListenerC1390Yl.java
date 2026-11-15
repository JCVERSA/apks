package com.facebook.ads.redexgen.core;

import android.view.View;

public class ViewOnClickListenerC1390Yl implements View.OnClickListener {
    public final LV A00;

    public ViewOnClickListenerC1390Yl(LV lv) {
        this.A00 = lv;
    }

    @Override
    public final void onClick(View view) throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
            return;
        }
        try {
            this.A00.A0B.AAh();
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
        }
    }
}
