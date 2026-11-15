package com.mbridge.msdk.playercommon.exoplayer2.util;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Nullable;

final class SystemClock implements Clock {
    SystemClock() {
    }

    @Override
    public HandlerWrapper createHandler(Looper looper, @Nullable Handler.Callback callback) {
        return new SystemHandlerWrapper(new Handler(looper, callback));
    }

    @Override
    public long elapsedRealtime() {
        return android.os.SystemClock.elapsedRealtime();
    }

    @Override
    public void sleep(long j10) {
        android.os.SystemClock.sleep(j10);
    }

    @Override
    public long uptimeMillis() {
        return android.os.SystemClock.uptimeMillis();
    }
}
