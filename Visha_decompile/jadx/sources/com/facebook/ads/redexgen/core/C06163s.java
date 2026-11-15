package com.facebook.ads.redexgen.core;

import android.os.Handler;
import android.os.Looper;

public class C06163s extends DV {
    public final C06153r A00;

    public C06163s(C06153r c06153r) {
        this.A00 = c06153r;
    }

    @Override
    public final void A03(DW dw) {
        new Handler(Looper.getMainLooper()).post(new RunnableC1591cc(this));
    }
}
