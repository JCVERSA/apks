package com.facebook.ads.redexgen.core;

import java.lang.ref.WeakReference;

public class K0 implements InterfaceC1419Zo {
    public final WeakReference<C06575h> A00;

    public K0(C06575h c06575h) {
        this.A00 = new WeakReference<>(c06575h);
    }

    @Override
    public final void ADT(C1418Zn c1418Zn) {
        C06575h c06575h = this.A00.get();
        if (c06575h != null) {
            c06575h.A04 = c1418Zn.A00() != null;
            c06575h.A02();
        }
    }
}
