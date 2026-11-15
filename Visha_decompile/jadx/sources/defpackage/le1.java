package defpackage;

public class le1 {
    public final ey0 a;
    public boolean b;

    public le1() {
        this(ey0.a);
    }

    public synchronized void a() {
        while (!this.b) {
            wait();
        }
    }

    public synchronized boolean b(long j) {
        try {
            if (j <= 0) {
                return this.b;
            }
            long jElapsedRealtime = this.a.elapsedRealtime();
            long j2 = j + jElapsedRealtime;
            if (j2 < jElapsedRealtime) {
                a();
            } else {
                while (!this.b && jElapsedRealtime < j2) {
                    wait(j2 - jElapsedRealtime);
                    jElapsedRealtime = this.a.elapsedRealtime();
                }
            }
            return this.b;
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void c() {
        boolean z = false;
        while (!this.b) {
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

    public synchronized boolean d() {
        boolean z;
        z = this.b;
        this.b = false;
        return z;
    }

    public synchronized boolean e() {
        return this.b;
    }

    public synchronized boolean f() {
        if (this.b) {
            return false;
        }
        this.b = true;
        notifyAll();
        return true;
    }

    public le1(ey0 ey0Var) {
        this.a = ey0Var;
    }
}
