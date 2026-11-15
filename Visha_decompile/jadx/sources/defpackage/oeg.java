package defpackage;

public final class oeg {
    public boolean a;

    public oeg(tbg tbgVar) {
    }

    public final synchronized void a() {
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

    public final synchronized boolean c() {
        boolean z;
        z = this.a;
        this.a = false;
        return z;
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
}
