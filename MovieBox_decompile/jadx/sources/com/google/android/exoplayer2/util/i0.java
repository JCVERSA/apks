package com.google.android.exoplayer2.util;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;

public class i0 implements e {
    protected i0() {
    }

    @Override
    public o createHandler(Looper looper, Handler.Callback callback) {
        return new j0(new Handler(looper, callback));
    }

    @Override
    public long elapsedRealtime() {
        return SystemClock.elapsedRealtime();
    }

    @Override
    public long uptimeMillis() {
        return SystemClock.uptimeMillis();
    }

    @Override
    public void a() {
    }
}
