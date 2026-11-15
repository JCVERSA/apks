package com.vungle.ads.internal.util;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import kotlin.jvm.internal.Intrinsics;

public final class h {
    private final Handler handler = new Handler(Looper.getMainLooper());

    private final long calculateTime(long j10) {
        return SystemClock.uptimeMillis() + j10;
    }

    public final void cancel(String tag) {
        Intrinsics.h(tag, "tag");
        this.handler.removeCallbacksAndMessages(tag);
    }

    public final void cancelAll() {
        this.handler.removeCallbacksAndMessages(null);
    }

    public final void schedule(Runnable runnable, String tag, long j10) {
        Intrinsics.h(runnable, "runnable");
        Intrinsics.h(tag, "tag");
        this.handler.postAtTime(runnable, tag, calculateTime(j10));
    }

    public final void schedule(Runnable runnable, long j10) {
        Intrinsics.h(runnable, "runnable");
        this.handler.postAtTime(runnable, calculateTime(j10));
    }
}
