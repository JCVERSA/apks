package com.facebook.ads.redexgen.core;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;

public final class C2253nr implements C3T {
    @Override
    public final C2251np A5H(Looper looper, Handler.Callback callback) {
        return new C2251np(new Handler(looper, callback));
    }

    @Override
    public final long A6B() {
        return SystemClock.elapsedRealtime();
    }

    @Override
    public final long AJt() {
        return SystemClock.uptimeMillis();
    }
}
