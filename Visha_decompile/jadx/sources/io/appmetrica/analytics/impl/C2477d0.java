package io.appmetrica.analytics.impl;

import android.util.Pair;

public final class C2477d0 {
    public Lc a;
    public long b;
    public boolean c;
    public final Tk d;

    public C2477d0(String str, long j, Tk tk) {
        this.b = j;
        try {
            this.a = new Lc(str);
        } catch (Throwable unused) {
            this.a = new Lc();
        }
        this.d = tk;
    }

    public final synchronized void a(Pair pair) {
        if (this.d.b(this.a, (String) pair.first, (String) pair.second)) {
            this.c = true;
        }
    }

    public final synchronized String toString() {
        return "Map size " + this.a.size() + ". Is changed " + this.c + ". Current revision " + this.b;
    }

    public final synchronized C2452c0 a() {
        try {
            if (this.c) {
                this.b++;
                this.c = false;
            }
        } catch (Throwable th) {
            throw th;
        }
        return new C2452c0(AbstractC2712mb.b(this.a), this.b);
    }
}
