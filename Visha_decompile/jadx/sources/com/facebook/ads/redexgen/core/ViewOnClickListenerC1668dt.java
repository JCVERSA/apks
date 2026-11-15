package com.facebook.ads.redexgen.core;

import android.view.View;

public class ViewOnClickListenerC1668dt implements View.OnClickListener {
    public final D1 A00;

    public ViewOnClickListenerC1668dt(D1 d1) {
        this.A00 = d1;
    }

    @Override
    public final void onClick(View view) throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
            return;
        }
        try {
            this.A00.A04.A04(UZ.A0l, null);
            this.A00.A03.A0F().A3e();
            if (this.A00.A00 != null) {
                if (this.A00.A07()) {
                    this.A00.A00.setVolume(1.0f);
                } else {
                    this.A00.A00.setVolume(0.0f);
                }
                this.A00.A09();
            }
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
        }
    }
}
