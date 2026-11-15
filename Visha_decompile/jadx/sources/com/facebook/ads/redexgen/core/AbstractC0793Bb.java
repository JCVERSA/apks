package com.facebook.ads.redexgen.core;

import android.util.Log;

public abstract class AbstractC0793Bb implements InterfaceC1811gE {
    public int A00;

    @Override
    public final void A9l(String str, String str2) {
        Log.i(str, str2);
    }

    @Override
    public final void A9m(String str, String str2, Throwable th) {
        Log.i(str, str2, th);
    }

    @Override
    public final boolean AAP(int i) {
        return this.A00 <= i;
    }

    @Override
    public final void AIo(int i) {
        this.A00 = i;
    }
}
