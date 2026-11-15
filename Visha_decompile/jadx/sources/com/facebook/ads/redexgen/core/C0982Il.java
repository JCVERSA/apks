package com.facebook.ads.redexgen.core;

import java.lang.ref.WeakReference;

public class C0982Il implements InterfaceC1419Zo {
    public final WeakReference<C5Q> A00;

    public C0982Il(C5Q c5q) {
        this.A00 = new WeakReference<>(c5q);
    }

    @Override
    public final void ADT(C1418Zn c1418Zn) {
        C5Q c5q = this.A00.get();
        if (c5q != null) {
            c5q.A06 = c1418Zn.A00() != null;
            c5q.A02();
        }
    }
}
