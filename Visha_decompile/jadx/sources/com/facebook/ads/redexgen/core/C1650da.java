package com.facebook.ads.redexgen.core;

import android.database.ContentObserver;
import android.os.Handler;

public final class C1650da extends ContentObserver {
    public final C0844Dc A00;

    public C1650da(Handler handler, C0844Dc c0844Dc) {
        super(handler);
        this.A00 = c0844Dc;
    }

    @Override
    public final boolean deliverSelfNotifications() {
        return false;
    }

    @Override
    public final void onChange(boolean z) {
        this.A00.A0f();
    }
}
