package com.facebook.ads.redexgen.core;

import android.view.View;

public class YZ implements View.OnClickListener {
    public final C1381Yc A00;

    public YZ(C1381Yc c1381Yc) {
        this.A00 = c1381Yc;
    }

    @Override
    public final void onClick(View view) throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
            return;
        }
        try {
            if (this.A00.A05) {
                this.A00.A04.A4v();
            } else {
                this.A00.A04.A4w();
            }
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
        }
    }
}
