package com.facebook.ads.redexgen.core;

import android.view.View;

public class YC implements View.OnClickListener {
    public final C1051Lc A00;

    public YC(C1051Lc c1051Lc) {
        this.A00 = c1051Lc;
    }

    @Override
    public final void onClick(View view) throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
            return;
        }
        try {
            this.A00.A0N.A04(UZ.A07, null);
            this.A00.A0Q.A4b(this.A00.A0R.A7o());
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
        }
    }
}
