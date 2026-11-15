package com.facebook.ads.redexgen.core;

import android.os.Handler;
import android.os.Looper;

public class C06254b extends DV {
    public final C4Z A00;

    public C06254b(C4Z c4z) {
        this.A00 = c4z;
    }

    @Override
    public final void A03(DW dw) {
        new Handler(Looper.getMainLooper()).post(new RunnableC1569cG(this));
    }
}
