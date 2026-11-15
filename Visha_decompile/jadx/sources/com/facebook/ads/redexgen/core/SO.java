package com.facebook.ads.redexgen.core;

import java.util.concurrent.atomic.AtomicBoolean;

public final class SO {
    public final AtomicBoolean A00 = new AtomicBoolean(false);

    public final void A00(boolean z) {
        this.A00.set(z);
    }

    public final boolean A01() {
        return this.A00.get();
    }
}
