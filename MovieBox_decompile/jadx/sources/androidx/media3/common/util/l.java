package androidx.media3.common.util;

public class l {

    private final i f10093a;

    private boolean f10094b;

    public l() {
        this(i.f10075a);
    }

    public synchronized void a() {
        while (!this.f10094b) {
            wait();
        }
    }

    public synchronized boolean b(long j10) {
        try {
            if (j10 <= 0) {
                return this.f10094b;
            }
            long jElapsedRealtime = this.f10093a.elapsedRealtime();
            long j11 = j10 + jElapsedRealtime;
            if (j11 < jElapsedRealtime) {
                a();
            } else {
                while (!this.f10094b && jElapsedRealtime < j11) {
                    wait(j11 - jElapsedRealtime);
                    jElapsedRealtime = this.f10093a.elapsedRealtime();
                }
            }
            return this.f10094b;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void c() {
        boolean z10 = false;
        while (!this.f10094b) {
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
        z10 = this.f10094b;
        this.f10094b = false;
        return z10;
    }

    public synchronized boolean e() {
        return this.f10094b;
    }

    public synchronized boolean f() {
        if (this.f10094b) {
            return false;
        }
        this.f10094b = true;
        notifyAll();
        return true;
    }

    public l(i iVar) {
        this.f10093a = iVar;
    }
}
