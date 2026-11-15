package com.facebook.ads.redexgen.core;

import java.util.concurrent.atomic.AtomicReference;

public abstract class W0 {
    public static final AtomicReference<InterfaceC1328Vz> A00 = new AtomicReference<>(null);

    public static InterfaceC1328Vz A00() {
        InterfaceC1328Vz errorLogger = A00.get();
        if (errorLogger == null) {
            return new PR();
        }
        return errorLogger;
    }

    public static void A01(InterfaceC1328Vz interfaceC1328Vz) {
        A00.set(interfaceC1328Vz);
    }
}
