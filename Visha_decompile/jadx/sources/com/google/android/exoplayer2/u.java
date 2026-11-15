package com.google.android.exoplayer2;

import android.os.Looper;
import androidx.media3.common.C;
import defpackage.ey0;
import defpackage.zi;
import java.util.concurrent.TimeoutException;

public final class u {
    public final b a;
    public final a b;
    public final ey0 c;
    public final a0 d;
    public int e;
    public Object f;
    public Looper g;
    public int h;
    public long i = C.TIME_UNSET;
    public boolean j = true;
    public boolean k;
    public boolean l;
    public boolean m;
    public boolean n;

    public interface a {
        void a(u uVar);
    }

    public interface b {
        void handleMessage(int i, Object obj);
    }

    public u(a aVar, b bVar, a0 a0Var, int i, ey0 ey0Var, Looper looper) {
        this.b = aVar;
        this.a = bVar;
        this.d = a0Var;
        this.g = looper;
        this.c = ey0Var;
        this.h = i;
    }

    public synchronized boolean a(long j) {
        boolean z;
        try {
            zi.g(this.k);
            zi.g(this.g.getThread() != Thread.currentThread());
            long jElapsedRealtime = this.c.elapsedRealtime() + j;
            while (true) {
                z = this.m;
                if (z || j <= 0) {
                    break;
                }
                this.c.onThreadBlocked();
                wait(j);
                j = jElapsedRealtime - this.c.elapsedRealtime();
            }
            if (!z) {
                throw new TimeoutException("Message delivery timed out.");
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.l;
    }

    public boolean b() {
        return this.j;
    }

    public Looper c() {
        return this.g;
    }

    public int d() {
        return this.h;
    }

    public Object e() {
        return this.f;
    }

    public long f() {
        return this.i;
    }

    public b g() {
        return this.a;
    }

    public a0 h() {
        return this.d;
    }

    public int i() {
        return this.e;
    }

    public synchronized boolean j() {
        return this.n;
    }

    public synchronized void k(boolean z) {
        this.l = z | this.l;
        this.m = true;
        notifyAll();
    }

    public u l() {
        zi.g(!this.k);
        if (this.i == C.TIME_UNSET) {
            zi.a(this.j);
        }
        this.k = true;
        this.b.a(this);
        return this;
    }

    public u m(Object obj) {
        zi.g(!this.k);
        this.f = obj;
        return this;
    }

    public u n(int i) {
        zi.g(!this.k);
        this.e = i;
        return this;
    }
}
