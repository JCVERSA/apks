package com.yandex.mobile.ads.impl;

import android.os.SystemClock;

public final class ir {
    private boolean a;

    public ir() {
        this(0);
    }

    public final synchronized void a() throws InterruptedException {
        while (!this.a) {
            wait();
        }
    }

    public final synchronized void b() {
        boolean z = false;
        while (!this.a) {
            try {
                wait();
            } catch (InterruptedException unused) {
                z = true;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
    }

    public final synchronized void c() {
        this.a = false;
    }

    public final synchronized boolean d() {
        return this.a;
    }

    public final synchronized boolean e() {
        if (this.a) {
            return false;
        }
        this.a = true;
        notifyAll();
        return true;
    }

    public ir(int i) {
    }

    public final synchronized boolean a(long j) throws InterruptedException {
        try {
            if (j <= 0) {
                return this.a;
            }
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            long j2 = j + jElapsedRealtime;
            if (j2 < jElapsedRealtime) {
                a();
            } else {
                while (!this.a && jElapsedRealtime < j2) {
                    wait(j2 - jElapsedRealtime);
                    jElapsedRealtime = SystemClock.elapsedRealtime();
                }
            }
            return this.a;
        } catch (Throwable th) {
            throw th;
        }
    }
}
