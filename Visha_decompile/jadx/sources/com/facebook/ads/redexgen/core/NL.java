package com.facebook.ads.redexgen.core;

import android.R;

public class NL extends AbstractRunnableC1322Vt {
    public final Y0 A00;

    public NL(Y0 y0) {
        this.A00 = y0;
    }

    @Override
    public final void A07() {
        this.A00.A00.finish(3);
        this.A00.A00.A05().overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
    }
}
