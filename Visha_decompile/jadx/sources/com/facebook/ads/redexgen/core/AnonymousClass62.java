package com.facebook.ads.redexgen.core;

import android.os.Handler;
import android.os.Looper;

public class AnonymousClass62 extends DV {
    public final C1074Lz A00;

    public AnonymousClass62(C1074Lz c1074Lz) {
        this.A00 = c1074Lz;
    }

    @Override
    public final void A03(DW dw) {
        new Handler(Looper.getMainLooper()).post(new Y4(this));
    }
}
