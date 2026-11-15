package com.facebook.ads.redexgen.core;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

public class C0807Bq extends BroadcastReceiver {
    public final C0812Bv A00;

    public C0807Bq(C0812Bv c0812Bv) {
        this.A00 = c0812Bv;
    }

    @Override
    public final void onReceive(Context context, Intent intent) {
        if (isInitialStickyBroadcast()) {
            return;
        }
        this.A00.A03();
    }
}
