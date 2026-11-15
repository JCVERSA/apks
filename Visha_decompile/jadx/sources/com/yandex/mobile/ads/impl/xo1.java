package com.yandex.mobile.ads.impl;

import android.os.SystemClock;

public final class xo1 implements wo1 {
    private Long a;

    @Override
    public final void a() {
        this.a = Long.valueOf(SystemClock.elapsedRealtime());
    }

    @Override
    public final long b() {
        Long l = this.a;
        if (l == null) {
            return 0L;
        }
        return SystemClock.elapsedRealtime() - l.longValue();
    }
}
