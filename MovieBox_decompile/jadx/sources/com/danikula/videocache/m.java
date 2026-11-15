package com.danikula.videocache;

public abstract class m {

    private final a f23398a;

    protected volatile boolean f23402e;

    private volatile boolean f23403f;

    private volatile boolean f23405h;

    private final Object f23399b = new Object();

    private final Object f23400c = new Object();

    private volatile int f23401d = -1;

    private volatile long f23404g = -1;

    public m(a aVar) {
        this.f23398a = (a) l.c(aVar);
        aVar.F(this);
    }

    private void h() {
        synchronized (this.f23399b) {
            try {
                this.f23403f = true;
                this.f23399b.wait(1000L);
                this.f23403f = false;
            } catch (Throwable th2) {
                q.b("waitForSourceData error， error = " + th2);
                th2.printStackTrace();
            }
        }
    }

    public void a(long j10) {
        this.f23398a.E(j10);
        this.f23398a.C(j10);
    }

    public boolean b() {
        return this.f23403f;
    }

    public void c() {
        synchronized (this.f23399b) {
            q.c("-------get new data, notify wait~");
            this.f23403f = false;
            this.f23399b.notifyAll();
        }
    }

    public int d(byte[] bArr, long j10, int i10, String str) {
        n.a(bArr, j10, i10);
        while (!this.f23398a.isCompleted() && !this.f23398a.H(j10, i10, str) && !this.f23402e) {
            this.f23405h = true;
            h();
        }
        if (this.f23405h) {
            q.e("isWaited， isAvailable = " + this.f23398a.H(j10, i10, str) + " ,offset = " + j10);
        }
        this.f23405h = false;
        int iD = this.f23398a.D(bArr, j10, i10, str);
        if (iD > 0) {
            com.transsnet.downloader.util.h.f57716a.b("4");
        }
        if (this.f23404g < 0 || (j10 - this.f23404g > 512000 && iD > 0)) {
            this.f23404g = j10;
            q.f("ProxyCache read， isCompleted = " + this.f23398a.isCompleted() + " ,offset = " + j10);
        }
        return iD;
    }

    public void e() {
        synchronized (this.f23400c) {
            q.a("Shutdown proxy");
            try {
                this.f23402e = true;
                this.f23398a.close();
            } catch (Throwable th2) {
                q.a("Shutdown proxy, error = " + th2);
            }
        }
    }

    public void f() {
        q.e("----start");
        this.f23402e = false;
    }

    public void g() {
        q.e("--stop");
        this.f23402e = true;
        c();
    }
}
