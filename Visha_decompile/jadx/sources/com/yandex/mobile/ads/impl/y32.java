package com.yandex.mobile.ads.impl;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import androidx.annotation.Nullable;

public final class y32 implements jp {
    @Override
    public final long a() {
        return SystemClock.uptimeMillis();
    }

    @Override
    public final long b() {
        return SystemClock.elapsedRealtime();
    }

    @Override
    public final hf0 a(Looper looper, @Nullable Handler.Callback callback) {
        return new a42(new Handler(looper, callback));
    }
}
