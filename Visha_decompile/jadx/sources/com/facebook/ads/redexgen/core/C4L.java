package com.facebook.ads.redexgen.core;

import android.os.Handler;
import android.os.Looper;

public class C4L extends DV {
    public final C4K A00;

    public C4L(C4K c4k) {
        this.A00 = c4k;
    }

    @Override
    public final void A03(DW dw) {
        new Handler(Looper.getMainLooper()).post(new RunnableC1577cO(this));
    }
}
