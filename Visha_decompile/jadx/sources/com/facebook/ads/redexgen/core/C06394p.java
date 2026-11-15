package com.facebook.ads.redexgen.core;

import android.os.Handler;
import android.os.Looper;

public class C06394p extends DV {
    public final C06374n A00;

    public C06394p(C06374n c06374n) {
        this.A00 = c06374n;
    }

    @Override
    public final void A03(DW dw) {
        new Handler(Looper.getMainLooper()).post(new RunnableC1561c8(this));
    }
}
