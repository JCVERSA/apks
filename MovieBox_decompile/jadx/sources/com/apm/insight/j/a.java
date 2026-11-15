package com.apm.insight.j;

import android.os.Handler;

public abstract class a implements Runnable {

    private Handler f18949a;

    private final long f18950b = 0;

    private final long f18951c;

    a(Handler handler, long j10) {
        this.f18949a = handler;
        this.f18951c = j10;
    }

    final void a() {
        this.f18949a.post(this);
    }

    final long b() {
        return this.f18951c;
    }

    final void a(long j10) {
        if (j10 > 0) {
            this.f18949a.postDelayed(this, j10);
        } else {
            this.f18949a.post(this);
        }
    }
}
