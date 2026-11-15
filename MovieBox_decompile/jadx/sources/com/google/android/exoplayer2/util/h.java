package com.google.android.exoplayer2.util;

public class h {

    private final e f26812a;

    private boolean f26813b;

    public h() {
        this(e.f26795a);
    }

    public synchronized void a() {
        while (!this.f26813b) {
            wait();
        }
    }

    public synchronized boolean b(long j10) {
        try {
            if (j10 <= 0) {
                return this.f26813b;
            }
            long jElapsedRealtime = this.f26812a.elapsedRealtime();
            long j11 = j10 + jElapsedRealtime;
            if (j11 < jElapsedRealtime) {
                a();
            } else {
                while (!this.f26813b && jElapsedRealtime < j11) {
                    wait(j11 - jElapsedRealtime);
                    jElapsedRealtime = this.f26812a.elapsedRealtime();
                }
            }
            return this.f26813b;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void c() {
        boolean z10 = false;
        while (!this.f26813b) {
            try {
                wait();
            } catch (InterruptedException unused) {
                z10 = true;
            }
        }
        if (z10) {
            Thread.currentThread().interrupt();
        }
    }

    public synchronized boolean d() {
        boolean z10;
        z10 = this.f26813b;
        this.f26813b = false;
        return z10;
    }

    public synchronized boolean e() {
        return this.f26813b;
    }

    public synchronized boolean f() {
        if (this.f26813b) {
            return false;
        }
        this.f26813b = true;
        notifyAll();
        return true;
    }

    public h(e eVar) {
        this.f26812a = eVar;
    }
}
