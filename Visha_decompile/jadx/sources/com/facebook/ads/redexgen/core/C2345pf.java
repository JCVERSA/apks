package com.facebook.ads.redexgen.core;

import android.graphics.Rect;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public final class C2345pf {
    public final InterfaceC2350pk A00;
    public final String A01;
    public final Collection<C2359pu> A02;
    public final Collection<C2359pu> A03;
    public final List<Rect> A04;

    public C2345pf(String str, InterfaceC2350pk interfaceC2350pk, List<Rect> rects, Collection<C2359pu> collection, Collection<C2359pu> collection2) {
        this.A01 = str;
        this.A00 = interfaceC2350pk;
        this.A04 = new ArrayList(rects);
        this.A02 = collection;
        this.A03 = collection2;
    }
}
