package defpackage;

import android.os.Looper;

public final class t9j {
    public final s9j a;
    public final r9j b;
    public final w4f c;
    public int d;
    public Object e;
    public final Looper f;
    public final int g;
    public boolean h;
    public boolean i;

    public t9j(r9j r9jVar, s9j s9jVar, w4f w4fVar, int i, tbg tbgVar, Looper looper) {
        this.b = r9jVar;
        this.a = s9jVar;
        this.c = w4fVar;
        this.f = looper;
        this.g = i;
    }

    public final int a() {
        return this.d;
    }

    public final Looper b() {
        return this.f;
    }

    public final s9j c() {
        return this.a;
    }

    public final t9j d() {
        n7g.f(!this.h);
        this.h = true;
        this.b.c(this);
        return this;
    }

    public final t9j e(Object obj) {
        n7g.f(!this.h);
        this.e = obj;
        return this;
    }

    public final t9j f(int i) {
        n7g.f(!this.h);
        this.d = i;
        return this;
    }

    public final Object g() {
        return this.e;
    }

    public final synchronized void h(boolean z) {
        this.i = z | this.i;
        notifyAll();
    }

    public final synchronized boolean i() {
        return false;
    }
}
