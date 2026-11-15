package com.facebook.ads.redexgen.core;

import android.widget.LinearLayout;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

public abstract class AbstractC1320Vr extends LinearLayout {
    public static final AtomicBoolean A00 = new AtomicBoolean();
    public static final AtomicReference<InterfaceC1312Vj> A01 = new AtomicReference<>();

    public static void A00(boolean z, InterfaceC1312Vj interfaceC1312Vj) {
        A00.set(z);
        A01.set(interfaceC1312Vj);
    }
}
